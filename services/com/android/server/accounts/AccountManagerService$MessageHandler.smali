.class Lcom/android/server/accounts/AccountManagerService$MessageHandler;
.super Landroid/os/Handler;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4498
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4499
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4498
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4504
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_38

    .line 4515
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unhandled message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4506
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 4507
    .local v0, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onTimedOut()V

    .line 4503
    .end local v0    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    :goto_28
    return-void

    .line 4511
    :pswitch_29
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/Account;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    goto :goto_28

    .line 4504
    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_21
        :pswitch_29
    .end packed-switch
.end method
