.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$1;,
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/RampAnimator;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/RampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/RampAnimator;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/RampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/RampAnimator;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/RampAnimator;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/RampAnimator;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/RampAnimator;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/RampAnimator;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/RampAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 131
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 47
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 44
    return-void
.end method

.method private cancelAnimationCallback()V
    .registers 5

    .prologue
    .line 128
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method private postAnimationCallback()V
    .registers 5

    .prologue
    .line 124
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 123
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .registers 8
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v1, :cond_8

    if-gtz p2, :cond_32

    .line 63
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v1, :cond_10

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_60

    .line 64
    :cond_10
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 65
    iput v3, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 66
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 67
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 68
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 69
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_28

    .line 70
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 73
    :cond_28
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v1, :cond_31

    .line 74
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v1}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 76
    :cond_31
    return v4

    .line 62
    :cond_32
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eqz v1, :cond_8

    .line 88
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_3e

    .line 89
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-le p2, v1, :cond_61

    .line 92
    :cond_3e
    :goto_3e
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 95
    :cond_40
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v1, p1, :cond_76

    const/4 v0, 0x1

    .line 96
    .local v0, "changed":Z
    :goto_45
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 99
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v1, :cond_5f

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_5f

    .line 100
    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 101
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 103
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 106
    :cond_5f
    return v0

    .line 78
    .end local v0    # "changed":Z
    :cond_60
    return v3

    .line 90
    :cond_61
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v1, :cond_6b

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v1, v2, :cond_3e

    .line 91
    :cond_6b
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v1, v2, :cond_40

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v1, p1, :cond_40

    goto :goto_3e

    .line 95
    :cond_76
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_45
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 113
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .prologue
    .line 120
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 119
    return-void
.end method
