.class Lcom/android/server/policy/HardkeyActionHandler$1;
.super Ljava/lang/Object;
.source "HardkeyActionHandler.java"

# interfaces
.implements Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HardkeyActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HardkeyActionHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HardkeyActionHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/HardkeyActionHandler;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$1;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDispatched(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Ljava/lang/String;)V
    .registers 5
    .param p1, "button"    # Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;
    .param p2, "task"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 94
    const-string/jumbo v0, "task_home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$1;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler;->-get1(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1bbe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    return-void

    .line 97
    :cond_16
    const-string/jumbo v0, "task_screenoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 99
    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 100
    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 102
    :cond_25
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$1;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler;->-get0(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/utils/du/ActionHandler;->performTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    return-void
.end method
