.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperAnimLayerAdjustment:I

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/high16 v3, -0x80000000

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 66
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 69
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 73
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 74
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 75
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 76
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 77
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 78
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 95
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 104
    new-instance v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 107
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 106
    return-void
.end method

.method private findLowestWindowOnScreen(Lcom/android/server/wm/WindowList;)I
    .registers 6
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 805
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 806
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_5
    if-ge v0, v1, :cond_17

    .line 807
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 808
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 809
    return v0

    .line 806
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 812
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_17
    const v3, 0x7fffffff

    return v3
.end method

.method private findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .registers 16
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v11, 0x0

    .line 492
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 493
    .local v8, "winAnimator":Lcom/android/server/wm/WindowAnimator;
    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 494
    const/4 v7, 0x0

    .line 495
    .local v7, "w":Lcom/android/server/wm/WindowState;
    const/4 v9, -0x1

    .line 496
    .local v9, "windowDetachedI":I
    const/4 v5, 0x0

    .line 497
    .local v5, "resetTopWallpaper":Z
    const/4 v2, 0x0

    .line 498
    .local v2, "inFreeformSpace":Z
    const/4 v4, 0x0

    .line 499
    .local v4, "replacing":Z
    const/4 v3, 0x0

    .line 501
    .local v3, "keyguardGoingAwayWithWallpaper":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_8d

    .line 502
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 503
    .local v7, "w":Lcom/android/server/wm/WindowState;
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v10, v12, :cond_31

    .line 504
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_2a

    if-eqz v5, :cond_2e

    .line 505
    :cond_2a
    invoke-virtual {p2, v7, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;I)V

    .line 506
    const/4 v5, 0x0

    .line 501
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 510
    :cond_31
    const/4 v5, 0x1

    .line 511
    iget-object v10, v8, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v7, v10, :cond_48

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_48

    .line 514
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v10, :cond_48

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v10, :cond_2e

    .line 523
    :cond_48
    if-nez v2, :cond_56

    .line 524
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    .line 525
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v6, :cond_92

    iget v10, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_92

    const/4 v2, 0x1

    .line 528
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_56
    :goto_56
    iget-boolean v10, v7, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    or-int/2addr v4, v10

    .line 529
    .local v4, "replacing":Z
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_94

    .line 530
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    .line 529
    :goto_61
    or-int/2addr v3, v10

    .line 532
    .local v3, "keyguardGoingAwayWithWallpaper":Z
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x100000

    and-int/2addr v10, v12

    if-eqz v10, :cond_96

    const/4 v0, 0x1

    .line 533
    .local v0, "hasWallpaper":Z
    :goto_6c
    if-eqz v0, :cond_98

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v10

    if-eqz v10, :cond_98

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v10, v7, :cond_7e

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v10

    if-eqz v10, :cond_98

    .line 535
    :cond_7e
    invoke-virtual {p2, v7, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 536
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v7, v10, :cond_8d

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v10

    if-nez v10, :cond_2e

    .line 549
    .end local v0    # "hasWallpaper":Z
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_8d
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_9e

    .line 550
    return-void

    .line 525
    .restart local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_92
    const/4 v2, 0x0

    goto :goto_56

    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v4    # "replacing":Z
    :cond_94
    move v10, v11

    .line 529
    goto :goto_61

    .restart local v3    # "keyguardGoingAwayWithWallpaper":Z
    :cond_96
    move v0, v11

    .line 532
    goto :goto_6c

    .line 544
    .restart local v0    # "hasWallpaper":Z
    :cond_98
    iget-object v10, v8, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v7, v10, :cond_2e

    .line 545
    move v9, v1

    goto :goto_2e

    .line 553
    .end local v0    # "hasWallpaper":Z
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_9e
    if-ltz v9, :cond_a4

    .line 556
    invoke-virtual {p2, v7, v9}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 491
    :cond_a3
    :goto_a3
    return-void

    .line 557
    :cond_a4
    if-nez v2, :cond_ac

    if-eqz v4, :cond_b4

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_b4

    .line 562
    :cond_ac
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    iget v11, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    invoke-virtual {p2, v10, v11}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    goto :goto_a3

    .line 564
    :cond_b4
    if-eqz v3, :cond_a3

    .line 568
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    iget v11, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    invoke-virtual {p2, v10, v11}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    goto :goto_a3
.end method

.method private isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x1

    .line 141
    if-eqz p1, :cond_14

    .line 142
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v1, :cond_13

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_14

    .line 143
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_14

    .line 141
    :cond_13
    :goto_13
    return v0

    .line 144
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_13

    .line 145
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_13

    const/4 v0, 0x0

    goto :goto_13
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .registers 14
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v10, 0x0

    .line 575
    const/4 v6, 0x0

    .line 576
    .local v6, "targetChanged":Z
    iget-object v7, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 577
    .local v7, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v8, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 579
    .local v8, "wallpaperTargetIndex":I
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v9, v7, :cond_86

    .line 580
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v9, v7, :cond_86

    .line 584
    :cond_12
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 585
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 587
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 588
    .local v5, "oldW":Lcom/android/server/wm/WindowState;
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 589
    const/4 v6, 0x1

    .line 593
    if-eqz v7, :cond_5b

    if-eqz v5, :cond_5b

    .line 594
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    .line 595
    .local v2, "oldAnim":Z
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    .line 598
    .local v0, "foundAnim":Z
    if-eqz v0, :cond_5b

    if-eqz v2, :cond_5b

    .line 599
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 602
    .local v3, "oldI":I
    if-ltz v3, :cond_5b

    .line 604
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_5f

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v9, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 606
    :goto_39
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_61

    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v9, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 614
    :goto_41
    if-le v8, v3, :cond_63

    .line 618
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 619
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 621
    move-object v7, v5

    .line 622
    move v8, v3

    .line 630
    :goto_49
    if-eqz v1, :cond_4d

    if-eqz v4, :cond_68

    .line 636
    :cond_4d
    if-ne v1, v4, :cond_5b

    .line 637
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 661
    .end local v0    # "foundAnim":Z
    .end local v2    # "oldAnim":Z
    .end local v3    # "oldI":I
    .end local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_5b
    :goto_5b
    invoke-virtual {p2, v7, v8}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 662
    return v6

    .line 604
    .restart local v0    # "foundAnim":Z
    .restart local v2    # "oldAnim":Z
    .restart local v3    # "oldI":I
    .restart local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_5f
    const/4 v1, 0x0

    .local v1, "newTargetHidden":Z
    goto :goto_39

    .line 606
    .end local v1    # "newTargetHidden":Z
    :cond_61
    const/4 v4, 0x0

    .local v4, "oldTargetHidden":Z
    goto :goto_41

    .line 627
    .end local v4    # "oldTargetHidden":Z
    :cond_63
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 628
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_49

    .line 635
    :cond_68
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_5b

    .line 638
    :cond_6b
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_83

    .line 639
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 636
    if-eqz v9, :cond_5b

    .line 644
    :cond_83
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_5b

    .line 650
    .end local v0    # "foundAnim":Z
    .end local v2    # "oldAnim":Z
    .end local v3    # "oldI":I
    .end local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_86
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_5b

    .line 652
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    if-eqz v9, :cond_9a

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    if-nez v9, :cond_5b

    .line 654
    :cond_9a
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 655
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 656
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 657
    const/4 v6, 0x1

    goto :goto_5b
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    return-void
.end method

.method adjustWallpaperWindows()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    .line 816
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-boolean v9, v6, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 818
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 821
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 822
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    move-result v1

    .line 823
    .local v1, "targetChanged":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    move-result v2

    .line 824
    .local v2, "visible":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 825
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget v4, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 827
    .local v4, "wallpaperTargetIndex":I
    if-nez v3, :cond_84

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_84

    .line 830
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 831
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    add-int/lit8 v4, v6, 0x1

    .line 839
    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :goto_3b
    if-eqz v2, :cond_7d

    .line 840
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_51

    .line 841
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 842
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 844
    :cond_51
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_65

    .line 845
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 846
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 848
    :cond_65
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v6, v8, :cond_71

    .line 849
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 851
    :cond_71
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v6, v8, :cond_7d

    .line 852
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 856
    :cond_7d
    invoke-virtual {p0, v5, v3, v4, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z

    move-result v0

    .line 859
    .local v0, "changed":Z
    if-eqz v1, :cond_83

    .line 863
    :cond_83
    return v0

    .line 835
    .end local v0    # "changed":Z
    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_84
    if-lez v4, :cond_8f

    .line 836
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    check-cast v3, Lcom/android/server/wm/WindowState;

    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_3b

    :cond_8f
    const/4 v3, 0x0

    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_3b
.end method

.method clearLastWallpaperTimeoutTime()V
    .registers 3

    .prologue
    .line 450
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 449
    return-void
.end method

.method dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .param p1, "wallpaper"    # Lcom/android/server/wm/WindowState;
    .param p2, "visible"    # Z

    .prologue
    .line 234
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v1, p2, :cond_11

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_a

    .line 234
    if-eqz p2, :cond_11

    .line 236
    :cond_a
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 241
    :try_start_c
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 231
    :cond_11
    :goto_11
    return-void

    .line 242
    :catch_12
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_11
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x80000000

    .line 922
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 923
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_34

    .line 924
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLowerWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 925
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpperWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 927
    :cond_34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 928
    const-string/jumbo v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 929
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    if-ne v0, v1, :cond_55

    .line 930
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_6e

    .line 931
    :cond_55
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    const-string/jumbo v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 933
    const-string/jumbo v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 921
    :cond_6e
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 938
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 939
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 940
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Wallpaper tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_4e

    .line 942
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 943
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Wallpaper #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 944
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 945
    if-eqz p3, :cond_4a

    .line 946
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 947
    const-string/jumbo v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 941
    :goto_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 949
    :cond_4a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_47

    .line 937
    .end local v0    # "i":I
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_4e
    return-void
.end method

.method getAnimLayerAdjustment()I
    .registers 2

    .prologue
    .line 470
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    return v0
.end method

.method getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 187
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 184
    :cond_c
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .registers 11
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v8, 0x0

    .line 192
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_e

    .line 193
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v7, p1, :cond_d

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_e

    .line 194
    :cond_d
    return-void

    .line 196
    :cond_e
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 199
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 200
    return-void

    .line 203
    :cond_1b
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v7, p1, :cond_64

    const/4 v5, 0x1

    .line 204
    .local v5, "wasDeferred":Z
    :goto_20
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_6c

    .line 205
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 206
    .local v3, "token":Lcom/android/server/wm/WindowToken;
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "j":I
    :goto_3a
    if-ltz v2, :cond_66

    .line 207
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 208
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 209
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v7, :cond_4c

    if-eqz v5, :cond_61

    .line 210
    :cond_4c
    const-string/jumbo v7, "hideWallpapers"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v4, v8}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 212
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 213
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_61

    .line 214
    iget v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 206
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_3a

    .line 203
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v5    # "wasDeferred":Z
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_64
    const/4 v5, 0x0

    .restart local v5    # "wasDeferred":Z
    goto :goto_20

    .line 222
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_66
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 204
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 191
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6c
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isWallpaperTargetAnimating()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 149
    :cond_19
    :goto_19
    return v0

    .line 150
    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method isWallpaperVisible()Z
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method processWallpaperDrawPendingTimeout()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 867
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-ne v0, v1, :cond_9

    .line 868
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 871
    return v1

    .line 873
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 917
    return-void
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 22
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .prologue
    .line 353
    if-eqz p1, :cond_51

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_51

    .line 354
    const-string/jumbo v0, "com.google.android.wearable.app"

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 356
    .local v10, "hackWearWhitelisted":Z
    :goto_11
    if-nez v10, :cond_17

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_53

    .line 360
    :cond_17
    move/from16 v8, p7

    .line 361
    .local v8, "doWait":Z
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .end local p7    # "sync":Z
    .local v7, "curTokenNdx":I
    :goto_21
    if-ltz v7, :cond_60

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    iget-object v13, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 363
    .local v13, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .local v12, "wallpaperNdx":I
    :goto_33
    if-ltz v12, :cond_5d

    .line 364
    invoke-virtual {v13, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 366
    .local v11, "wallpaper":Lcom/android/server/wm/WindowState;
    :try_start_3b
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4c} :catch_63

    .line 369
    const/16 p7, 0x0

    .line 363
    :goto_4e
    add-int/lit8 v12, v12, -0x1

    goto :goto_33

    .line 353
    .end local v7    # "curTokenNdx":I
    .end local v8    # "doWait":Z
    .end local v10    # "hackWearWhitelisted":Z
    .end local v11    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v12    # "wallpaperNdx":I
    .end local v13    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p7    # "sync":Z
    :cond_51
    const/4 v10, 0x0

    goto :goto_11

    .line 358
    .restart local v10    # "hackWearWhitelisted":Z
    :cond_53
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_17

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_17

    .line 380
    .end local p7    # "sync":Z
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return-object v0

    .line 361
    .restart local v7    # "curTokenNdx":I
    .restart local v8    # "doWait":Z
    .restart local v12    # "wallpaperNdx":I
    .restart local v13    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5d
    add-int/lit8 v7, v7, -0x1

    goto :goto_21

    .line 375
    .end local v12    # "wallpaperNdx":I
    .end local v13    # "windows":Lcom/android/server/wm/WindowList;
    :cond_60
    if-eqz v8, :cond_5b

    goto :goto_5b

    .line 370
    .restart local v11    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v12    # "wallpaperNdx":I
    .restart local v13    # "windows":Lcom/android/server/wm/WindowList;
    :catch_63
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_4e
.end method

.method setAnimLayerAdjustment(Lcom/android/server/wm/WindowState;I)V
    .registers 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "adj"    # I

    .prologue
    .line 474
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_9

    .line 475
    :cond_8
    return-void

    .line 479
    :cond_9
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    .line 480
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_3a

    .line 481
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    iget-object v3, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 482
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_25
    if-ltz v1, :cond_37

    .line 483
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 484
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p2

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 482
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    .line 480
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 473
    .end local v1    # "j":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3a
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .registers 5
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 340
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_8

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_10

    .line 341
    :cond_8
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 342
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 339
    :cond_10
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .prologue
    .line 330
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_18

    .line 331
    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 332
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 333
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 334
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 329
    :cond_18
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .registers 29
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "sync"    # Z

    .prologue
    .line 248
    const/16 v17, 0x0

    .line 251
    .local v17, "rawChanged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_176

    const/high16 v13, 0x3f800000    # 1.0f

    .line 252
    .local v13, "defaultWallpaperX":F
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_179

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    move/from16 v20, v0

    .line 253
    .local v20, "wpx":F
    :goto_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_17d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    move/from16 v21, v0

    .line 254
    .local v21, "wpxs":F
    :goto_28
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v11, v4, p2

    .line 255
    .local v11, "availw":I
    if-lez v11, :cond_181

    int-to-float v4, v11

    mul-float v4, v4, v20

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    move/from16 v16, v0

    .line 256
    .local v16, "offset":I
    :goto_43
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_51

    .line 257
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    add-int v16, v16, v4

    .line 259
    :cond_51
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_185

    const/4 v12, 0x1

    .line 260
    .local v12, "changed":Z
    :goto_5a
    if-eqz v12, :cond_62

    .line 262
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 264
    :cond_62
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v4, v4, v20

    if-nez v4, :cond_72

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v4, v4, v21

    if-eqz v4, :cond_80

    .line 265
    :cond_72
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 266
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 267
    const/16 v17, 0x1

    .line 270
    :cond_80
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_188

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    move/from16 v22, v0

    .line 271
    .local v22, "wpy":F
    :goto_8f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_18c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    move/from16 v23, v0

    .line 272
    .local v23, "wpys":F
    :goto_9e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v10, v4, p3

    .line 273
    .local v10, "availh":I
    if-lez v10, :cond_190

    int-to-float v4, v10

    mul-float v4, v4, v22

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    move/from16 v16, v0

    .line 274
    :goto_b9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_c7

    .line 275
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    add-int v16, v16, v4

    .line 277
    :cond_c7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_d6

    .line 279
    const/4 v12, 0x1

    .line 280
    .local v12, "changed":Z
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 282
    .end local v12    # "changed":Z
    :cond_d6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v22

    if-nez v4, :cond_e6

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v23

    if-eqz v4, :cond_f4

    .line 283
    :cond_e6
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 284
    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 285
    const/16 v17, 0x1

    .line 288
    :cond_f4
    if-eqz v17, :cond_175

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_175

    .line 294
    if-eqz p4, :cond_108

    .line 295
    :try_start_102
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 297
    :cond_108
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 298
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 299
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v9, p4

    .line 297
    invoke-interface/range {v4 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 300
    if-eqz p4, :cond_175

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_175

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 303
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_131} :catch_194

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v4, v4, v18

    if-gez v4, :cond_170

    .line 308
    :try_start_138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->wait(J)V
    :try_end_143
    .catch Ljava/lang/InterruptedException; {:try_start_138 .. :try_end_143} :catch_196
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_143} :catch_194

    .line 312
    :goto_143
    const-wide/16 v4, 0x96

    add-long v4, v4, v18

    :try_start_147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_170

    .line 313
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 318
    :cond_170
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_175
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_175} :catch_194

    .line 325
    .end local v18    # "start":J
    :cond_175
    :goto_175
    return v12

    .line 251
    .end local v10    # "availh":I
    .end local v11    # "availw":I
    .end local v13    # "defaultWallpaperX":F
    .end local v16    # "offset":I
    .end local v20    # "wpx":F
    .end local v21    # "wpxs":F
    .end local v22    # "wpy":F
    .end local v23    # "wpys":F
    :cond_176
    const/4 v13, 0x0

    .restart local v13    # "defaultWallpaperX":F
    goto/16 :goto_a

    .line 252
    :cond_179
    move/from16 v20, v13

    .restart local v20    # "wpx":F
    goto/16 :goto_19

    .line 253
    :cond_17d
    const/high16 v21, -0x40800000    # -1.0f

    .restart local v21    # "wpxs":F
    goto/16 :goto_28

    .line 255
    .restart local v11    # "availw":I
    :cond_181
    const/16 v16, 0x0

    .restart local v16    # "offset":I
    goto/16 :goto_43

    .line 259
    :cond_185
    const/4 v12, 0x0

    goto/16 :goto_5a

    .line 270
    .local v12, "changed":Z
    :cond_188
    const/high16 v22, 0x3f000000    # 0.5f

    .restart local v22    # "wpy":F
    goto/16 :goto_8f

    .line 271
    :cond_18c
    const/high16 v23, -0x40800000    # -1.0f

    .restart local v23    # "wpys":F
    goto/16 :goto_9e

    .line 273
    .restart local v10    # "availh":I
    :cond_190
    const/16 v16, 0x0

    goto/16 :goto_b9

    .line 321
    .end local v12    # "changed":Z
    :catch_194
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_175

    .line 309
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v18    # "start":J
    :catch_196
    move-exception v15

    .local v15, "e":Ljava/lang/InterruptedException;
    goto :goto_143
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 16
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .prologue
    const/high16 v12, -0x80000000

    const/4 v11, 0x0

    .line 384
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 385
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_a

    .line 386
    return-void

    .line 388
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 389
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 390
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 392
    .local v1, "dh":I
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 393
    .local v5, "target":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_4e

    .line 394
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_8b

    .line 395
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 399
    :cond_20
    :goto_20
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_96

    .line 400
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 404
    :cond_2a
    :goto_2a
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v10, v12, :cond_a1

    .line 405
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 409
    :cond_32
    :goto_32
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v10, v12, :cond_aa

    .line 410
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 414
    :cond_3a
    :goto_3a
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_b3

    .line 415
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 419
    :cond_44
    :goto_44
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_be

    .line 420
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 426
    :cond_4e
    :goto_4e
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .end local p2    # "sync":Z
    .local v0, "curTokenNdx":I
    :goto_56
    if-ltz v0, :cond_dc

    .line 427
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    iget-object v9, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 428
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "wallpaperNdx":I
    :goto_68
    if-ltz v7, :cond_d8

    .line 429
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 430
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v6, v4, v1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 431
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 432
    .local v8, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v10, v10, Lcom/android/server/wm/WindowManagerService;->mSingleHandMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c9

    .line 433
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLeftLocked()V

    .line 441
    :goto_82
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(Landroid/graphics/Point;)V

    .line 443
    const/4 p2, 0x0

    .line 428
    .end local v8    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_88
    add-int/lit8 v7, v7, -0x1

    goto :goto_68

    .line 396
    .end local v0    # "curTokenNdx":I
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p2    # "sync":Z
    :cond_8b
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_20

    .line 397
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_20

    .line 401
    :cond_96
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2a

    .line 402
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_2a

    .line 406
    :cond_a1
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v10, v12, :cond_32

    .line 407
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_32

    .line 411
    :cond_aa
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v10, v12, :cond_3a

    .line 412
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_3a

    .line 416
    :cond_b3
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_44

    .line 417
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_44

    .line 421
    :cond_be
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4e

    .line 422
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_4e

    .line 434
    .end local p2    # "sync":Z
    .restart local v0    # "curTokenNdx":I
    .restart local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v7    # "wallpaperNdx":I
    .restart local v8    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_c9
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v10, v10, Lcom/android/server/wm/WindowManagerService;->mSingleHandMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_d4

    .line 435
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameRightLocked()V

    goto :goto_82

    .line 437
    :cond_d4
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameNormalLocked()V

    goto :goto_82

    .line 426
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v8    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_d8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_56

    .line 383
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_dc
    return-void
