#!/usr/bin/env python
# encoding: utf-8
# Author: Liu DongMiao <liudongmiao@gmail.com>

import locale
import os
import sys
import shutil

MESSAGE_ZH = {
    '%s not exists%s': '  --无法找到文件 %s%s',
    '%s patched %s%s': '  --成功为 %s 打了 %s 处补丁%s',
    '%s patched %s, should patch %s%s': '  --为 %s 打了 %s 处补丁，应该打 %s 处%s',
    'copying %s%s': '  --正在复制 %s%s',
}

def _(message):
    lang, encoding = locale.getdefaultlocale()
    translate = MESSAGE_ZH.get(message, message)
    if hasattr(translate, 'decode'):
        return translate.decode('utf8').encode(encoding)
    else:
        return translate

class Patch(object):
    def __init__(self, dir_services='services'):
        self.dir_services = dir_services

    def build_path(self, paths, dir_path=None):
        if dir_path is None:
            dir_path = self.dir_services
        path = os.path.normpath(dir_path)
        for x in paths.split("/"):
            path = os.path.join(path, x)
        return path

    def run(self):
        patched = 0
        path = self.build_path(self.get_path())
        if not os.path.exists(path):
            sys.stderr.write(_("%s not exists%s") % (path, os.linesep))
            raise SystemExit(1)

        output = open(path + ".patched", "w")
        for line in open(path, "r"):
            if self.patch(output, line):
                patched += 1
            else:
                output.write(line)
        output.close()
        # remove .smali
        path_name = os.path.basename(path)[:-6]
        if patched == self.get_patch_count():
            os.rename(path, path + ".orig")
            os.rename(path + ".patched", path)
            sys.stdout.write(_("%s patched %s%s") % (
                path_name, patched, os.linesep))
        else:
            sys.stderr.write(_("%s patched %s, should patch %s%s") % (
                path_name, patched, self.get_patch_count(), os.linesep))
            raise SystemExit(2)
        return patched

    def get_path(self):
        raise NotImplemented

    def get_patch_count(self):
        raise NotImplemented

    def patch(self, output, line):
        raise NotImplemented

    @staticmethod
    def find_method_name(line):
        end = line.index("(")
        start = line.rindex(" ", 0, end)
        return line[start + 1:end]

    @staticmethod
    def get_method_arguments(line):
        start = line.index("{")
        end = line.index("}", start)
        argument = line[start + 1:end]
        if '..' in argument:
            start, _, end = [x.strip() for x in argument.partition("..")]
            sn = int(start[1:])
            en = int(end[1:])
            assert start[0] == end[0]
            prefix = start[0]
            arguments = []
            for x in range(sn, en + 1):
                arguments.append("%s%d" % (prefix, x))
            return arguments
        else:
            return [x.strip() for x in argument.split(",")]


class IntentResolver(Patch):
    def get_path(self):
        return "com/android/server/IntentResolver.smali"

    def patch(self, output, line):
        if 'Landroid/content/Intent;->isExcludingStopped(' in line:
            new_line = line.replace("invoke-virtual/range", "invoke-static/range") \
                .replace("Landroid/content/Intent;->isExcludingStopped(",
                         "Lcom/android/server/am/PreventRunningUtils;->isExcludingStopped(Landroid/content/Intent;")
            output.write(new_line)
            return new_line != line
        elif 'Landroid/content/IntentFilter;->match(' in line:
            new_line = line.replace("invoke-virtual/range", "invoke-static/range") \
                .replace("Landroid/content/IntentFilter;->match(",
                         "Lcom/android/server/am/PreventRunningUtils;->match(Landroid/content/IntentFilter;")
            output.write(new_line)
            return new_line != line

    def get_patch_count(self):
        return 2


