.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10304f9

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_CELLULAR_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.cellular.WearCellularMediatorService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 249
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 245
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .prologue
    .line 439
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 440
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 441
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10304f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 438
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 241
    return-void
.end method

.method private performPendingShutdown()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 399
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 398
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_7f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7f

    .line 401
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_6d

    const/4 v4, 0x1

    .line 404
    .local v4, "reboot":Z
    :goto_1e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_6f

    .line 405
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 415
    :goto_2c
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 416
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_46
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_71

    move-result-object v1

    .line 425
    .end local v1    # "filename":Ljava/lang/String;
    :goto_4a
    if-eqz v1, :cond_7c

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 426
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 427
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 401
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_6d
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_1e

    .line 407
    :cond_6f
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_2c

    .line 421
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_71
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 434
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_7c
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 397
    .end local v4    # "reboot":Z
    :cond_7f
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 393
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    return-void
.end method

.method private run()V
    .registers 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x80000

    .line 267
    :try_start_6
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_26

    .line 273
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 285
    :cond_26
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 286
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_5c
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 305
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 309
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 310
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 311
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 316
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 311
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 320
    :cond_9c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 324
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 328
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 332
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 336
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 339
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 342
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 346
    const/4 v0, -0x2

    .line 345
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 347
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 348
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 351
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 358
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 361
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 362
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    .line 363
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_ef
    .catchall {:try_start_6 .. :try_end_ef} :catchall_122

    .line 365
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 370
    :try_start_f2
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 372
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 373
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_104} :catch_127
    .catchall {:try_start_f2 .. :try_end_104} :catchall_13b

    .line 379
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 383
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 384
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_116
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 389
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :catchall_122
    move-exception v0

    .line 365
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 364
    throw v0

    .line 374
    :catch_127
    move-exception v6

    .line 375
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_128
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    throw v6
    :try_end_13b
    .catchall {:try_start_128 .. :try_end_13b} :catchall_13b

    .line 378
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_13b
    move-exception v0

    .line 379
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 378
    throw v0
.end method

.method private startBootstrapServices()V
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/32 v10, 0x80000

    .line 455
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 458
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 459
    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 458
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 460
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 461
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 467
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 471
    const-string/jumbo v5, "InitPowerManagement"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 472
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 473
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 476
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 480
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 483
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 486
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v5, "ro.alarm_boot"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 489
    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 490
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 503
    :cond_83
    :goto_83
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 504
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Regionalization Service"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 506
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v5, "regionalization"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 510
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_9d
    const-string/jumbo v5, "StartPackageManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 511
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 512
    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_12a

    move v5, v6

    :goto_aa
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 511
    invoke-static {v8, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 513
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 514
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 515
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 520
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_e2

    .line 521
    const-string/jumbo v5, "config.disable_otadexopt"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 523
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_e2

    .line 524
    const-string/jumbo v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 526
    :try_start_d8
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_df} :catch_12d
    .catchall {:try_start_d8 .. :try_end_df} :catchall_138

    .line 530
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 535
    .end local v1    # "disableOtaDexopt":Z
    :cond_e2
    :goto_e2
    const-string/jumbo v5, "StartUserManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 536
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 537
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 540
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 543
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 546
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/om/OverlayManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 550
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 451
    return-void

    .line 492
    :cond_10c
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    .line 493
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Device encrypted - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_83

    .line 495
    :cond_122
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v5, :cond_83

    .line 500
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_83

    :cond_12a
    move v5, v7

    .line 512
    goto/16 :goto_aa

    .line 527
    .restart local v1    # "disableOtaDexopt":Z
    :catch_12d
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_12e
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_134
    .catchall {:try_start_12e .. :try_end_134} :catchall_138

    .line 530
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_e2

    .line 529
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_138
    move-exception v5

    .line 530
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 529
    throw v5
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 561
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 562
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 563
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 562
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 566
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 556
    return-void
.end method