.end method

.method updateWallpaperVisibility()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 154
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 155
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_b

    .line 156
    return-void

    .line 158
    :cond_b
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 159
    .local v6, "visible":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 160
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 161
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 163
    .local v1, "dh":I
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "curTokenNdx":I
    :goto_21
    if-ltz v0, :cond_56

    .line 164
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 165
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v10, v6, :cond_36

    .line 166
    if-eqz v6, :cond_51

    move v10, v11

    :goto_32
    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 169
    iput-boolean v12, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 172
    :cond_36
    iget-object v9, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 173
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "wallpaperNdx":I
    :goto_3e
    if-ltz v8, :cond_53

    .line 174
    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 175
    .local v7, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_4b

    .line 176
    invoke-virtual {p0, v7, v4, v1, v11}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 179
    :cond_4b
    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 173
    add-int/lit8 v8, v8, -0x1

    goto :goto_3e

    .end local v7    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_51
    move v10, v12

    .line 166
    goto :goto_32

    .line 163
    .restart local v8    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 153
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_56
    return-void
.end method

.method updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z
    .registers 23
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p3, "wallpaperTargetIndex"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 719
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 720
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 721
    .local v6, "dw":I
    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 725
    .local v4, "dh":I
    const/4 v2, 0x0

    .line 726
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .local v3, "curTokenNdx":I
    :goto_1b
    if-ltz v3, :cond_e2

    .line 727
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 728
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v0, p4

    if-ne v15, v0, :cond_40

    .line 731
    if-eqz p4, :cond_86

    const/4 v15, 0x0

    :goto_30
    iput-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 733
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 736
    :cond_40
    iget-object v11, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 737
    .local v11, "tokenWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    add-int/lit8 v14, v15, -0x1

    .local v14, "wallpaperNdx":I
    :goto_48
    if-ltz v14, :cond_de

    .line 738
    invoke-virtual {v11, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 740
    .local v13, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_58

    .line 741
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6, v4, v15}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 745
    :cond_58
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 747
    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 748
    iget v0, v13, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 747
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 753
    move-object/from16 v0, p2

    if-ne v13, v0, :cond_8b

    .line 754
    add-int/lit8 p3, p3, -0x1

    .line 755
    if-lez p3, :cond_88

    .line 756
    add-int/lit8 v15, p3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 737
    :goto_83
    add-int/lit8 v14, v14, -0x1

    goto :goto_48

    .line 731
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v14    # "wallpaperNdx":I
    :cond_86
    const/4 v15, 0x1

    goto :goto_30

    .line 756
    .restart local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .restart local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v14    # "wallpaperNdx":I
    :cond_88
    const/16 p2, 0x0

    .local p2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_83

    .line 762
    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_8b
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 763
    .local v8, "oldIndex":I
    if-ltz v8, :cond_a8

    .line 766
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 767
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 768
    move/from16 v0, p3

    if-ge v8, v0, :cond_a8

    .line 769
    add-int/lit8 p3, p3, -0x1

    .line 776
    :cond_a8
    const/4 v7, 0x0

    .line 777
    .local v7, "insertionIndex":I
    if-eqz p4, :cond_cd

    if-eqz p2, :cond_cd

    .line 778
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 779
    .local v12, "type":I
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 780
    .local v9, "privateFlags":I
    and-int/lit16 v15, v9, 0x400

    if-nez v15, :cond_c1

    .line 781
    const/16 v15, 0x7ed

    if-ne v12, v15, :cond_cd

    .line 782
    :cond_c1
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 783
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WallpaperController;->findLowestWindowOnScreen(Lcom/android/server/wm/WindowList;)I

    move-result v16

    .line 782
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 791
    .end local v9    # "privateFlags":I
    .end local v12    # "type":I
    :cond_cd
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 793
    const/4 v2, 0x1

    goto :goto_83

    .line 726
    .end local v7    # "insertionIndex":I
    .end local v8    # "oldIndex":I
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_de
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1b

    .line 797
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v14    # "wallpaperNdx":I
    :cond_e2
    return v2
