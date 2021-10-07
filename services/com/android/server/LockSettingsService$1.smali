.class Lcom/android/server/LockSettingsService$1;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 429
    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 431
    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 432
    .local v3, "userHandle":I
    if-lez v3, :cond_1d

    .line 433
    iget-object v4, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/android/server/LockSettingsService;->-wrap1(Lcom/android/server/LockSettingsService;IZ)V

    .line 435
    :cond_1d
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 436
    .local v0, "ks":Landroid/security/KeyStore;
    iget-object v4, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v4}, Lcom/android/server/LockSettingsService;->-get5(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 437
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_33

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 438
    .local v1, "parentHandle":I
    :goto_2f
    invoke-virtual {v0, v3, v1}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 428
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v1    # "parentHandle":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userHandle":I
    :cond_32
    :goto_32
    return-void

    .line 437
    .restart local v0    # "ks":Landroid/security/KeyStore;
    .restart local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userHandle":I
    :cond_33
    const/4 v1, -0x1

    goto :goto_2f

    .line 439
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userHandle":I
    :cond_35
    const-string/jumbo v4, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 440
    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 441
    .restart local v3    # "userHandle":I
    iget-object v4, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v4}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_32

    .line 442
    .end local v3    # "userHandle":I
    :cond_53
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 443
    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 444
    .restart local v3    # "userHandle":I
    if-lez v3, :cond_32

    .line 445
    iget-object v4, p0, Lcom/android/server/LockSettingsService$1;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v4, v3, v6}, Lcom/android/server/LockSettingsService;->-wrap1(Lcom/android/server/LockSettingsService;IZ)V

    goto :goto_32
.end method
