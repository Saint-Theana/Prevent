.class Lcom/android/server/pm/UserManagerService$3;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$newRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$prevRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "val$userId"    # I
    .param p3, "val$newRestrictionsFinal"    # Landroid/os/Bundle;
    .param p4, "val$prevRestrictionsFinal"    # Landroid/os/Bundle;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1387
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 1386
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1390
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 1391
    :try_start_16
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 1392
    .local v1, "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_3e

    monitor-exit v3

    .line 1394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    array-length v2, v1

    if-ge v0, v2, :cond_41

    .line 1395
    aget-object v2, v1, v0

    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    .line 1396
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 1395
    invoke-interface {v2, v3, v4, v5}, Landroid/os/UserManagerInternal$UserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1394
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1390
    .end local v0    # "i":I
    .end local v1    # "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1385
    .restart local v0    # "i":I
    .restart local v1    # "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    :cond_41
    return-void
.end method
