.class Lcom/android/server/tv/TvInputManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 286
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap20(Lcom/android/server/tv/TvInputManagerService;I)V

    .line 283
    :cond_1a
    :goto_1a
    return-void

    .line 287
    :cond_1b
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 288
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap16(Lcom/android/server/tv/TvInputManagerService;I)V

    goto :goto_1a
.end method
