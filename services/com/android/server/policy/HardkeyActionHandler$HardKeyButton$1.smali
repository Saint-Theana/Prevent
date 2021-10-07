.class Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;
.super Ljava/lang/Object;
.source "HardkeyActionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 546
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->-get2(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 547
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v0, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->-set0(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Z)Z

    .line 548
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result v0

    if-nez v0, :cond_19

    .line 549
    invoke-static {}, Lcom/android/internal/utils/du/ActionHandler;->cancelPreloadRecentApps()V

    .line 551
    :cond_19
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->-get0(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v2, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->-get1(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/internal/utils/du/Config$ButtonConfig;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/utils/du/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;->onActionDispatched(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Ljava/lang/String;)V

    .line 545
    :cond_32
    return-void
.end method
