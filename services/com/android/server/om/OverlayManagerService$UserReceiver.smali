.class final Lcom/android/server/om/OverlayManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$UserReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, -0x2710

    .line 405
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 408
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, "userId":I
    if-eq v0, v3, :cond_32

    .line 410
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 411
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->onUserRemoved(I)V

    .line 412
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetAllPackageInfos(I)V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_33

    monitor-exit v2

    .line 404
    .end local v0    # "userId":I
    :cond_32
    return-void

    .line 410
    .restart local v0    # "userId":I
    :catchall_33
    move-exception v1

    monitor-exit v2

    throw v1
.end method
