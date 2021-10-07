.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullTransportBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSchedule:Z

.field mUserInitiated:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V
    .registers 18
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p8, "userInitiated"    # Z

    .prologue
    .line 4393
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 4397
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 4398
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 4399
    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4400
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4401
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 4402
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 4403
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4404
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 4406
    const/4 v4, 0x0

    array-length v5, p3

    :goto_25
    if-ge v4, v5, :cond_8c

    aget-object v3, p3, v4

    .line 4408
    .local v3, "pkg":Ljava/lang/String;
    :try_start_29
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 4409
    const/16 v7, 0x40

    .line 4408
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 4410
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 4418
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4419
    const/16 v7, -0x7d1

    .line 4418
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4406
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 4421
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_45
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 4428
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4429
    const/16 v7, -0x7d1

    .line 4428
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_52} :catch_53

    goto :goto_42

    .line 4443
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_53
    move-exception v1

    .line 4444
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found; ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 4431
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_76
    :try_start_76
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 4438
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4439
    const/16 v7, -0x7d1

    .line 4438
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_42

    .line 4442
    :cond_86
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_76 .. :try_end_8b} :catch_53

    goto :goto_42

    .line 4396
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_8c
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4719
    if-eqz p1, :cond_1b

    .line 4720
    aget-object v2, p1, v3

    if-eqz v2, :cond_10

    .line 4721
    aget-object v1, p1, v3

    .line 4722
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v3

    .line 4724
    :try_start_d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1c

    .line 4729
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_10
    :goto_10
    aget-object v2, p1, v5

    if-eqz v2, :cond_1b

    .line 4730
    aget-object v1, p1, v5

    .line 4731
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v5

    .line 4733
    :try_start_18
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_27

    .line 4718
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1b
    :goto_1b
    return-void

    .line 4725
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1c
    move-exception v0

    .line 4726
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 4734
    .end local v0    # "e":Ljava/io/IOException;
    :catch_27
    move-exception v0

    .line 4735
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public run()V
    .registers 38

    .prologue
    .line 4456
    const/16 v17, 0x0

    .line 4459
    .local v17, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v32, 0x0

    .line 4461
    .local v32, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v8, 0x0

    .line 4462
    .local v8, "backoff":J
    const/4 v10, 0x0

    .line 4465
    .local v10, "backupRunStatus":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v33, v0

    if-eqz v33, :cond_dd

    .line 4476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v33 .. v34}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v25

    .line 4477
    .local v25, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v25, :cond_1c8

    .line 4478
    const-string/jumbo v33, "PFTBT"

    const-string/jumbo v34, "Transport not present; full data backup not performed"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_44} :catch_458
    .catchall {:try_start_7 .. :try_end_44} :catchall_59b

    .line 4479
    const/16 v10, -0x3e8

    .line 4691
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Full backup completed with status: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4695
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4696
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    if-eqz v33, :cond_8c

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4702
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 4703
    :try_start_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_1c5

    monitor-exit v34

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v33, v0

    if-eqz v33, :cond_c4

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4713
    :cond_c4
    const-string/jumbo v33, "BackupManagerService"

    const-string/jumbo v34, "Full data backup pass finished."

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4480
    return-void

    .line 4468
    .end local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_dd
    :try_start_dd
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "full backup requested but e="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 4469
    const-string/jumbo v35, " p="

    .line 4468
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 4469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v35, v0

    .line 4468
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 4469
    const-string/jumbo v35, "; ignoring"

    .line 4468
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_129} :catch_458
    .catchall {:try_start_dd .. :try_end_129} :catchall_59b

    .line 4472
    const/16 v10, -0x7d1

    .line 4691
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Full backup completed with status: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4695
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4696
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    if-eqz v33, :cond_171

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4702
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 4703
    :try_start_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_18c
    .catchall {:try_start_17e .. :try_end_18c} :catchall_1c2

    monitor-exit v34

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1a9

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4713
    :cond_1a9
    const-string/jumbo v33, "BackupManagerService"

    const-string/jumbo v34, "Full data backup pass finished."

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4473
    return-void

    .line 4702
    :catchall_1c2
    move-exception v33

    monitor-exit v34

    throw v33

    .restart local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_1c5
    move-exception v33

    monitor-exit v34

    throw v33

    .line 4484
    :cond_1c8
    :try_start_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4485
    .local v6, "N":I
    const/16 v33, 0x2000

    move/from16 v0, v33

    new-array v13, v0, [B

    .line 4486
    .local v13, "buffer":[B
    const/16 v20, 0x0

    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v20, "i":I
    :goto_1da
    move/from16 v0, v20

    if-ge v0, v6, :cond_785

    .line 4487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 4488
    .local v14, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4490
    .local v24, "packageName":Ljava/lang/String;
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Initiating full-data transport backup of "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    const/16 v33, 0xb18

    move/from16 v0, v33

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4494
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v32

    .line 4497
    .local v32, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3e6

    const/16 v19, 0x1

    .line 4499
    .local v19, "flags":I
    :goto_227
    const/16 v33, 0x0

    aget-object v33, v32, v33

    .line 4498
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-interface {v0, v14, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v7

    .line 4500
    .local v7, "backupPackageStatus":I
    if-nez v7, :cond_30b

    .line 4503
    const/16 v33, 0x0

    aget-object v33, v32, v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4504
    const/16 v33, 0x0

    const/16 v34, 0x0

    aput-object v33, v32, v34

    .line 4507
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 4509
    .local v17, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v33, 0x1

    aget-object v33, v17, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    invoke-direct {v11, v0, v1, v14, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;)V

    .line 4512
    .local v11, "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    const/16 v33, 0x1

    aget-object v33, v17, v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4513
    const/16 v33, 0x0

    const/16 v34, 0x1

    aput-object v33, v17, v34

    .line 4517
    new-instance v33, Ljava/lang/Thread;

    const-string/jumbo v34, "package-backup-bridge"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Thread;->start()V

    .line 4522
    new-instance v21, Ljava/io/FileInputStream;

    .line 4523
    const/16 v33, 0x0

    aget-object v33, v17, v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v33

    .line 4522
    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4524
    .local v21, "in":Ljava/io/FileInputStream;
    new-instance v23, Ljava/io/FileOutputStream;

    .line 4525
    const/16 v33, 0x1

    aget-object v33, v32, v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v33

    .line 4524
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4526
    .local v23, "out":Ljava/io/FileOutputStream;
    const-wide/16 v30, 0x0

    .line 4527
    .local v30, "totalRead":J
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v26

    .line 4529
    .local v26, "preflightResult":J
    const-wide/16 v34, 0x0

    cmp-long v33, v26, v34

    if-gez v33, :cond_3ea

    .line 4535
    move-wide/from16 v0, v26

    long-to-int v7, v0

    .line 4573
    :cond_2a4
    :goto_2a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v33

    if-nez v33, :cond_551

    .line 4574
    const/16 v7, -0x3e8

    .line 4575
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V

    .line 4596
    :cond_2b5
    :goto_2b5
    if-nez v7, :cond_2be

    .line 4598
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v12

    .line 4599
    .local v12, "backupRunnerResult":I
    if-eqz v12, :cond_2be

    .line 4602
    move v7, v12

    .line 4615
    .end local v12    # "backupRunnerResult":I
    :cond_2be
    if-eqz v7, :cond_2eb

    .line 4616
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Error "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " backing up "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    :cond_2eb
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v8

    .line 4624
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Transport suggested backoff="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v21    # "in":Ljava/io/FileInputStream;
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .end local v26    # "preflightResult":J
    .end local v30    # "totalRead":J
    :cond_30b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v33, v0

    if-eqz v33, :cond_326

    .line 4632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 4635
    :cond_326
    const/16 v33, -0x3ea

    move/from16 v0, v33

    if-ne v7, v0, :cond_55b

    .line 4636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    .line 4637
    const/16 v34, -0x3ea

    .line 4636
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4639
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Transport rejected backup of "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 4640
    const-string/jumbo v35, ", skipping"

    .line 4639
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4642
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v24, v33, v34

    .line 4643
    const-string/jumbo v34, "transport rejected"

    const/16 v35, 0x1

    aput-object v34, v33, v35

    .line 4642
    const/16 v34, 0xb19

    move/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4676
    :goto_37e
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4677
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4678
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    if-eqz v33, :cond_3e2

    .line 4679
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Unbinding agent in "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "unbinding "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_3d1
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_3d1} :catch_458
    .catchall {:try_start_1c8 .. :try_end_3d1} :catchall_59b

    .line 4682
    :try_start_3d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v33

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    invoke-interface/range {v33 .. v34}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_3e2
    .catch Landroid/os/RemoteException; {:try_start_3d1 .. :try_end_3e2} :catch_826
    .catch Ljava/lang/Exception; {:try_start_3d1 .. :try_end_3e2} :catch_458
    .catchall {:try_start_3d1 .. :try_end_3e2} :catchall_59b

    .line 4486
    :cond_3e2
    :goto_3e2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1da

    .line 4497
    .end local v7    # "backupPackageStatus":I
    .end local v19    # "flags":I
    :cond_3e6
    const/16 v19, 0x0

    .restart local v19    # "flags":I
    goto/16 :goto_227

    .line 4537
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "in":Ljava/io/FileInputStream;
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    .restart local v26    # "preflightResult":J
    .restart local v30    # "totalRead":J
    :cond_3ea
    const/16 v22, 0x0

    .line 4539
    .local v22, "nRead":I
    :goto_3ec
    :try_start_3ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v33

    if-nez v33, :cond_501

    .line 4541
    const-string/jumbo v33, "PFTBT"

    const-string/jumbo v34, "Full backup task told to stop"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    :cond_401
    const/16 v33, -0x3ed

    move/from16 v0, v33

    if-ne v7, v0, :cond_2a4

    .line 4563
    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v28

    .line 4564
    .local v28, "quota":J
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Package hit quota limit in-flight "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 4565
    const-string/jumbo v35, ": "

    .line 4564
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 4565
    const-string/jumbo v35, " of "

    .line 4564
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    move-wide/from16 v0, v30

    move-wide/from16 v2, v28

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V
    :try_end_456
    .catch Ljava/lang/Exception; {:try_start_3ec .. :try_end_456} :catch_458
    .catchall {:try_start_3ec .. :try_end_456} :catchall_59b

    goto/16 :goto_2a4

    .line 4686
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v21    # "in":Ljava/io/FileInputStream;
    .end local v22    # "nRead":I
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v26    # "preflightResult":J
    .end local v28    # "quota":J
    .end local v30    # "totalRead":J
    .end local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_458
    move-exception v16

    .line 4687
    .local v16, "e":Ljava/lang/Exception;
    const/16 v10, -0x3e8

    .line 4688
    :try_start_45b
    const-string/jumbo v33, "PFTBT"

    const-string/jumbo v34, "Exception trying full transport backup"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46a
    .catchall {:try_start_45b .. :try_end_46a} :catchall_59b

    .line 4691
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Full backup completed with status: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4695
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4696
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4b0

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4702
    :cond_4b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 4703
    :try_start_4bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_4cb
    .catchall {:try_start_4bd .. :try_end_4cb} :catchall_820

    monitor-exit v34

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4e8

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4713
    :cond_4e8
    const-string/jumbo v33, "BackupManagerService"

    const-string/jumbo v34, "Full data backup pass finished."

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4454
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_500
    return-void

    .line 4545
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "flags":I
    .restart local v20    # "i":I
    .restart local v21    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "nRead":I
    .restart local v23    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v26    # "preflightResult":J
    .restart local v30    # "totalRead":J
    .restart local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_501
    :try_start_501
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v22

    .line 4549
    if-lez v22, :cond_54b

    .line 4550
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move/from16 v2, v22

    invoke-virtual {v0, v13, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4551
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v7

    .line 4552
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v30, v30, v34

    .line 4553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    if-eqz v33, :cond_54b

    const-wide/16 v34, 0x0

    cmp-long v33, v26, v34

    if-lez v33, :cond_54b

    .line 4554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    .line 4555
    new-instance v34, Landroid/app/backup/BackupProgress;

    move-object/from16 v0, v34

    move-wide/from16 v1, v26

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 4554
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    .line 4558
    :cond_54b
    if-lez v22, :cond_401

    .line 4559
    if-nez v7, :cond_401

    goto/16 :goto_3ec

    .line 4581
    .end local v22    # "nRead":I
    :cond_551
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v18

    .line 4582
    .local v18, "finishResult":I
    if-nez v7, :cond_2b5

    .line 4583
    move/from16 v7, v18

    goto/16 :goto_2b5

    .line 4645
    .end local v11    # "backupRunner":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    .end local v17    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v18    # "finishResult":I
    .end local v21    # "in":Ljava/io/FileInputStream;
    .end local v23    # "out":Ljava/io/FileOutputStream;
    .end local v26    # "preflightResult":J
    .end local v30    # "totalRead":J
    :cond_55b
    const/16 v33, -0x3ed

    move/from16 v0, v33

    if-ne v7, v0, :cond_633

    .line 4646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    .line 4647
    const/16 v34, -0x3ed

    .line 4646
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4649
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Transport quota exceeded for package: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4650
    const/16 v33, 0xb1d

    move/from16 v0, v33

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_599
    .catch Ljava/lang/Exception; {:try_start_501 .. :try_end_599} :catch_458
    .catchall {:try_start_501 .. :try_end_599} :catchall_59b

    goto/16 :goto_37e

    .line 4689
    .end local v6    # "N":I
    .end local v7    # "backupPackageStatus":I
    .end local v13    # "buffer":[B
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_59b
    move-exception v33

    .line 4691
    const-string/jumbo v34, "PFTBT"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "Full backup completed with status: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4695
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4696
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v34, v0

    if-eqz v34, :cond_5e2

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4702
    :cond_5e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 4703
    :try_start_5ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_5fd
    .catchall {:try_start_5ef .. :try_end_5fd} :catchall_823

    monitor-exit v34

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v34, v0

    if-eqz v34, :cond_61a

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4713
    :cond_61a
    const-string/jumbo v34, "BackupManagerService"

    const-string/jumbo v35, "Full data backup pass finished."

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4689
    throw v33

    .line 4654
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v19    # "flags":I
    .restart local v20    # "i":I
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_633
    const/16 v33, -0x3eb

    move/from16 v0, v33

    if-ne v7, v0, :cond_680

    .line 4655
    :try_start_639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    .line 4656
    const/16 v34, -0x3eb

    .line 4655
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4657
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Application failure for package: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    const/16 v33, 0xb07

    move/from16 v0, v33

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_37e

    .line 4661
    :cond_680
    if-eqz v7, :cond_75c

    .line 4662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    .line 4663
    const/16 v34, -0x3e8

    .line 4662
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4664
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Transport failed; aborting backup: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0xb1a

    move/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_6c0
    .catch Ljava/lang/Exception; {:try_start_639 .. :try_end_6c0} :catch_458
    .catchall {:try_start_639 .. :try_end_6c0} :catchall_59b

    .line 4667
    const/16 v10, -0x3e8

    .line 4691
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Full backup completed with status: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4695
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4696
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    if-eqz v33, :cond_708

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4702
    :cond_708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 4703
    :try_start_715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_723
    .catchall {:try_start_715 .. :try_end_723} :catchall_759

    monitor-exit v34

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v33, v0

    if-eqz v33, :cond_740

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4713
    :cond_740
    const-string/jumbo v33, "BackupManagerService"

    const-string/jumbo v34, "Full data backup pass finished."

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4668
    return-void

    .line 4702
    :catchall_759
    move-exception v33

    monitor-exit v34

    throw v33

    .line 4671
    :cond_75c
    :try_start_75c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    .line 4672
    const/16 v34, 0x0

    .line 4671
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4673
    const/16 v33, 0xb1b

    move/from16 v0, v33

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_783
    .catch Ljava/lang/Exception; {:try_start_75c .. :try_end_783} :catch_458
    .catchall {:try_start_75c .. :try_end_783} :catchall_59b

    goto/16 :goto_37e

    .line 4691
    .end local v7    # "backupPackageStatus":I
    .end local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v19    # "flags":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_785
    const-string/jumbo v33, "PFTBT"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Full backup completed with status: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Landroid/app/backup/IBackupObserver;I)V

    .line 4695
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4696
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    if-eqz v33, :cond_7cb

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 4702
    :cond_7cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 4703
    :try_start_7d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_7e6
    .catchall {:try_start_7d8 .. :try_end_7e6} :catchall_81d

    monitor-exit v34

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move/from16 v33, v0

    if-eqz v33, :cond_803

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 4713
    :cond_803
    const-string/jumbo v33, "BackupManagerService"

    const-string/jumbo v34, "Full data backup pass finished."

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_500

    .line 4702
    :catchall_81d
    move-exception v33

    monitor-exit v34

    throw v33

    .end local v6    # "N":I
    .end local v13    # "buffer":[B
    .end local v20    # "i":I
    .end local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v16    # "e":Ljava/lang/Exception;
    :catchall_820
    move-exception v33

    monitor-exit v34

    throw v33

    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_823
    move-exception v33

    monitor-exit v34

    throw v33

    .line 4683
    .restart local v6    # "N":I
    .restart local v7    # "backupPackageStatus":I
    .restart local v13    # "buffer":[B
    .restart local v14    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v19    # "flags":I
    .restart local v20    # "i":I
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v25    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v32    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_826
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    goto/16 :goto_3e2
.end method

.method public setRunning(Z)V
    .registers 3
    .param p1, "running"    # Z

    .prologue
    .line 4450
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mKeepRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4449
    return-void
.end method
