.class Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupObbConnection"
.end annotation


# instance fields
.field volatile mService:Lcom/android/internal/backup/IObbBackupService;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 3476
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3476
    return-void
.end method

.method private waitForConnection()V
    .registers 3

    .prologue
    .line 3535
    monitor-enter p0

    .line 3536
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v1, :cond_b

    .line 3539
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    .line 3540
    :catch_9
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_b
    monitor-exit p0

    .line 3534
    return-void

    .line 3535
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .registers 12
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 3494
    const/4 v3, 0x0

    .line 3495
    .local v3, "success":Z
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    .line 3497
    const/4 v2, 0x0

    .line 3499
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 3500
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v4

    .line 3501
    .local v4, "token":I
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v6, 0x493e0

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 3502
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v7, v2, v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v5, v6, v7, v4, v8}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 3503
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v5, v6, p2}, Lcom/android/server/backup/BackupManagerService;->-wrap16(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 3504
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_5b
    .catchall {:try_start_5 .. :try_end_33} :catchall_9d

    move-result v3

    .line 3509
    .local v3, "success":Z
    :try_start_34
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3510
    if-eqz v2, :cond_4f

    .line 3511
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_44

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3512
    :cond_44
    const/4 v5, 0x1

    aget-object v5, v2, v5

    if-eqz v5, :cond_4f

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4f} :catch_50

    .line 3518
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "success":Z
    .end local v4    # "token":I
    :cond_4f
    :goto_4f
    return v3

    .line 3514
    .restart local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "success":Z
    .restart local v4    # "token":I
    :catch_50
    move-exception v0

    .line 3515
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "I/O error closing down OBB backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 3505
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v4    # "token":I
    .local v3, "success":Z
    :catch_5b
    move-exception v1

    .line 3506
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5c
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to back up OBBs for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_5c .. :try_end_76} :catchall_9d

    .line 3509
    :try_start_76
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3510
    if-eqz v2, :cond_4f

    .line 3511
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_86

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3512
    :cond_86
    const/4 v5, 0x1

    aget-object v5, v2, v5

    if-eqz v5, :cond_4f

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_91} :catch_92

    goto :goto_4f

    .line 3514
    :catch_92
    move-exception v0

    .line 3515
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "I/O error closing down OBB backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 3507
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_9d
    move-exception v5

    .line 3509
    :try_start_9e
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 3510
    if-eqz v2, :cond_b9

    .line 3511
    const/4 v6, 0x0

    aget-object v6, v2, v6

    if-eqz v6, :cond_ae

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3512
    :cond_ae
    const/4 v6, 0x1

    aget-object v6, v2, v6

    if-eqz v6, :cond_b9

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_b9} :catch_ba

    .line 3507
    :cond_b9
    :goto_b9
    throw v5

    .line 3514
    :catch_ba
    move-exception v0

    .line 3515
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "I/O error closing down OBB backup"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b9
.end method

.method public establish()V
    .registers 6

    .prologue
    .line 3482
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    .line 3483
    const-string/jumbo v3, "com.android.sharedstoragebackup"

    .line 3484
    const-string/jumbo v4, "com.android.sharedstoragebackup.ObbBackupService"

    .line 3482
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3485
    .local v0, "obbIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 3486
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    .line 3485
    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 3480
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3548
    monitor-enter p0

    .line 3549
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3552
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 3547
    return-void

    .line 3548
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 3558
    monitor-enter p0

    .line 3559
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 3561
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 3557
    return-void

    .line 3558
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 30
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 3524
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    .line 3527
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    .line 3523
    :goto_1c
    return-void

    .line 3529
    :catch_1d
    move-exception v2

    .line 3530
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to restore OBBs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public tearDown()V
    .registers 2

    .prologue
    .line 3490
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3489
    return-void
.end method