.method private startOtherServices()V
    .registers 113

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 575
    .local v6, "context":Landroid/content/Context;
    const/16 v99, 0x0

    .line 576
    .local v99, "vibrator":Lcom/android/server/VibratorService;
    const/16 v77, 0x0

    .line 577
    .local v77, "mountService":Landroid/os/storage/IMountService;
    const/16 v78, 0x0

    .line 578
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v83, 0x0

    .line 579
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v79, 0x0

    .line 580
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v26, 0x0

    .line 581
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v81, 0x0

    .line 582
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v91, 0x0

    .line 583
    .local v91, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v108, 0x0

    .line 584
    .local v108, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v88, 0x0

    .line 585
    .local v88, "serial":Lcom/android/server/SerialService;
    const/16 v84, 0x0

    .line 586
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v23, 0x0

    .line 587
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v65, 0x0

    .line 588
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v95, 0x0

    .line 589
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v29, 0x0

    .line 590
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v20, 0x0

    .line 591
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v62, 0x0

    .line 592
    .local v62, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v106, 0x0

    .line 593
    .local v106, "wigigP2pService":Ljava/lang/Object;
    const/16 v107, 0x0

    .line 594
    .local v107, "wigigService":Ljava/lang/Object;
    const/16 v97, 0x0

    .line 596
    .local v97, "themeService":Lcom/android/server/ThemeService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 597
    .local v48, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 598
    .local v35, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 599
    .local v38, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 600
    .local v49, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 601
    .local v42, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 602
    .local v40, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 603
    .local v41, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 604
    .local v44, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    .line 605
    const/4 v5, 0x0

    .line 604
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 606
    .local v39, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 607
    .local v47, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    .line 608
    const/4 v5, 0x0

    .line 607
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 609
    .local v46, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    .line 610
    const/4 v5, 0x0

    .line 609
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 611
    .local v51, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    .line 612
    const/4 v5, 0x0

    .line 611
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 613
    .local v50, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    .line 614
    const/4 v5, 0x0

    .line 613
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 615
    .local v45, "disableSamplingProfiler":Z
    const-string/jumbo v4, "config.disable_consumerir"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 616
    .local v37, "disableConsumerIr":Z
    const-string/jumbo v4, "config.disable_vrmanager"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 617
    .local v52, "disableVrManager":Z
    const-string/jumbo v4, "config.disable_cameraservice"

    .line 618
    const/4 v5, 0x0

    .line 617
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 620
    .local v36, "disableCameraService":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    .line 621
    .local v67, "isEmulator":Z
    const-string/jumbo v4, "persist.wigig.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 623
    .local v58, "enableWigig":Z
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 624
    const v5, 0x3f060005

    .line 623
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 625
    .local v59, "externalServer":Ljava/lang/String;
    const-string/jumbo v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 628
    .local v34, "disableAtlas":Z
    :try_start_dd
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 631
    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 632
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 633
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 637
    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 638
    new-instance v96, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v96

    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_dd .. :try_end_116} :catch_100d

    .line 639
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_116
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 640
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 642
    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 643
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 644
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 646
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 648
    if-nez v36, :cond_155

    .line 649
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 654
    :cond_155
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 656
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 658
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 660
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 662
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 664
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 666
    const-string/jumbo v4, "ThemeService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 667
    new-instance v98, Lcom/android/server/ThemeService;

    move-object/from16 v0, v98

    invoke-direct {v0, v6}, Lcom/android/server/ThemeService;-><init>(Landroid/content/Context;)V
    :try_end_1a1
    .catch Ljava/lang/RuntimeException; {:try_start_116 .. :try_end_1a1} :catch_1010

    .line 668
    .local v98, "themeService":Lcom/android/server/ThemeService;
    :try_start_1a1
    const-string/jumbo v4, "theme"

    .end local v97    # "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 669
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 671
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 672
    new-instance v100, Lcom/android/server/VibratorService;

    move-object/from16 v0, v100

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_1a1 .. :try_end_1bc} :catch_1015

    .line 673
    .local v100, "vibrator":Lcom/android/server/VibratorService;
    :try_start_1bc
    const-string/jumbo v4, "vibrator"

    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 674
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 676
    if-nez v37, :cond_1e9

    .line 677
    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 678
    new-instance v30, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_1d9
    .catch Ljava/lang/RuntimeException; {:try_start_1bc .. :try_end_1d9} :catch_101c

    .line 679
    .local v30, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_1d9
    const-string/jumbo v4, "consumer_ir"

    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 680
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_1d9 .. :try_end_1e7} :catch_1025

    move-object/from16 v29, v30

    .line 683
    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :cond_1e9
    :try_start_1e9
    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 685
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 687
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v102

    .line 689
    .local v102, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v102

    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 690
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 693
    new-instance v66, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_224
    .catch Ljava/lang/RuntimeException; {:try_start_1e9 .. :try_end_224} :catch_101c

    .line 694
    .local v66, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    :try_start_227
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 696
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c72

    const/4 v4, 0x1

    move v5, v4

    .line 699
    :goto_239
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_c76

    const/4 v4, 0x0

    :goto_240
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v109, v0

    .line 697
    move-object/from16 v0, v66

    move/from16 v1, v109

    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v108

    .line 700
    .local v108, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v108

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 701
    const-string/jumbo v4, "input"

    move-object/from16 v0, v66

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 702
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 704
    if-nez v52, :cond_27b

    .line 705
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 707
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 710
    :cond_27b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v108

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 712
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 713
    invoke-virtual/range {v66 .. v66}, Lcom/android/server/input/InputManagerService;->start()V

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 721
    if-eqz v67, :cond_c79

    .line 722
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_2a2
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 736
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 738
    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 740
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 744
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2e1
    .catch Ljava/lang/RuntimeException; {:try_start_227 .. :try_end_2e1} :catch_c8b

    move-object/from16 v97, v98

    .end local v98    # "themeService":Lcom/android/server/ThemeService;
    .local v97, "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v99, v100

    .line 750
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "themeService":Lcom/android/server/ThemeService;
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .end local v102    # "watchdog":Lcom/android/server/Watchdog;
    .end local v108    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_2e9
    const/16 v92, 0x0

    .line 751
    .local v92, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v86, 0x0

    .line 752
    .local v86, "notification":Landroid/app/INotificationManager;
    const/16 v68, 0x0

    .line 753
    .local v68, "location":Lcom/android/server/LocationManagerService;
    const/16 v31, 0x0

    .line 754
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v70, 0x0

    .line 756
    .local v70, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v72, 0x0

    .line 757
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v60, 0x0

    .line 758
    .local v60, "gestureService":Lcom/android/server/gesture/GestureService;
    const/16 v56, 0x0

    .line 761
    .local v56, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_320

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 764
    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 766
    :try_start_30f
    const-string/jumbo v4, "accessibility"

    .line 767
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 766
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31a
    .catch Ljava/lang/Throwable; {:try_start_30f .. :try_end_31a} :catch_cda

    .line 771
    :goto_31a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 775
    :cond_320
    :try_start_320
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_323
    .catch Ljava/lang/Throwable; {:try_start_320 .. :try_end_323} :catch_ce7

    .line 780
    :goto_323
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33c

    .line 781
    if-nez v48, :cond_33c

    .line 782
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf4

    .line 799
    .end local v77    # "mountService":Landroid/os/storage/IMountService;
    :cond_33c
    :goto_33c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 801
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_363

    .line 802
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 804
    :try_start_356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_35d
    .catch Ljava/lang/Throwable; {:try_start_356 .. :try_end_35d} :catch_d18

    .line 808
    :goto_35d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 811
    :cond_363
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 813
    :try_start_36e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_375
    .catch Ljava/lang/Throwable; {:try_start_36e .. :try_end_375} :catch_d25

    .line 817
    :goto_375
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 819
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9d0

    .line 820
    if-nez v42, :cond_3d0

    .line 821
    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 823
    :try_start_38a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 825
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 824
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_39e
    .catch Ljava/lang/Throwable; {:try_start_38a .. :try_end_39e} :catch_d32

    move-result-object v70

    .line 829
    .end local v70    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_39f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 831
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3be

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 835
    :cond_3be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 842
    :cond_3d0
    if-nez v49, :cond_3f1

    .line 843
    const-string/jumbo v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 845
    :try_start_3d8
    new-instance v93, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v93

    move-object/from16 v1, v108

    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3e1
    .catch Ljava/lang/Throwable; {:try_start_3d8 .. :try_end_3e1} :catch_d3f

    .line 846
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v93, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_3e1
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v93

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e9
    .catch Ljava/lang/Throwable; {:try_start_3e1 .. :try_end_3e9} :catch_1008

    move-object/from16 v92, v93

    .line 850
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_3eb
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 853
    :cond_3f1
    if-nez v42, :cond_40a

    .line 854
    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 856
    :try_start_3f9
    const-string/jumbo v4, "clipboard"

    .line 857
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 856
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_404
    .catch Ljava/lang/Throwable; {:try_start_3f9 .. :try_end_404} :catch_d4c

    .line 861
    :goto_404
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 864
    :cond_40a
    if-nez v40, :cond_424

    .line 865
    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 867
    :try_start_412
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v78

    .line 868
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41e
    .catch Ljava/lang/Throwable; {:try_start_412 .. :try_end_41e} :catch_d59

    .line 872
    .end local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_41e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 875
    :cond_424
    if-nez v42, :cond_428

    if-eqz v50, :cond_d66

    .line 879
    :cond_428
    :goto_428
    if-nez v40, :cond_5c6

    .line 880
    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 882
    :try_start_430
    new-instance v82, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v82

    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_437
    .catch Ljava/lang/Throwable; {:try_start_430 .. :try_end_437} :catch_d71

    .line 883
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v82, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_437
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43f
    .catch Ljava/lang/Throwable; {:try_start_437 .. :try_end_43f} :catch_1003

    move-object/from16 v81, v82

    .line 887
    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_441
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 889
    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 891
    :try_start_44d
    move-object/from16 v0, v78

    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v83

    .line 892
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45b
    .catch Ljava/lang/Throwable; {:try_start_44d .. :try_end_45b} :catch_d7e

    .line 896
    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_45b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 898
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 900
    :try_start_467
    new-instance v80, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 900
    move-object/from16 v0, v80

    move-object/from16 v1, v83

    move-object/from16 v2, v78

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_476
    .catch Ljava/lang/Throwable; {:try_start_467 .. :try_end_476} :catch_d8b

    .line 902
    .end local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v80, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_476
    const-string/jumbo v4, "netpolicy"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47e
    .catch Ljava/lang/Throwable; {:try_start_476 .. :try_end_47e} :catch_ffe

    move-object/from16 v79, v80

    .line 906
    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_480
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 908
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d98

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 913
    :goto_49d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 916
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 915
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 918
    if-nez v44, :cond_4c7

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 922
    :cond_4c7
    if-eqz v58, :cond_559

    .line 924
    :try_start_4c9
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wigig Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v104, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/wigig-service.jar"

    .line 927
    const-string/jumbo v5, "/system/lib64:/system/vendor/lib64"

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v109

    invoke-virtual/range {v109 .. v109}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v109

    .line 926
    move-object/from16 v0, v104

    move-object/from16 v1, v109

    invoke-direct {v0, v4, v5, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 930
    .local v104, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 929
    move-object/from16 v0, v104

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v105

    .line 931
    .local v105, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v109, 0x0

    aput-object v5, v4, v109

    move-object/from16 v0, v105

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v33

    .line 932
    .local v33, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v106

    .line 933
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v0, v106

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 937
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.WigigService"

    .line 936
    move-object/from16 v0, v104

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v103

    .line 938
    .local v103, "wigigClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v109, 0x0

    aput-object v5, v4, v109

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v33

    .line 939
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v107

    .line 940
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string/jumbo v5, "wigig"

    move-object/from16 v0, v107

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_559
    .catch Ljava/lang/Throwable; {:try_start_4c9 .. :try_end_559} :catch_da3

    .line 947
    .end local v33    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v103    # "wigigClass":Ljava/lang/Class;
    .end local v104    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v105    # "wigigP2pClass":Ljava/lang/Class;
    .end local v106    # "wigigP2pService":Ljava/lang/Object;
    .end local v107    # "wigigService":Ljava/lang/Object;
    :cond_559
    :goto_559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_573

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 947
    if-eqz v4, :cond_57d

    .line 949
    :cond_573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 952
    :cond_57d
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 954
    :try_start_583
    new-instance v27, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v27

    move-object/from16 v1, v78

    move-object/from16 v2, v83

    move-object/from16 v3, v79

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_590
    .catch Ljava/lang/Throwable; {:try_start_583 .. :try_end_590} :catch_db0

    .line 956
    .end local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v27, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_590
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 957
    move-object/from16 v0, v83

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 958
    move-object/from16 v0, v79

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_5a6
    .catch Ljava/lang/Throwable; {:try_start_590 .. :try_end_5a6} :catch_ff9

    move-object/from16 v26, v27

    .line 962
    .end local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_5a8
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 964
    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 966
    :try_start_5b4
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v91

    .line 968
    .local v91, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 967
    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c0
    .catch Ljava/lang/Throwable; {:try_start_5b4 .. :try_end_5c0} :catch_dbd

    .line 972
    .end local v91    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_5c0
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 975
    :cond_5c6
    if-nez v42, :cond_5df

    .line 976
    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 978
    :try_start_5ce
    const-string/jumbo v4, "updatelock"

    .line 979
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 978
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d9
    .catch Ljava/lang/Throwable; {:try_start_5ce .. :try_end_5d9} :catch_dca

    .line 983
    :goto_5d9
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 986
    :cond_5df
    if-nez v42, :cond_5ea

    .line 987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 995
    :cond_5ea
    if-eqz v77, :cond_5f2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_dd7

    .line 1004
    :cond_5f2
    :goto_5f2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1006
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1005
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v86

    .line 1007
    .local v86, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v79

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1011
    if-nez v38, :cond_652

    .line 1012
    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1014
    :try_start_61e
    new-instance v69, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_625
    .catch Ljava/lang/Throwable; {:try_start_61e .. :try_end_625} :catch_def

    .line 1015
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .local v69, "location":Lcom/android/server/LocationManagerService;
    :try_start_625
    const-string/jumbo v4, "location"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62d
    .catch Ljava/lang/Throwable; {:try_start_625 .. :try_end_62d} :catch_ff4

    move-object/from16 v68, v69

    .line 1019
    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    :goto_62f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1021
    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1023
    :try_start_63b
    new-instance v32, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_642
    .catch Ljava/lang/Throwable; {:try_start_63b .. :try_end_642} :catch_dfc

    .line 1024
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v32, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_642
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64a
    .catch Ljava/lang/Throwable; {:try_start_642 .. :try_end_64a} :catch_fef

    move-object/from16 v31, v32

    .line 1028
    .end local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_64c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1031
    :cond_652
    if-nez v42, :cond_656

    if-eqz v46, :cond_e09

    .line 1041
    :cond_656
    :goto_656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1043
    if-nez v42, :cond_674

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1044
    const v5, 0x1120059

    .line 1043
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_674

    .line 1044
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_e2d

    .line 1050
    :cond_674
    :goto_674
    const-string/jumbo v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1052
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1054
    if-nez v42, :cond_6a1

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1057
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a1

    .line 1062
    :cond_6a1
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1066
    :try_start_6a7
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v65

    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1065
    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_6b3
    .catch Ljava/lang/Throwable; {:try_start_6a7 .. :try_end_6b3} :catch_e45

    .line 1070
    :goto_6b3
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1072
    if-nez v42, :cond_748

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d2

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1078
    :cond_6d2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6ec

    .line 1079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1080
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1079
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1078
    if-eqz v4, :cond_707

    .line 1082
    :cond_6ec
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1084
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1087
    :cond_707
    if-nez v47, :cond_726

    .line 1088
    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1091
    :try_start_70f
    new-instance v89, Lcom/android/server/SerialService;

    move-object/from16 v0, v89

    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_716
    .catch Ljava/lang/Throwable; {:try_start_70f .. :try_end_716} :catch_e52

    .line 1092
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .local v89, "serial":Lcom/android/server/SerialService;
    :try_start_716
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71e
    .catch Ljava/lang/Throwable; {:try_start_716 .. :try_end_71e} :catch_fea

    move-object/from16 v88, v89

    .line 1096
    .end local v89    # "serial":Lcom/android/server/SerialService;
    :goto_720
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1100
    :cond_726
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    .line 1099
    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1102
    :try_start_731
    new-instance v63, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_738
    .catch Ljava/lang/Throwable; {:try_start_731 .. :try_end_738} :catch_e60

    .line 1103
    .end local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v63, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_738
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v63

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_740
    .catch Ljava/lang/Throwable; {:try_start_738 .. :try_end_740} :catch_fe5

    move-object/from16 v62, v63

    .line 1108
    .end local v63    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_742
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1111
    :cond_748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1113
    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_760

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1117
    :cond_760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1121
    if-nez v42, :cond_7f0

    .line 1122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78b

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1126
    :cond_78b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7a5

    .line 1127
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1126
    if-eqz v4, :cond_7ab

    .line 1128
    :cond_7a5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_e6e

    .line 1132
    :cond_7ab
    :goto_7ab
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c2

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1136
    :cond_7c2
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_7de

    .line 1137
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1140
    :cond_7de
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1144
    :cond_7f0
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1146
    :try_start_7f6
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_801
    .catch Ljava/lang/Throwable; {:try_start_7f6 .. :try_end_801} :catch_e7a

    .line 1150
    :goto_801
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1152
    if-nez v45, :cond_820

    .line 1153
    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1159
    :try_start_80f
    const-string/jumbo v4, "samplingprofiler"

    .line 1160
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1159
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81a
    .catch Ljava/lang/Throwable; {:try_start_80f .. :try_end_81a} :catch_e87

    .line 1164
    :goto_81a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1167
    :cond_820
    if-nez v40, :cond_824

    if-eqz v41, :cond_e94

    .line 1178
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_824
    :goto_824
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1180
    :try_start_82a
    new-instance v24, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_831
    .catch Ljava/lang/Throwable; {:try_start_82a .. :try_end_831} :catch_ebf

    .line 1181
    .end local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v24, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_831
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_839
    .catch Ljava/lang/Throwable; {:try_start_831 .. :try_end_839} :catch_fdb

    move-object/from16 v23, v24

    .line 1185
    .end local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_83b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1187
    if-nez v40, :cond_856

    .line 1188
    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1190
    :try_start_849
    new-instance v22, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_850
    .catch Ljava/lang/Throwable; {:try_start_849 .. :try_end_850} :catch_ecc

    .line 1194
    :goto_850
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1197
    :cond_856
    if-nez v40, :cond_85a

    if-eqz v42, :cond_ed9

    .line 1202
    :cond_85a
    :goto_85a
    if-nez v42, :cond_865

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1207
    :cond_865
    if-nez v42, :cond_867

    .line 1218
    :cond_867
    if-nez v42, :cond_874

    .line 1219
    const-string/jumbo v4, "graphicsstats"

    .line 1220
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1219
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1223
    :cond_874
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1224
    const v5, 0x11200a4

    .line 1223
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_89d

    .line 1226
    :try_start_881
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    new-instance v61, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v61

    move-object/from16 v1, v65

    invoke-direct {v0, v6, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_893
    .catch Ljava/lang/Throwable; {:try_start_881 .. :try_end_893} :catch_ee4

    .line 1228
    .end local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v61, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_893
    const-string/jumbo v4, "gesture"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89b
    .catch Ljava/lang/Throwable; {:try_start_893 .. :try_end_89b} :catch_fd6

    move-object/from16 v60, v61

    .line 1234
    .end local v61    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_89d
    :goto_89d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b4

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1238
    :cond_8b4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8dc

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1246
    :cond_8dc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f2

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1250
    :cond_8f2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_908

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1254
    :cond_908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91e

    .line 1255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1258
    :cond_91e
    if-nez v42, :cond_96d

    .line 1259
    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1261
    :try_start_926
    new-instance v73, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v73

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_92d
    .catch Ljava/lang/Throwable; {:try_start_926 .. :try_end_92d} :catch_ef2

    .line 1262
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v73, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_92d
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_935
    .catch Ljava/lang/Throwable; {:try_start_92d .. :try_end_935} :catch_fd1

    move-object/from16 v72, v73

    .line 1266
    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_937
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1268
    if-nez v51, :cond_948

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1272
    :cond_948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95e

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1276
    :cond_95e
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1278
    :try_start_964
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_967
    .catch Ljava/lang/Throwable; {:try_start_964 .. :try_end_967} :catch_eff

    .line 1282
    :goto_967
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1285
    :cond_96d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1290
    :try_start_97f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "EdgeGesture service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance v57, Lcom/android/server/gesture/EdgeGestureService;

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-direct {v0, v6, v1}, Lcom/android/server/gesture/EdgeGestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_991
    .catch Ljava/lang/Throwable; {:try_start_97f .. :try_end_991} :catch_f0c

    .line 1292
    .end local v56    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v57, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :try_start_991
    const-string/jumbo v4, "edgegestureservice"

    move-object/from16 v0, v57

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_999
    .catch Ljava/lang/Throwable; {:try_start_991 .. :try_end_999} :catch_fcc

    move-object/from16 v56, v57

    .line 1297
    .end local v57    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :goto_99b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Starting PocketService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pocket/PocketService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1299
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1300
    const v5, 0x104011c

    .line 1299
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9d0

    .line 1301
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Starting PocketBridgeService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pocket/PocketBridgeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1306
    .end local v86    # "notification":Landroid/app/INotificationManager;
    :cond_9d0
    if-nez v42, :cond_9d4

    if-eqz v39, :cond_f1a

    .line 1310
    :cond_9d4
    :goto_9d4
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a15

    .line 1312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.wifi.WearWifiMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1314
    const-string/jumbo v4, "config.enable_cellmediator"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a09

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.cellular.WearCellularMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1317
    :cond_a09
    if-nez v42, :cond_a15

    .line 1318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1323
    :cond_a15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "adb_port"

    .line 1324
    const-string/jumbo v109, "service.adb.tcp.port"

    const-string/jumbo v110, "-1"

    invoke-static/range {v109 .. v110}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    invoke-static/range {v109 .. v109}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v109

    .line 1323
    move/from16 v0, v109

    invoke-static {v4, v5, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1328
    const-string/jumbo v5, "adb_port"

    invoke-static {v5}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1329
    new-instance v109, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, v109

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/16 v110, 0x0

    .line 1327
    move/from16 v0, v110

    move-object/from16 v1, v109

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1333
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v87

    .line 1334
    .local v87, "safeMode":Z
    if-eqz v87, :cond_f25

    .line 1335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1337
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1344
    :goto_a60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v20

    .end local v20    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v20, Lcom/android/server/MmsServiceBroker;

    .line 1348
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_a6c
    invoke-static/range {v59 .. v59}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v90

    .line 1349
    .local v90, "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v109, 0x0

    aput-object v5, v4, v109

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v28

    .line 1350
    .local v28, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1351
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/16 v109, 0x0

    aput-object v5, v4, v109

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1352
    .local v21, "baseObject":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "run"

    const/16 v109, 0x0

    move/from16 v0, v109

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v109, v0

    move-object/from16 v0, v109

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v74

    .line 1353
    .local v74, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1354
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v74

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_abb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a6c .. :try_end_abb} :catch_f2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_a6c .. :try_end_abb} :catch_f2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a6c .. :try_end_abb} :catch_f2e
    .catch Ljava/lang/InstantiationException; {:try_start_a6c .. :try_end_abb} :catch_f2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a6c .. :try_end_abb} :catch_f2e

    .line 1364
    .end local v21    # "baseObject":Ljava/lang/Object;
    .end local v28    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v74    # "method":Ljava/lang/reflect/Method;
    .end local v90    # "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_abb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "device_provisioned"

    const/16 v109, 0x0

    move/from16 v0, v109

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_ad6

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    .line 1364
    if-eqz v4, :cond_adf

    .line 1366
    :cond_ad6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1371
    :cond_adf
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1373
    :try_start_aea
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_aed
    .catch Ljava/lang/Throwable; {:try_start_aea .. :try_end_aed} :catch_f57

    .line 1377
    :goto_aed
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1379
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1380
    if-eqz v70, :cond_b03

    .line 1382
    :try_start_b00
    invoke-interface/range {v70 .. v70}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_b03
    .catch Ljava/lang/Throwable; {:try_start_b00 .. :try_end_b03} :catch_f64

    .line 1387
    :cond_b03
    :goto_b03
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1394
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1398
    if-eqz v58, :cond_b8b

    .line 1400
    :try_start_b28
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual/range {v106 .. v106}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v105

    .line 1402
    .restart local v105    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v109, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v110, 0x0

    aput-object v109, v5, v110

    move-object/from16 v0, v105

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v71

    .line 1403
    .local v71, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1404
    const/16 v109, 0x1f4

    .line 1403
    move/from16 v0, v109

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v109, 0x0

    aput-object v5, v4, v109

    move-object/from16 v0, v71

    move-object/from16 v1, v106

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    invoke-virtual/range {v107 .. v107}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v103

    .line 1407
    .restart local v103    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v109, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v110, 0x0

    aput-object v109, v5, v110

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v71

    .line 1408
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1409
    const/16 v109, 0x1f4

    .line 1408
    move/from16 v0, v109

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v109, 0x0

    aput-object v5, v4, v109

    move-object/from16 v0, v71

    move-object/from16 v1, v107

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8b
    .catch Ljava/lang/Throwable; {:try_start_b28 .. :try_end_b8b} :catch_f71

    .line 1416
    .end local v71    # "m":Ljava/lang/reflect/Method;
    .end local v103    # "wigigClass":Ljava/lang/Class;
    .end local v105    # "wigigP2pClass":Ljava/lang/Class;
    :cond_b8b
    :goto_b8b
    :try_start_b8b
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_b8e
    .catch Ljava/lang/Throwable; {:try_start_b8b .. :try_end_b8e} :catch_f7e

    .line 1420
    :goto_b8e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1422
    if-eqz v87, :cond_b9d

    .line 1423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1427
    :cond_b9d
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/wm/WindowManagerService;->detectDisableOverlays()Z

    move-result v43

    .line 1428
    .local v43, "disableOverlays":Z
    if-eqz v43, :cond_baa

    .line 1429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->disableOverlays()V

    .line 1435
    :cond_baa
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    .line 1436
    .local v25, "config":Landroid/content/res/Configuration;
    new-instance v75, Landroid/util/DisplayMetrics;

    invoke-direct/range {v75 .. v75}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1437
    .local v75, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/view/WindowManager;

    .line 1438
    .local v101, "w":Landroid/view/WindowManager;
    invoke-interface/range {v101 .. v101}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1439
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v25

    move-object/from16 v1, v75

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1442
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v94

    .line 1443
    .local v94, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v94 .. v94}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_bdd

    .line 1444
    invoke-virtual/range {v94 .. v94}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1447
    :cond_bdd
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1450
    :try_start_be8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 1451
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_bfd
    .catch Ljava/lang/Throwable; {:try_start_be8 .. :try_end_bfd} :catch_f8b

    .line 1455
    :goto_bfd
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1457
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1459
    :try_start_c0e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_c15
    .catch Ljava/lang/Throwable; {:try_start_c0e .. :try_end_c15} :catch_f98

    .line 1463
    :goto_c15
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1465
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1468
    :try_start_c26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v87

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_c33
    .catch Ljava/lang/Throwable; {:try_start_c26 .. :try_end_c33} :catch_fa5

    .line 1472
    :goto_c33
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1474
    if-eqz v60, :cond_c3e

    .line 1476
    :try_start_c3b
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_c3e
    .catch Ljava/lang/Throwable; {:try_start_c3b .. :try_end_c3e} :catch_fb2

    .line 1481
    :cond_c3e
    :goto_c3e
    if-eqz v56, :cond_c43

    .line 1483
    :try_start_c40
    invoke-virtual/range {v56 .. v56}, Lcom/android/server/gesture/EdgeGestureService;->systemReady()V
    :try_end_c43
    .catch Ljava/lang/Throwable; {:try_start_c40 .. :try_end_c43} :catch_fbf

    .line 1490
    :cond_c43
    :goto_c43
    move-object/from16 v8, v78

    .line 1491
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v9, v83

    .line 1492
    .local v9, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v10, v79

    .line 1493
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v26

    .line 1494
    .local v11, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v7, v81

    .line 1495
    .local v7, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v12, v68

    .line 1496
    .local v12, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v13, v31

    .line 1497
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v84

    .line 1498
    .local v14, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v15, v23

    .line 755
    .local v15, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    const/16 v16, 0x0

    .line 1500
    .local v16, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v17, v65

    .line 1501
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v95

    .line 1502
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v72

    .line 1503
    .local v19, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v76, v20

    .line 1510
    .local v76, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v109, v0

    new-instance v4, Lcom/android/server/SystemServer$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v0, v109

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 573
    return-void

    .line 698
    .end local v7    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v12    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v15    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v16    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v19    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v25    # "config":Landroid/content/res/Configuration;
    .end local v43    # "disableOverlays":Z
    .end local v75    # "metrics":Landroid/util/DisplayMetrics;
    .end local v76    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v87    # "safeMode":Z
    .end local v94    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v101    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v77    # "mountService":Landroid/os/storage/IMountService;
    .local v78, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v88    # "serial":Lcom/android/server/SerialService;
    .local v91, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "themeService":Lcom/android/server/ThemeService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v102    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v106    # "wigigP2pService":Ljava/lang/Object;
    .restart local v107    # "wigigService":Ljava/lang/Object;
    .local v108, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_c72
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_239

    .line 699
    :cond_c76
    const/4 v4, 0x1

    goto/16 :goto_240

    .line 723
    .local v108, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_c79
    :try_start_c79
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_caa

    .line 724
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c89
    .catch Ljava/lang/RuntimeException; {:try_start_c79 .. :try_end_c89} :catch_c8b

    goto/16 :goto_2a2

    .line 745
    .end local v108    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_c8b
    move-exception v54

    .local v54, "e":Ljava/lang/RuntimeException;
    move-object/from16 v97, v98

    .end local v98    # "themeService":Lcom/android/server/ThemeService;
    .restart local v97    # "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v99, v100

    .line 746
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "themeService":Lcom/android/server/ThemeService;
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .end local v102    # "watchdog":Lcom/android/server/Watchdog;
    :goto_c94
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e9

    .line 725
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "themeService":Lcom/android/server/ThemeService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v102    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v108    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_caa
    :try_start_caa
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 726
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 725
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cc2

    .line 727
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a2

    .line 728
    :cond_cc2
    if-eqz v35, :cond_ccf

    .line 729
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a2

    .line 731
    :cond_ccf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_cd8
    .catch Ljava/lang/RuntimeException; {:try_start_caa .. :try_end_cd8} :catch_c8b

    goto/16 :goto_2a2

    .line 768
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v98    # "themeService":Lcom/android/server/ThemeService;
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .end local v102    # "watchdog":Lcom/android/server/Watchdog;
    .end local v108    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v56    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v68    # "location":Lcom/android/server/LocationManagerService;
    .restart local v70    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v86, "notification":Landroid/app/INotificationManager;
    .restart local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_cda
    move-exception v55

    .line 769
    .local v55, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31a

    .line 776
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_ce7
    move-exception v55

    .line 777
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_323

    .line 788
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_cf4
    :try_start_cf4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 790
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 789
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_d08
    .catch Ljava/lang/Throwable; {:try_start_cf4 .. :try_end_d08} :catch_d0b

    move-result-object v77

    .local v77, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_33c

    .line 791
    .local v77, "mountService":Landroid/os/storage/IMountService;
    :catch_d0b
    move-exception v55

    .line 792
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33c

    .line 805
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v77    # "mountService":Landroid/os/storage/IMountService;
    :catch_d18
    move-exception v55

    .line 806
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35d

    .line 814
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_d25
    move-exception v55

    .line 815
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_375

    .line 826
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_d32
    move-exception v55

    .line 827
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39f

    .line 847
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v70    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_d3f
    move-exception v55

    .line 848
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_d40
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3eb

    .line 858
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_d4c
    move-exception v55

    .line 859
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_404

    .line 869
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_d59
    move-exception v55

    .line 870
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41e

    .line 876
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_d66
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_428

    .line 884
    :catch_d71
    move-exception v55

    .line 885
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_d72
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_441

    .line 893
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_d7e
    move-exception v55

    .line 894
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45b

    .line 903
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_d8b
    move-exception v55

    .line 904
    .end local v79    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_d8c
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_480

    .line 911
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_d98
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49d

    .line 942
    .end local v106    # "wigigP2pService":Ljava/lang/Object;
    .end local v107    # "wigigService":Ljava/lang/Object;
    :catch_da3
    move-exception v55

    .line 943
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_559

    .line 959
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_db0
    move-exception v55

    .line 960
    .end local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_db1
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a8

    .line 969
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v91    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_dbd
    move-exception v55

    .line 970
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c0

    .line 980
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_dca
    move-exception v55

    .line 981
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d9

    .line 996
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_dd7
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v110, 0x80000

    move-wide/from16 v0, v110

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 998
    :try_start_de2
    invoke-interface/range {v77 .. v77}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_de5
    .catch Landroid/os/RemoteException; {:try_start_de2 .. :try_end_de5} :catch_ded

    .line 1001
    :goto_de5
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_5f2

    .line 999
    :catch_ded
    move-exception v64

    .local v64, "ignored":Landroid/os/RemoteException;
    goto :goto_de5

    .line 1016
    .end local v64    # "ignored":Landroid/os/RemoteException;
    .local v86, "notification":Landroid/app/INotificationManager;
    :catch_def
    move-exception v55

    .line 1017
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_df0
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62f

    .line 1025
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_dfc
    move-exception v55

    .line 1026
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_dfd
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64c

    .line 1032
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_e09
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1034
    :try_start_e0f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_e19
    .catch Ljava/lang/Throwable; {:try_start_e0f .. :try_end_e19} :catch_e21

    .line 1038
    :goto_e19
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_656

    .line 1035
    :catch_e21
    move-exception v55

    .line 1036
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e19

    .line 1045
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_e2d
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1047
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_674

    .line 1067
    :catch_e45
    move-exception v55

    .line 1068
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b3

    .line 1093
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_e52
    move-exception v55

    .line 1094
    .end local v88    # "serial":Lcom/android/server/SerialService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_e53
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_720

    .line 1105
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_e60
    move-exception v55

    .line 1106
    .end local v62    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_e61
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_742

    .line 1129
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_e6e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto/16 :goto_7ab

    .line 1147
    :catch_e7a
    move-exception v55

    .line 1148
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_801

    .line 1161
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_e87
    move-exception v55

    .line 1162
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_81a

    .line 1168
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_e94
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1170
    :try_start_e9a
    new-instance v85, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v85

    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_ea1
    .catch Ljava/lang/Throwable; {:try_start_e9a .. :try_end_ea1} :catch_eb3

    .line 1171
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v85, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_ea1
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ea9
    .catch Ljava/lang/Throwable; {:try_start_ea1 .. :try_end_ea9} :catch_fe0

    move-object/from16 v84, v85

    .line 1175
    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_eab
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_824

    .line 1172
    .restart local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_eb3
    move-exception v55

    .line 1173
    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_eb4
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_eab

    .line 1182
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_ebf
    move-exception v55

    .line 1183
    .end local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_ec0
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_83b

    .line 1191
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_ecc
    move-exception v55

    .line 1192
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_850

    .line 1199
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_ed9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_85a

    .line 1229
    :catch_ee4
    move-exception v55

    .line 1230
    .end local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_ee5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_89d

    .line 1263
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_ef2
    move-exception v55

    .line 1264
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_ef3
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_937

    .line 1279
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_eff
    move-exception v55

    .line 1280
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_967

    .line 1293
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_f0c
    move-exception v55

    .line 1294
    .end local v56    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_f0d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting EdgeGesture service"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_99b

    .line 1307
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    :cond_f1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_9d4

    .line 1340
    .restart local v87    # "safeMode":Z
    :cond_f25
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_a60

    .line 1359
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_f2e
    move-exception v53

    .line 1360
    .local v53, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v109, "Unable to start  "

    move-object/from16 v0, v109

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const-string/jumbo v4, "SystemServer"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_abb

    .line 1374
    .end local v53    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_f57
    move-exception v55

    .line 1375
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aed

    .line 1383
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_f64
    move-exception v55

    .line 1384
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b03

    .line 1410
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_f71
    move-exception v55

    .line 1411
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b8b

    .line 1417
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_f7e
    move-exception v55

    .line 1418
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b8e

    .line 1452
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v25    # "config":Landroid/content/res/Configuration;
    .restart local v43    # "disableOverlays":Z
    .restart local v75    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v94    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v101    # "w":Landroid/view/WindowManager;
    :catch_f8b
    move-exception v55

    .line 1453
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bfd

    .line 1460
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_f98
    move-exception v55

    .line 1461
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c15

    .line 1469
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_fa5
    move-exception v55

    .line 1470
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c33

    .line 1477
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_fb2
    move-exception v55

    .line 1478
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c3e

    .line 1484
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_fbf
    move-exception v55

    .line 1485
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making EdgeGesture service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c43

    .line 1293
    .end local v25    # "config":Landroid/content/res/Configuration;
    .end local v43    # "disableOverlays":Z
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v75    # "metrics":Landroid/util/DisplayMetrics;
    .end local v87    # "safeMode":Z
    .end local v94    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v101    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v57    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v86    # "notification":Landroid/app/INotificationManager;
    :catch_fcc
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v56, v57

    .end local v57    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v56, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    goto/16 :goto_f0d

    .line 1263
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v56, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_fd1
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v72, v73

    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_ef3

    .line 1229
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v61    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_fd6
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v60, v61

    .end local v61    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v60, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_ee5

    .line 1182
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v60, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_fdb
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v23, v24

    .end local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_ec0

    .line 1172
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_fe0
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v84, v85

    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_eb4

    .line 1105
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v63    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_fe5
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v62, v63

    .end local v63    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v62, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_e61

    .line 1093
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v62, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v89    # "serial":Lcom/android/server/SerialService;
    :catch_fea
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v88, v89

    .end local v89    # "serial":Lcom/android/server/SerialService;
    .local v88, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_e53

    .line 1025
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v88, "serial":Lcom/android/server/SerialService;
    :catch_fef
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v31, v32

    .end local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_dfd

    .line 1016
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "location":Lcom/android/server/LocationManagerService;
    :catch_ff4
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v68, v69

    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    .local v68, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_df0

    .line 959
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v68, "location":Lcom/android/server/LocationManagerService;
    .local v86, "notification":Landroid/app/INotificationManager;
    .restart local v91    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_ff9
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v26, v27

    .end local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_db1

    .line 903
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v106    # "wigigP2pService":Ljava/lang/Object;
    .restart local v107    # "wigigService":Ljava/lang/Object;
    :catch_ffe
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v79, v80

    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_d8c

    .line 884
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v79, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_1003
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v81, v82

    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_d72

    .line 847
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v78    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1008
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v92, v93

    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v92, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_d40

    .line 745
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v56    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v60    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    .end local v92    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v77    # "mountService":Landroid/os/storage/IMountService;
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v97, "themeService":Lcom/android/server/ThemeService;
    .restart local v99    # "vibrator":Lcom/android/server/VibratorService;
    .local v108, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_100d
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_c94

    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_1010
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_c94

    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "themeService":Lcom/android/server/ThemeService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "themeService":Lcom/android/server/ThemeService;
    :catch_1015
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v97, v98

    .end local v98    # "themeService":Lcom/android/server/ThemeService;
    .local v97, "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_c94

    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "themeService":Lcom/android/server/ThemeService;
    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "themeService":Lcom/android/server/ThemeService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    :catch_101c
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v97, v98

    .end local v98    # "themeService":Lcom/android/server/ThemeService;
    .restart local v97    # "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v99, v100

    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .local v99, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_c94

    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "themeService":Lcom/android/server/ThemeService;
    .end local v99    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "themeService":Lcom/android/server/ThemeService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1025
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v97, v98

    .end local v98    # "themeService":Lcom/android/server/ThemeService;
    .restart local v97    # "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v29, v30

    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v99, v100

    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_c94
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1646
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1647
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1648
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1647
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1649
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1651
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1645
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1655
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1656
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    return-void
.end method
