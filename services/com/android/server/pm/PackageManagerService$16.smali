.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "val$userId"    # I
    .param p4, "val$packageName"    # Ljava/lang/String;
    .param p5, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 16990
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 16992
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 16993
    const/4 v1, 0x3

    .line 16997
    .local v1, "flags":I
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v6, 0x103

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap23(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    .line 16998
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v6, 0x203

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap23(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_34

    monitor-exit v3

    .line 17000
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 17001
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_33

    .line 17003
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_33} :catch_37

    .line 16991
    :cond_33
    :goto_33
    return-void

    .line 16992
    :catchall_34
    move-exception v2

    monitor-exit v3

    throw v2

    .line 17004
    :catch_37
    move-exception v0

    .line 17005
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method
