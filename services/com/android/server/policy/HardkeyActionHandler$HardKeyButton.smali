.class Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;
.super Ljava/lang/Object;
.source "HardkeyActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HardkeyActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardKeyButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;,
        Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;,
        Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$3;,
        Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$4;
    }
.end annotation


# instance fields
.field private mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

.field private mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

.field final mDTRunnable:Ljava/lang/Runnable;

.field private mDoubleTapPending:Z

.field final mDoubleTapTimeout:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsPressed:Z

.field final mLPRunnable:Ljava/lang/Runnable;

.field final mSTRunnable:Ljava/lang/Runnable;

.field private mWasConsumed:Z

.field final synthetic this$0:Lcom/android/server/policy/HardkeyActionHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/internal/utils/du/Config$ButtonConfig;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/policy/HardkeyActionHandler;
    .param p2, "receiver"    # Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 535
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    .line 532
    iput-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mIsPressed:Z

    .line 533
    iput-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mWasConsumed:Z

    .line 544
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;-><init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapTimeout:Ljava/lang/Runnable;

    .line 556
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;-><init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mSTRunnable:Ljava/lang/Runnable;

    .line 562
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$3;-><init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDTRunnable:Ljava/lang/Runnable;

    .line 568
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$4;-><init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mLPRunnable:Ljava/lang/Runnable;

    .line 536
    iput-object p3, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    .line 537
    iput-object p2, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    .line 535
    return-void
.end method


# virtual methods
.method cancelDTTimeout()V
    .registers 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method

.method fireDoubleTap()V
    .registers 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDTRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    return-void
.end method

.method fireLongPress()V
    .registers 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mLPRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    return-void
.end method

.method fireSingleTap()V
    .registers 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mSTRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    return-void
.end method

.method isDoubleTapEnabled()Z
    .registers 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/du/Config$ActionConfig;->hasNoAction()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method isDoubleTapPending()Z
    .registers 2

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    return v0
.end method

.method isLongTapEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 597
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    invoke-virtual {v1, v0}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/utils/du/Config$ActionConfig;->hasNoAction()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    return v0
.end method

.method isPressed()Z
    .registers 2

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mIsPressed:Z

    return v0
.end method

.method keyHasDoubleTapRecents()Z
    .registers 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/du/Config$ActionConfig;->isActionRecents()Z

    move-result v0

    return v0
.end method

.method keyHasLongPressRecents()Z
    .registers 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/du/Config$ActionConfig;->isActionRecents()Z

    move-result v0

    return v0
.end method

.method keyHasMenuAction()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 587
    const-string/jumbo v1, "task_menu"

    iget-object v2, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/utils/du/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 588
    const-string/jumbo v1, "task_menu"

    iget-object v2, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    invoke-virtual {v2, v0}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/utils/du/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 587
    if-nez v1, :cond_3a

    .line 589
    const-string/jumbo v0, "task_menu"

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/utils/du/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 587
    :cond_3a
    return v0
.end method

.method keyHasSingleTapRecent()Z
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/du/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/du/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/du/Config$ActionConfig;->isActionRecents()Z

    move-result v0

    return v0
.end method

.method postDTTimeout()V
    .registers 5

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapTimeout:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 640
    return-void
.end method

.method setConfig(Lcom/android/internal/utils/du/Config$ButtonConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/internal/utils/du/Config$ButtonConfig;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/du/Config$ButtonConfig;

    .line 540
    return-void
.end method

.method setDoubleTapPending(Z)V
    .registers 2
    .param p1, "pending"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    .line 600
    return-void
.end method

.method setPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mIsPressed:Z

    .line 608
    return-void
.end method

.method setWasConsumed(Z)V
    .registers 2
    .param p1, "consumed"    # Z

    .prologue
    .line 617
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mWasConsumed:Z

    .line 616
    return-void
.end method

.method wasConsumed()Z
    .registers 2

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mWasConsumed:Z

    return v0
.end method