.end method

.method updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .registers 10
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v5, 0x0

    .line 668
    iget-object v2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 669
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v3, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 670
    .local v3, "wallpaperTargetIndex":I
    if-eqz v2, :cond_55

    const/4 v1, 0x1

    .line 672
    .local v1, "visible":Z
    :goto_8
    if-eqz v1, :cond_51

    .line 675
    invoke-direct {p0, v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 681
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_1c

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_1c

    .line 682
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v5, v5, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 680
    :cond_1c
    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    .line 684
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v0, v5, 0x3e8

    .line 691
    .local v0, "maxLayer":I
    :goto_2a
    if-lez v3, :cond_51

    .line 692
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 693
    .local v4, "wb":Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v5, v0, :cond_5d

    .line 694
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v2, :cond_5d

    .line 695
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_46

    .line 696
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v6, :cond_5d

    .line 697
    :cond_46
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_51

    .line 698
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v5, :cond_57

    .line 711
    .end local v0    # "maxLayer":I
    .end local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_51
    invoke-virtual {p2, v2, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 712
    return v1

    .end local v1    # "visible":Z
    :cond_55
    move v1, v5

    .line 670
    goto :goto_8

    .line 699
    .restart local v0    # "maxLayer":I
    .restart local v1    # "visible":Z
    .restart local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_57
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v5, v6, :cond_51

    .line 704
    :cond_5d
    move-object v2, v4

    .line 705
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_18

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_18

    .line 456
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    .line 453
    :cond_18
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_18

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_18

    .line 464
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    .line 461
    :cond_18
    return-void
.end method

.method wallpaperTransitionReady()Z
    .registers 13

    .prologue
    const/16 v11, 0x27

    const/4 v10, 0x0

    .line 877
    const/4 v3, 0x1

    .line 878
    .local v3, "transitionReady":Z
    const/4 v5, 0x1

    .line 879
    .local v5, "wallpaperReady":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 880
    .local v0, "curTokenIndex":I
    :goto_d
    if-ltz v0, :cond_59

    .line 879
    if-eqz v5, :cond_59

    .line 881
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 882
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "curWallpaperIndex":I
    :goto_21
    if-ltz v1, :cond_56

    .line 884
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 885
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v6, :cond_35

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 883
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 887
    :cond_38
    const/4 v5, 0x0

    .line 888
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3f

    .line 890
    const/4 v3, 0x0

    .line 892
    :cond_3f
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v6, :cond_56

    .line 893
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 894
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 895
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 896
    const-wide/16 v8, 0x1f4

    .line 895
    invoke-virtual {v6, v11, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 880
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 905
    .end local v1    # "curWallpaperIndex":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_59
    if-eqz v5, :cond_64

    .line 906
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 907
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 910
    :cond_64
    return v3
.end method
