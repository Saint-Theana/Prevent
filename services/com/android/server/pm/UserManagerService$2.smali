.class Lcom/android/server/pm/UserManagerService$2;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$effective:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "val$effective"    # Landroid/os/Bundle;
    .param p3, "val$userId"    # I

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$2;->val$effective:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/server/pm/UserManagerService$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$2;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->-get0(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$2;->val$effective:Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->-get7()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/UserManagerService$2;->val$userId:I

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 1355
    :goto_11
    return-void

    .line 1358
    :catch_12
    move-exception v0

    .line 1359
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
