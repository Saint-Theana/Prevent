.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;,
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/BoundsAnimationController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string/jumbo v0, "WindowManager"

    .line 50
    sput-object v0, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V
    .registers 5
    .param p1, "transition"    # Lcom/android/server/wm/AppTransition;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    .line 91
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method animateBounds(Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 13
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I

    .prologue
    .line 280
    const/4 v5, 0x0

    .line 281
    .local v5, "moveToFullscreen":Z
    if-nez p3, :cond_c

    .line 282
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "to":Landroid/graphics/Rect;
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 283
    .restart local p3    # "to":Landroid/graphics/Rect;
    invoke-interface {p1, p3}, Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;->getFullScreenBounds(Landroid/graphics/Rect;)V

    .line 284
    const/4 v5, 0x1

    .line 287
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 288
    .local v7, "existing":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    if-eqz v7, :cond_20

    const/4 v6, 0x1

    .line 293
    .local v6, "replacing":Z
    :goto_17
    if-eqz v6, :cond_25

    .line 294
    invoke-virtual {v7, p3}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 299
    return-void

    .line 288
    .end local v6    # "replacing":Z
    :cond_20
    const/4 v6, 0x0

    goto :goto_17

    .line 301
    .restart local v6    # "replacing":Z
    :cond_22
    invoke-virtual {v7}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    .line 304
    :cond_25
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 305
    .local v0, "animator":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_54

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    .line 307
    const/4 v1, -0x1

    if-eq p4, v1, :cond_51

    .end local p4    # "animationDuration":I
    :goto_3f
    mul-int/lit8 v1, p4, 0x1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    .line 279
    return-void

    .line 308
    .restart local p4    # "animationDuration":I
    :cond_51
    const/16 p4, 0x150

    goto :goto_3f

    .line 306
    :array_54
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
