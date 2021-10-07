.class Lcom/android/server/am/ActivityManagerService$23;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$report"    # Ljava/lang/String;
    .param p4, "val$sb"    # Ljava/lang/StringBuilder;
    .param p5, "val$dropboxTag"    # Ljava/lang/String;
    .param p6, "val$dataFile"    # Ljava/io/File;
    .param p7, "val$crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "val$dbox"    # Landroid/os/DropBoxManager;

    .prologue
    .line 14134
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$23;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$23;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$23;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v11, 0x0

    .line 14137
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$report:Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 14138
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$23;->val$report:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14141
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "logcat_for_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 14142
    .local v8, "setting":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 14143
    .local v4, "lines":I
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/high16 v10, 0x30000

    sub-int v9, v10, v9

    .line 14144
    mul-int/lit8 v10, v4, 0x64

    .line 14143
    sub-int v6, v9, v10

    .line 14146
    .local v6, "maxDataFileSize":I
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dataFile:Ljava/io/File;

    if-eqz v9, :cond_50

    if-lez v6, :cond_50

    .line 14148
    :try_start_42
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dataFile:Ljava/io/File;

    .line 14149
    const-string/jumbo v11, "\n\n[[TRUNCATED]]"

    .line 14148
    invoke-static {v10, v6, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_50} :catch_137

    .line 14154
    :cond_50
    :goto_50
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v9, :cond_63

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v9, :cond_63

    .line 14155
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$23;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14158
    :cond_63
    if-lez v4, :cond_129

    .line 14159
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14162
    const/4 v2, 0x0

    .line 14164
    .local v2, "input":Ljava/io/InputStreamReader;
    :try_start_6e
    new-instance v9, Ljava/lang/ProcessBuilder;

    const/16 v10, 0x11

    new-array v10, v10, [Ljava/lang/String;

    .line 14165
    const-string/jumbo v11, "/system/bin/timeout"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "-k"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "15s"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const-string/jumbo v11, "10s"

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 14166
    const-string/jumbo v11, "/system/bin/logcat"

    const/4 v12, 0x4

    aput-object v11, v10, v12

    const-string/jumbo v11, "-v"

    const/4 v12, 0x5

    aput-object v11, v10, v12

    const-string/jumbo v11, "threadtime"

    const/4 v12, 0x6

    aput-object v11, v10, v12

    const-string/jumbo v11, "-b"

    const/4 v12, 0x7

    aput-object v11, v10, v12

    const-string/jumbo v11, "events"

    const/16 v12, 0x8

    aput-object v11, v10, v12

    const-string/jumbo v11, "-b"

    const/16 v12, 0x9

    aput-object v11, v10, v12

    const-string/jumbo v11, "system"

    const/16 v12, 0xa

    aput-object v11, v10, v12

    .line 14167
    const-string/jumbo v11, "-b"

    const/16 v12, 0xb

    aput-object v11, v10, v12

    const-string/jumbo v11, "main"

    const/16 v12, 0xc

    aput-object v11, v10, v12

    const-string/jumbo v11, "-b"

    const/16 v12, 0xd

    aput-object v11, v10, v12

    const-string/jumbo v11, "crash"

    const/16 v12, 0xe

    aput-object v11, v10, v12

    const-string/jumbo v11, "-t"

    const/16 v12, 0xf

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    aput-object v11, v10, v12

    .line 14164
    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 14168
    const/4 v10, 0x1

    .line 14164
    invoke-virtual {v9, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_ef} :catch_16d
    .catchall {:try_start_6e .. :try_end_ef} :catchall_161

    move-result-object v5

    .line 14170
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_f0
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f7} :catch_171
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_161

    .line 14171
    :goto_f7
    :try_start_f7
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fe} :catch_16f
    .catchall {:try_start_f7 .. :try_end_fe} :catchall_161

    .line 14172
    :goto_fe
    :try_start_fe
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_107} :catch_16d
    .catchall {:try_start_fe .. :try_end_107} :catchall_161

    .line 14175
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    const/16 v9, 0x2000

    :try_start_109
    new-array v0, v9, [C

    .line 14176
    .local v0, "buf":[C
    :goto_10b
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    .local v7, "num":I
    if-lez v7, :cond_157

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_117} :catch_118
    .catchall {:try_start_109 .. :try_end_117} :catchall_16a

    goto :goto_10b

    .line 14177
    .end local v0    # "buf":[C
    .end local v7    # "num":I
    :catch_118
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 14178
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    :goto_11a
    :try_start_11a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Error running logcat"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_124
    .catchall {:try_start_11a .. :try_end_124} :catchall_161

    .line 14180
    if-eqz v2, :cond_129

    :try_start_126
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_15f

    .line 14184
    .end local v1    # "e":Ljava/io/IOException;
    :cond_129
    :goto_129
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dropboxTag:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$23;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 14136
    return-void

    .line 14150
    :catch_137
    move-exception v1

    .line 14151
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$23;->val$dataFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_50

    .line 14180
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    .restart local v7    # "num":I
    :cond_157
    if-eqz v3, :cond_129

    :try_start_159
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_15d

    goto :goto_129

    :catch_15d
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_129

    .end local v0    # "buf":[C
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v7    # "num":I
    :catch_15f
    move-exception v1

    goto :goto_129

    .line 14179
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_161
    move-exception v9

    .line 14180
    :goto_162
    if-eqz v2, :cond_167

    :try_start_164
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_168

    .line 14179
    :cond_167
    :goto_167
    throw v9

    .line 14180
    :catch_168
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_167

    .line 14179
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catchall_16a
    move-exception v9

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v2, "input":Ljava/io/InputStreamReader;
    goto :goto_162

    .line 14177
    .end local v5    # "logcat":Ljava/lang/Process;
    .local v2, "input":Ljava/io/InputStreamReader;
    :catch_16d
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_11a

    .line 14171
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catch_16f
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_fe

    .line 14170
    .end local v1    # "e":Ljava/io/IOException;
    :catch_171
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_f7
.end method
