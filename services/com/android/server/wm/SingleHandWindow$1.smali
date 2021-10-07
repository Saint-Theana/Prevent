.class Lcom/android/server/wm/SingleHandWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "SingleHandWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SingleHandWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SingleHandWindow;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandWindow;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/SingleHandWindow;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/server/wm/SingleHandWindow$1;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 225
    :cond_8
    return-void

    .line 227
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 229
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow$1;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-virtual {v1}, Lcom/android/server/wm/SingleHandWindow;->updateLocale()V

    .line 232
    :cond_1b
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 233
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow$1;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-virtual {v1}, Lcom/android/server/wm/SingleHandWindow;->updateConfiguration()V

    .line 223
    :cond_29
    return-void
.end method
