.class public Lcom/android/server/accessibility/AutoclickController;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;,
        Lcom/android/server/accessibility/AutoclickController$ClickScheduler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

.field private mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

.field private final mContext:Landroid/content/Context;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AutoclickController;)Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AutoclickController;->LOG_TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    .line 72
    iput p2, p0, Lcom/android/server/accessibility/AutoclickController;->mUserId:I

    .line 70
    return-void
.end method

.method private handleMouseMotion(Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 160
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 146
    :goto_c
    :pswitch_c
    return-void

    .line 149
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 150
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->update(Landroid/view/MotionEvent;I)V

    goto :goto_c

    .line 152
    :cond_1a
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    goto :goto_c

    .line 147
    :pswitch_data_20
    .packed-switch 0x7
        :pswitch_d
        :pswitch_7
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3
    .param p1, "inputSource"    # I

    .prologue
    .line 125
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_d

    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 129
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_16

    .line 130
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 124
    :cond_16
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 112
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    if-eqz v0, :cond_c

    .line 137
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->stop()V

    .line 138
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    .line 140
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_17

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 142
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 135
    :cond_17
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_17

    .line 99
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 100
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->updateMetaState(I)V

    .line 106
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_20

    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 97
    :cond_20
    return-void

    .line 102
    :cond_21
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    goto :goto_17
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 77
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 78
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-nez v1, :cond_36

    .line 79
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    const/16 v2, 0x258

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;-><init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;I)V

    .line 80
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 82
    new-instance v1, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    iget v2, p0, Lcom/android/server/accessibility/AutoclickController;->mUserId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    .line 83
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/AutoclickController$ClickScheduler;)V

    .line 86
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_36
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/AutoclickController;->handleMouseMotion(Landroid/view/MotionEvent;I)V

    .line 91
    :cond_39
    :goto_39
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_42

    .line 92
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 76
    :cond_42
    return-void

    .line 87
    :cond_43
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v1, :cond_39

    .line 88
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    goto :goto_39
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 119
    return-void
.end method