class ActivityManagerService(Patch):
    methods = None
    pkg_deps = ''
    extra_count = 0

    fixing = {'startProcessLocked', 'startActivity', 'handleAppDiedLocked', 'cleanUpRemovedTaskLocked',
              'moveActivityTaskToBack', 'startService', 'bindService', 'broadcastIntent'}

    def __init__(self, dir_services=None, dir_apk='apk'):
        if dir_services is None:
            super(ActivityManagerService, self).__init__()
        else:
            super(ActivityManagerService, self).__init__(dir_services)
        self.dir_apk = dir_apk
        self.methods = self.init_pr_methods()

    def get_path(self):
        return "com/android/server/am/ActivityManagerService.smali"

    def init_pr_methods(self):
        path = self.build_path("com/android/server/am/ActivityManagerService.smali", self.dir_apk)
        methods = {}
        method_name = method_signature = method_body = ''
        for line in open(path, "r"):
            line_strip = line.strip()
            if line.startswith(".method"):
                method_signature = line_strip
                method_body = line
                method_name = self.find_method_name(method_signature)
            elif line.startswith(".end method"):
                method_body += line
                if method_name in self.fixing:
                    methods[method_signature] = (method_name, method_body)
                method_name = method_signature = method_body = ''
            elif line_strip.startswith(".line"):
                continue
            elif method_signature:
                method_body += line
        return methods

    def patch(self, output, line):
        line_strip = line.strip()
        if not line_strip:
            return False

        if line_strip.startswith(".line"):
            return False

        if line.startswith(".method"):
            method_signature = line_strip
            if method_signature in self.methods:
                method_name, method_body = self.methods[method_signature]
                if method_name in self.fixing:
                    output.write(method_body)
                    output.write(os.linesep)
                    output.write(line.replace(method_name, method_name + "$Pr"))
                    self.fixing.remove(method_name)
                    return True

        if self.pkg_deps and 'Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z' in line_strip:
            output.write("    invoke-static {},"
                         " Lcom/android/server/am/PreventRunningUtils;->returnFalse()Z")
            output.write(os.linesep)
            self.extra_count += 1
            self.pkg_deps = ''
            return True

        if line_strip.startswith('iget-object'):
            if 'Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;' in line_strip:
                self.pkg_deps = line_strip
            else:
                self.pkg_deps = ''

    def get_patch_count(self):
        return 8 + self.extra_count

    def run(self):
        super(ActivityManagerService, self).run()
        src = self.build_path("com/android/server/am/", self.dir_apk)
        dest = self.build_path("com/android/server/am/", self.dir_services)
        for path in os.listdir(src):
            if path.startswith("PreventRunning"):
                sys.stdout.write(_("copying %s%s") % (path[:-6], os.linesep))
                shutil.copy(os.path.join(src, path), dest)


class ActivityStack(Patch):

    patched = 0

    def get_path(self):
        return "com/android/server/am/ActivityStack.smali"

    def patch(self, output, line):
        if "Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;" in line:
            output.write(line)
            output.write(os.linesep)
            argument = self.get_method_arguments(line)[1]
            output.write("    invoke-static/range {%s .. %s},"
                         " Lcom/android/server/am/PreventRunningUtils;"
                         "->onResumeActivity(Landroid/os/IBinder;)V" % (argument, argument))
            output.write(os.linesep)
            self.patched += 1
            return True
        elif "Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;" in line:
            output.write(line)
            output.write(os.linesep)
            argument = self.get_method_arguments(line)[1]
            output.write("    invoke-static/range {%s .. %s},"
                         " Lcom/android/server/am/PreventRunningUtils;"
                         "->onDestroyActivity(Landroid/os/IBinder;)V" % (argument, argument))
            output.write(os.linesep)
            self.patched += 1
            return True
        elif "Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZ" in line:
            output.write(line)
            output.write(os.linesep)
            arguments = self.get_method_arguments(line)
            if arguments[1][0] == arguments[2][0] == arguments[3][0]:
                output.write("    invoke-static/range {%s .. %s},"
                         " Lcom/android/server/am/PreventRunningUtils;"
                         "->onUserLeavingActivity(Landroid/os/IBinder;ZZ)V" % (arguments[1], arguments[3]))
            else:
                output.write("    invoke-static {%s},"
                         " Lcom/android/server/am/PreventRunningUtils;"
                         "->onUserLeavingActivity(Landroid/os/IBinder;ZZ)V" % ', '.join(arguments[1:4]))
            output.write(os.linesep)
            self.patched += 1
            return True

    def get_patch_count(self):
        if self.patched > 3:
            return self.patched
        else:
            return 3


class ActivityStackSupervisor(Patch):

    patched = 0

    def get_path(self):
        return "com/android/server/am/ActivityStackSupervisor.smali"

    def patch(self, output, line):
        if "Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;" in line:
            output.write(line)
            output.write(os.linesep)
            arguments = self.get_method_arguments(line)
            argument = arguments[2]
            output.write("    invoke-static/range {%s .. %s},"
                         " Lcom/android/server/am/PreventRunningUtils;"
                         "->onLaunchActivity(Landroid/os/IBinder;)V" % (argument, argument))
            output.write(os.linesep)
            self.patched += 1
            return True

    def get_patch_count(self):
        if self.patched > 1:
            return self.patched
        else:
            return 1

class ConnectivityService(Patch):

    patched = 0
    method_name_sp = ""

    def get_path(self):
        return "com/android/server/ConnectivityService.smali"

    def patch(self, output, line):
        if line.startswith(".method"):
            self.method_name_sp = self.find_method_name(line.strip())
        if self.method_name_sp == "handleAsyncChannelDisconnected":
            if ".registers" in line:
                output.write(line)
                output.write(os.linesep)
                output.write("    invoke-static {},"
                    " Lcom/android/server/am/PreventRunningUtils;"
                    "->onVpnConnectionDisconnected()V")
                output.write(os.linesep)
                self.patched += 1
                return True
                
    def get_patch_count(self):
        if self.patched > 1:
            return self.patched
        else:
            return 1

