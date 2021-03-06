.class Lcom/android/server/accounts/AccountManagerService$18;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$callback:Landroid/os/RemoteCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "val$account"    # Landroid/accounts/Account;
    .param p3, "val$uid"    # I
    .param p4, "val$packageName"    # Ljava/lang/String;
    .param p5, "val$callback"    # Landroid/os/RemoteCallback;

    .prologue
    .line 3567
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$account:Landroid/accounts/Account;

    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    return-void
.end method

.method private handleAuthenticatorResponse(Z)V
    .registers 8
    .param p1, "accessGranted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3584
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$account:Landroid/accounts/Account;

    .line 3585
    const-string/jumbo v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget v5, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    .line 3584
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->-wrap8(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3585
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$packageName:Ljava/lang/String;

    .line 3586
    iget v4, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 3584
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 3587
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    if-eqz v1, :cond_32

    .line 3588
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3589
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "booleanResult"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3590
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 3583
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_32
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3580
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$18;->handleAuthenticatorResponse(Z)V

    .line 3579
    return-void
.end method

.method public onRequestContinued()V
    .registers 1

    .prologue
    .line 3574
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "value"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3570
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$18;->handleAuthenticatorResponse(Z)V

    .line 3569
    return-void
.end method
