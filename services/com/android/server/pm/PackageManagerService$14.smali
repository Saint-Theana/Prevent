.class Lcom/android/server/pm/PackageManagerService$14;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 16730
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 16732
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v4, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16734
    const/4 v2, 0x0

    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_start_9
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    .line 16735
    const-string/jumbo v7, "clearApplicationUserData"

    .line 16734
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v2

    .line 16736
    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_19} :catch_39
    .catchall {:try_start_9 .. :try_end_19} :catchall_7b

    .line 16737
    :try_start_19
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap3(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_36

    move-result v3

    .local v3, "succeeded":Z
    :try_start_23
    monitor-exit v6

    .line 16739
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2e} :catch_39
    .catchall {:try_start_23 .. :try_end_2e} :catchall_7b

    .line 16740
    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_47

    :cond_33
    :goto_33
    if-eqz v5, :cond_55

    throw v5

    .line 16736
    .end local v3    # "succeeded":Z
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v6

    throw v4
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_39} :catch_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_7b

    .line 16740
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :catch_39
    move-exception v4

    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_3f
    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_49

    :cond_44
    :goto_44
    if-eqz v5, :cond_54

    throw v5

    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :catch_47
    move-exception v5

    goto :goto_33

    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :catch_49
    move-exception v6

    if-nez v5, :cond_4e

    move-object v5, v6

    goto :goto_44

    :cond_4e
    if-eq v5, v6, :cond_44

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_44

    :cond_54
    throw v4

    .line 16741
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :cond_55
    if-eqz v3, :cond_64

    .line 16744
    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 16743
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 16745
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_64

    .line 16746
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 16749
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_64
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v4, :cond_6f

    .line 16751
    :try_start_68
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6f} :catch_70

    .line 16731
    :cond_6f
    :goto_6f
    return-void

    .line 16752
    :catch_70
    move-exception v1

    .line 16753
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 16740
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :catchall_7b
    move-exception v4

    goto :goto_3f
.end method