class Vpn(Patch):

    patched = 0
    method_name_sp = ""

    def get_path(self):
        return "com/android/server/connectivity/Vpn.smali"

    def patch(self, output, line):
        if line.startswith(".method"):
            self.method_name_sp = self.find_method_name(line.strip())
        if self.method_name_sp == "establish":
            if "Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I" in line:
                output.write(line)
                output.write(os.linesep)
                output.write("move-object/from16 v0, p1")
                output.write(os.linesep)
                output.write("iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;")
                output.write(os.linesep)
                output.write("    invoke-static {v0},"
                    " Lcom/android/server/am/PreventRunningUtils;"
                    "->onActivityEstablishVpnConnection(Ljava/lang/String;)V")
                output.write(os.linesep)
                self.patched += 1
                return True
                
    def get_patch_count(self):
        if self.patched > 1:
            return self.patched
        else:
            return 1

class MediaFocusControl(Patch):

    patched = 0
    method_name_sp = ""

    def get_path(self):
        return "com/android/server/audio/MediaFocusControl.smali"

    def patch(self, output, line):
        if line.startswith(".method"):
            self.method_name_sp = self.find_method_name(line.strip())
        if self.method_name_sp == "requestAudioFocus":
            if ".registers" in line:
                output.write(line)
                output.write(os.linesep)
                output.write("invoke-static {}, Landroid/os/Binder;->getCallingUid()I")
                output.write(os.linesep)
                output.write("move-result v1")
                output.write(os.linesep)
                output.write("invoke-static {}, Landroid/os/Binder;->getCallingPid()I")
                output.write(os.linesep)
                output.write("move-result v2")
                output.write(os.linesep)
                output.write("    move-object/16 v3 , p5")
                output.write(os.linesep)
                output.write("    move-object/16 v4 , p6")
                output.write(os.linesep)
                output.write("    invoke-static/range {v1 .. v4},"
                    " Lcom/android/server/am/PreventRunningUtils;"
                    "->onActivityRequestAudioFocus(IILjava/lang/String;Ljava/lang/String;)V")
                output.write(os.linesep)
                self.patched += 1
                return True
        if self.method_name_sp == "abandonAudioFocus":
            if ".registers" in line:
                output.write(line)
                output.write(os.linesep)
                output.write("invoke-static {}, Landroid/os/Binder;->getCallingUid()I")
                output.write(os.linesep)
                output.write("move-result v1")
                output.write(os.linesep)
                output.write("invoke-static {}, Landroid/os/Binder;->getCallingPid()I")
                output.write(os.linesep)
                output.write("move-result v2")
                output.write(os.linesep)
                output.write("    move-object/16 v3 , p2")
                output.write(os.linesep)
                output.write("    invoke-static {v1 ,v2, v3},"
                    " Lcom/android/server/am/PreventRunningUtils;"
                    "->onActivityAbandonAudioFocus(IILjava/lang/String;)V")
                output.write(os.linesep)
                self.patched += 1
                return True
        if self.method_name_sp == "removeFocusStackEntryOnDeath":
            if "Lcom/android/server/audio/FocusRequester;->release()V" in line:
                output.write(line)
                output.write(os.linesep)
                arguments = self.get_method_arguments(line)
                argument = arguments[0]
                output.write("    invoke-virtual {%s},"
                    " Lcom/android/server/audio/FocusRequester;"
                    "->getClientId()Ljava/lang/String;" %(argument))
                output.write(os.linesep)
                output.write("    move-result-object %s" %(argument))
                output.write(os.linesep)
                output.write("    invoke-static {%s},"
                    " Lcom/android/server/am/PreventRunningUtils;"
                    "->onActivityLostAudioFocusOnDeath(Ljava/lang/String;)V" %(argument))
                output.write(os.linesep)
                self.patched += 1
                return True

    def get_patch_count(self):
        if self.patched > 1:
            return self.patched
        else:
            return 1

def main():
    from optparse import OptionParser

    parser = OptionParser()
    parser.add_option("-a", "--apk", dest="dir_apk", default="apk",
                      help="dir for apk", metavar="DIR")
    parser.add_option("-s", "--service", dest="dir_services", default="services",
                      help="dir for services", metavar="DIR")

    (options, args) = parser.parse_args()

    IntentResolver(options.dir_services).run()
    ActivityStack(options.dir_services).run()
    ActivityStackSupervisor(options.dir_services).run()
    MediaFocusControl(options.dir_services).run()
    Vpn(options.dir_services).run()
    ConnectivityService(options.dir_services).run()
    ActivityManagerService(options.dir_services, options.dir_apk).run()
    


if __name__ == '__main__':
    main()

# vim: set sta sw=4 et:
