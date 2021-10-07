.class Lcom/android/server/pm/PackageManagerService$4;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$volumeUuid"    # Ljava/lang/String;
    .param p3, "val$freeStorageSize"    # J
    .param p5, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 3510
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$4;->val$volumeUuid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$freeStorageSize:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 3512
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3513
    const/4 v2, 0x1

    .line 3514
    .local v2, "success":Z
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3516
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$volumeUuid:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/pm/PackageManagerService$4;->val$freeStorageSize:J

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V
    :try_end_18
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_d .. :try_end_18} :catch_24
    .catchall {:try_start_d .. :try_end_18} :catchall_41

    :goto_18
    monitor-exit v4

    .line 3522
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_23

    .line 3524
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_44

    .line 3511
    :cond_23
    :goto_23
    return-void

    .line 3517
    :catch_24
    move-exception v1

    .line 3518
    .local v1, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :try_start_25
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t clear application caches: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_41

    .line 3519
    const/4 v2, 0x0

    goto :goto_18

    .line 3514
    .end local v1    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :catchall_41
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3525
    :catch_44
    move-exception v0

    .line 3526
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PackageManager"

    const-string/jumbo v4, "RemoveException when invoking call back"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
