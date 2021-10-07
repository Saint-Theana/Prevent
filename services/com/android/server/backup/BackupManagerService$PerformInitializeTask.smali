.class Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformInitializeTask"
.end annotation


# instance fields
.field mQueue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9081
    .local p2, "transportNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9082
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    .line 9081
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 9087
    :try_start_0
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "transportName$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_139

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 9088
    .local v8, "transportName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v10, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v7

    .line 9089
    .local v7, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v7, :cond_4e

    .line 9090
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Requested init for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " but not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c
    .catchall {:try_start_0 .. :try_end_3b} :catchall_cf

    goto :goto_6

    .line 9128
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "transportName":Ljava/lang/String;
    .end local v9    # "transportName$iterator":Ljava/util/Iterator;
    :catch_3c
    move-exception v2

    .line 9129
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3d
    const-string/jumbo v10, "BackupManagerService"

    const-string/jumbo v11, "Unexpected error performing init"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_cf

    .line 9132
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9085
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void

    .line 9094
    .restart local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "transportName":Ljava/lang/String;
    .restart local v9    # "transportName$iterator":Ljava/util/Iterator;
    :cond_4e
    :try_start_4e
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9095
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xb05

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 9096
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 9097
    .local v4, "startRealtime":J
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v6

    .line 9099
    .local v6, "status":I
    if-nez v6, :cond_7f

    .line 9100
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v6

    .line 9104
    :cond_7f
    if-nez v6, :cond_db

    .line 9105
    const-string/jumbo v10, "BackupManagerService"

    const-string/jumbo v11, "Device init successful"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    long-to-int v3, v10

    .line 9107
    .local v3, "millis":I
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v11, 0xb0b

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9108
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v12, v12, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 9109
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/16 v11, 0xb09

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9110
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, v10, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_c6} :catch_3c
    .catchall {:try_start_4e .. :try_end_c6} :catchall_cf

    .line 9111
    :try_start_c6
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v8}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_d8

    :try_start_cc
    monitor-exit v11
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cd} :catch_3c
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cf

    goto/16 :goto_6

    .line 9130
    .end local v3    # "millis":I
    .end local v4    # "startRealtime":J
    .end local v6    # "status":I
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "transportName":Ljava/lang/String;
    .end local v9    # "transportName$iterator":Ljava/util/Iterator;
    :catchall_cf
    move-exception v10

    .line 9132
    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9130
    throw v10

    .line 9110
    .restart local v3    # "millis":I
    .restart local v4    # "startRealtime":J
    .restart local v6    # "status":I
    .restart local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v8    # "transportName":Ljava/lang/String;
    .restart local v9    # "transportName$iterator":Ljava/util/Iterator;
    :catchall_d8
    move-exception v10

    :try_start_d9
    monitor-exit v11

    throw v10

    .line 9116
    .end local v3    # "millis":I
    :cond_db
    const-string/jumbo v10, "BackupManagerService"

    const-string/jumbo v11, "Transport error in initializeDevice()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9117
    const-string/jumbo v10, "(initialize)"

    const/16 v11, 0xb06

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 9118
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, v10, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f1} :catch_3c
    .catchall {:try_start_d9 .. :try_end_f1} :catchall_cf

    .line 9119
    :try_start_f1
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v8}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_f1 .. :try_end_f7} :catchall_136

    :try_start_f7
    monitor-exit v11

    .line 9122
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v0

    .line 9123
    .local v0, "delay":J
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Init failed on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " resched in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9124
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v10}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v10

    .line 9125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v0

    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 9124
    const/4 v14, 0x0

    invoke-virtual {v10, v14, v12, v13, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_6

    .line 9118
    .end local v0    # "delay":J
    :catchall_136
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_139} :catch_3c
    .catchall {:try_start_f7 .. :try_end_139} :catchall_cf

    .line 9132
    .end local v4    # "startRealtime":J
    .end local v6    # "status":I
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "transportName":Ljava/lang/String;
    :cond_139
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_4d
.end method
