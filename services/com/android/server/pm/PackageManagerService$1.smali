.class Lcom/android/server/pm/PackageManagerService$1;
.super Landroid/os/storage/StorageEventListener;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 11
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 1902
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1903
    const-string/jumbo v3, "PackageManager"

    const-string/jumbo v4, "Forgetting internal storage is probably a mistake; ignoring"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    return-void

    .line 1908
    :cond_10
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1909
    :try_start_15
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1910
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ps$iterator":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1911
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " because volume was forgotten"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    new-instance v6, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    .line 1913
    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 1912
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_63
    .catchall {:try_start_15 .. :try_end_63} :catchall_64

    goto :goto_21

    .line 1908
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "ps$iterator":Ljava/util/Iterator;
    :catchall_64
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1916
    .restart local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v2    # "ps$iterator":Ljava/util/Iterator;
    :cond_67
    :try_start_67
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->onVolumeForgotten(Ljava/lang/String;)V

    .line 1917
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->writeLPr()V
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_64

    monitor-exit v4

    .line 1901
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 14
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1861
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v4, v8, :cond_42

    .line 1862
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    .line 1863
    .local v3, "volumeUuid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1867
    .local v2, "volCurStateMounted":Z
    if-eqz v3, :cond_26

    .line 1868
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 1869
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1870
    .local v0, "currentVol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_26

    iget v4, v0, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v7, :cond_26

    .line 1871
    const/4 v2, 0x1

    .line 1873
    .end local v0    # "currentVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_26
    iget v4, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v7, :cond_56

    if-eqz v2, :cond_56

    .line 1877
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap37(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1878
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap36(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1882
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageInstallerService;->onPrivateVolumeMounted(Ljava/lang/String;)V

    .line 1884
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 1891
    .end local v2    # "volCurStateMounted":Z
    .end local v3    # "volumeUuid":Ljava/lang/String;
    :cond_42
    :goto_42
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v4, :cond_55

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1892
    iget v4, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v7, :cond_60

    .line 1893
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v8, v6}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1860
    :cond_55
    :goto_55
    return-void

    .line 1886
    .restart local v2    # "volCurStateMounted":Z
    .restart local v3    # "volumeUuid":Ljava/lang/String;
    :cond_56
    iget v4, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v9, :cond_42

    .line 1887
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap44(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    goto :goto_42

    .line 1894
    .end local v2    # "volCurStateMounted":Z
    .end local v3    # "volumeUuid":Ljava/lang/String;
    :cond_60
    iget v4, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v9, :cond_55

    .line 1895
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v6, v6}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_55
.end method
