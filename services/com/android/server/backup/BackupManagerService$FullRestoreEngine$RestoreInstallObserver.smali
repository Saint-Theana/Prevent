.class Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreInstallObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mPackageName:Ljava/lang/String;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    .prologue
    .line 5747
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 5748
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5747
    return-void
.end method


# virtual methods
.method getResult()I
    .registers 2

    .prologue
    .line 5769
    iget v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mResult:I

    return v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 5775
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5776
    :try_start_3
    iput p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mResult:I

    .line 5777
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    .line 5778
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5779
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 5774
    return-void

    .line 5775
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 5753
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5754
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 5752
    return-void

    .line 5753
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitForCompletion()V
    .registers 4

    .prologue
    .line 5759
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 5760
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v1

    if-nez v1, :cond_13

    .line 5762
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_3

    .line 5763
    :catch_11
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_13
    monitor-exit v2

    .line 5758
    return-void

    .line 5759
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method
