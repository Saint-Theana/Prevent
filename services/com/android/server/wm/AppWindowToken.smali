.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final allAppWindows:Lcom/android/server/wm/WindowList;

.field allDrawn:Z

.field allDrawnExcludingSaved:Z

.field appFullscreen:Z

.field final appToken:Landroid/view/IApplicationToken;

.field clientHidden:Z

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field inputDispatchingTimeoutNanos:J

.field lastTransactionSequence:J

.field layoutConfigChanges:Z

.field mAlwaysFocusable:Z

.field final mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field mAppStopped:Z

.field mEnteringAnimation:Z

.field mFrozenBounds:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFrozenMergedConfig:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mIsExiting:Z

.field mLaunchTaskBehind:Z

.field mPendingRelaunchCount:I

.field mRotationAnimationHint:I

.field private mSurfaceViewBackgrounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;",
            ">;"
        }
    .end annotation
.end field

.field mTask:Lcom/android/server/wm/Task;

.field numDrawnWindows:I

.field numDrawnWindowsExclusingSaved:I

.field numInterestingWindows:I

.field numInterestingWindowsExcludingSaved:I

.field removed:Z

.field reportedDrawn:Z

.field reportedVisible:Z

.field requestedOrientation:I

.field showForAllUsers:Z

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingView:Landroid/view/View;

.field startingWindow:Lcom/android/server/wm/WindowState;

.field targetSdk:I

.field final voiceInteraction:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/AppWindowToken;->TAG:Ljava/lang/String;

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Z)V
    .registers 7
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/view/IApplicationToken;
    .param p3, "_voiceInteraction"    # Z

    .prologue
    .line 150
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 151
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 150
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 69
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 88
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 146
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    .line 152
    iput-object p0, p0, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 153
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 154
    iput-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    .line 155
    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 156
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowAnimator;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 149
    return-void
.end method

.method private canFreezeBounds()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 766
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private destroySurfaces(Z)V
    .registers 10
    .param p1, "cleanupOnResume"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 398
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 399
    .local v0, "allWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v2, Lcom/android/server/wm/DisplayContentList;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContentList;-><init>()V

    .line 400
    .local v2, "displayList":Lcom/android/server/wm/DisplayContentList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_15
    if-ltz v3, :cond_60

    .line 401
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 403
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-nez v5, :cond_2b

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v5, :cond_2b

    move v5, p1

    :goto_26
    if-nez v5, :cond_2d

    .line 400
    :cond_28
    :goto_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    :cond_2b
    move v5, v6

    .line 403
    goto :goto_26

    .line 407
    :cond_2d
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 409
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v5, :cond_28

    .line 418
    if-eqz p1, :cond_3c

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v5, :cond_3f

    .line 419
    :cond_3c
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    .line 421
    :cond_3f
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v5, :cond_48

    .line 422
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    .line 424
    :cond_48
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 425
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_54

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContentList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 428
    :cond_54
    :goto_54
    if-eqz p1, :cond_59

    .line 429
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 431
    :cond_59
    iput-boolean v7, v4, Lcom/android/server/wm/WindowState;->mDestroying:Z

    goto :goto_28

    .line 426
    :cond_5c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContentList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 433
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_60
    const/4 v3, 0x0

    :goto_61
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContentList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7d

    .line 434
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 435
    .restart local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 436
    iput-boolean v6, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 397
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_7d
    return-void
.end method

.method private freezeBounds()V
    .registers 5

    .prologue
    .line 776
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v3, v3, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 780
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 781
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 782
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 786
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_2f
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 775
    return-void

    .line 784
    :cond_37
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v3, v3, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_2f
.end method

.method private unfreezeBounds()V
    .registers 4

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 794
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 796
    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 797
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 799
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_22
    if-ltz v0, :cond_4b

    .line 800
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 801
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v2, :cond_33

    .line 799
    :cond_30
    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 804
    :cond_33
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 805
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 806
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 807
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 810
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_4b
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 792
    return-void
.end method


# virtual methods
.method addSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V
    .registers 3
    .param p1, "background"    # Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    return-void
.end method

.method addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    .line 715
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_44

    .line 716
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 717
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_3f

    .line 718
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 717
    if-eqz v2, :cond_3f

    .line 719
    iput-object p1, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    .line 720
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-eqz v2, :cond_42

    move v2, v3

    :goto_38
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 723
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleReplacingWindowTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    .line 715
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 720
    :cond_42
    const/4 v2, 0x1

    goto :goto_38

    .line 726
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_44
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 714
    return-void
.end method

.method canRestoreSurfaces()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 482
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1e

    .line 483
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 484
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canRestoreSurface()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 485
    const/4 v2, 0x1

    return v2

    .line 482
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 488
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1e
    return v3
.end method

.method clearAllDrawn()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 585
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 586
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    .line 583
    return-void
.end method

.method clearAnimatingFlags()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "wallpaperMightChange":Z
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_40

    .line 347
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 355
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v3, :cond_1c

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v3, :cond_1f

    .line 346
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 363
    :cond_1f
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v3, :cond_26

    .line 364
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 365
    const/4 v1, 0x1

    .line 367
    :cond_26
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v3, :cond_31

    .line 368
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 369
    const/4 v1, 0x1

    .line 371
    :cond_31
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_1c

    .line 372
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 373
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 374
    const/4 v1, 0x1

    goto :goto_1c

    .line 378
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_40
    if-eqz v1, :cond_45

    .line 379
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 344
    :cond_45
    return-void
.end method

.method clearRelaunching()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 705
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-nez v0, :cond_6

    .line 706
    return-void

    .line 708
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 709
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 711
    :cond_f
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 704
    return-void
.end method

.method clearTimedoutReplacesLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 740
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_36

    .line 747
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 748
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v2, :cond_26

    .line 746
    :goto_17
    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_9

    .line 751
    :cond_26
    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 752
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_30

    .line 753
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 759
    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_17

    .line 739
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_36
    return-void
.end method

.method clearVisibleBeforeClientHidden()V
    .registers 4

    .prologue
    .line 492
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 493
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 494
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearVisibleBeforeClientHidden()V

    .line 492
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 491
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_18
    return-void
.end method

.method destroySavedSurfaces()V
    .registers 4

    .prologue
    .line 577
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 579
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->destroySavedSurface()V

    .line 577
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 576
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_18
    return-void
.end method

.method destroySurfaces()V
    .registers 2

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 383
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 860
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_15

    .line 862
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "app=true voiceInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 864
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 865
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "allAppWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 867
    :cond_2b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 868
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " appFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 869
    const-string/jumbo v0, " requestedOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 870
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hiddenRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 871
    const-string/jumbo v0, " clientHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 872
    const-string/jumbo v0, " reportedDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 873
    const-string/jumbo v0, " reportedVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 874
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    if-eqz v0, :cond_93

    .line 875
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 877
    :cond_93
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v0, :cond_a5

    .line 878
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppStopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 880
    :cond_a5
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    if-nez v0, :cond_ad

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    if-eqz v0, :cond_1ae

    .line 882
    :cond_ad
    :goto_ad
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "numInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 883
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 884
    const-string/jumbo v0, " numDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 885
    const-string/jumbo v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 886
    const-string/jumbo v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 887
    const-string/jumbo v0, " (animator="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 888
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    :cond_ef
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_101

    .line 891
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 892
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 894
    :cond_101
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_111

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v0, :cond_111

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_111

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_140

    .line 895
    :cond_111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 896
    const-string/jumbo v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 897
    const-string/jumbo v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 898
    const-string/jumbo v0, " mIsExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 900
    :cond_140
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_148

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v0, :cond_1ba

    .line 902
    :cond_148
    :goto_148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 903
    const-string/jumbo v0, " startingView="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 904
    const-string/jumbo v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 905
    const-string/jumbo v0, " startingMoved="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 907
    :cond_177
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19b

    .line 908
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrozenBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 909
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrozenMergedConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 911
    :cond_19b
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-eqz v0, :cond_1ad

    .line 912
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingRelaunchCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 859
    :cond_1ad
    return-void

    .line 881
    :cond_1ae
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 880
    if-nez v0, :cond_ad

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 880
    if-eqz v0, :cond_ef

    goto/16 :goto_ad

    .line 901
    :cond_1ba
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 900
    if-nez v0, :cond_148

    .line 901
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 900
    if-eqz v0, :cond_177

    goto :goto_148
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .registers 6

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 289
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    .local v1, "j":I
    :cond_7
    :goto_7
    if-lez v1, :cond_28

    .line 290
    add-int/lit8 v1, v1, -0x1

    .line 291
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 292
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    .line 293
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 297
    :cond_21
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v3, :cond_27

    .line 298
    move-object v0, v2

    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    goto :goto_7

    .line 300
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_27
    return-object v2

    .line 304
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_28
    return-object v0
.end method

.method finishRelaunching()V
    .registers 2

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 697
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 699
    :cond_9
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_13

    .line 700
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 695
    :cond_13
    return-void
.end method

.method hasWindowsAlive()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 630
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1c

    .line 631
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v1, :cond_19

    .line 632
    const/4 v1, 0x1

    return v1

    .line 630
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 635
    :cond_1c
    return v2
.end method

.method isAnimatingInvisibleWithSavedSurface()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 503
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1e

    .line 504
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 505
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 506
    const/4 v2, 0x1

    return v2

    .line 503
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 509
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1e
    return v3
.end method

.method isRelaunching()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 685
    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method isVisible()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 312
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 313
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_41

    .line 314
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 317
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v3, :cond_32

    .line 318
    iget v3, v2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v3, :cond_35

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v3

    if-nez v3, :cond_35

    .line 319
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 320
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 313
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 321
    :cond_35
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_32

    .line 322
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    .line 317
    if-eqz v3, :cond_32

    .line 323
    const/4 v3, 0x1

    return v3

    .line 326
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_41
    return v4
.end method

.method markSavedSurfaceExiting()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 532
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_22

    .line 533
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 534
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 535
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 536
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 532
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 531
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_22
    return-void
.end method

.method notifyAppResumed(ZZ)V
    .registers 4
    .param p1, "wasStopped"    # Z
    .param p2, "allowSavedSurface"    # Z

    .prologue
    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 448
    if-nez p1, :cond_9

    .line 449
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 451
    :cond_9
    if-nez p2, :cond_e

    .line 452
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    .line 444
    :cond_e
    return-void
.end method

.method notifyAppStopped()V
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 463
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 460
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllDeadWindows()V

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_1c

    .line 195
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    .line 196
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 199
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 183
    return-void
.end method

.method overridePlayingAppAnimations(Landroid/view/animation/Animation;)V
    .registers 9
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 848
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 849
    .local v6, "win":Lcom/android/server/wm/WindowState;
    if-nez v6, :cond_f

    .line 850
    return-void

    .line 852
    :cond_f
    iget-object v0, v6, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 853
    .local v2, "width":I
    iget-object v0, v6, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 854
    .local v3, "height":I
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIZI)V

    .line 846
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_23
    return-void
.end method

.method removeAllDeadWindows()V
    .registers 5

    .prologue
    .line 610
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "winNdx":I
    :goto_8
    if-ltz v1, :cond_2d

    .line 617
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 618
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v2, :cond_1e

    .line 623
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 624
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 616
    :cond_1e
    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_8

    .line 609
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_2d
    return-void
.end method

.method removeAllWindows()V
    .registers 5

    .prologue
    .line 591
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "winNdx":I
    :goto_8
    if-ltz v1, :cond_26

    .line 598
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 603
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 597
    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_8

    .line 605
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    .line 606
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->clear()V

    .line 590
    return-void
.end method

.method removeAppFromTaskLocked()V
    .registers 5

    .prologue
    .line 330
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindows()V

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 335
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_37

    .line 336
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 337
    sget-object v1, Lcom/android/server/wm/AppWindowToken;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAppFromTaskLocked: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 338
    const-string/jumbo v3, " not found."

    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_30
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 329
    :cond_37
    return-void
.end method

.method removeSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V
    .registers 3
    .param p1, "background"    # Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 819
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    .line 817
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .registers 4

    .prologue
    .line 678
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 679
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 680
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 678
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 677
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_18
    return-void
.end method

.method resetReplacingWindows()V
    .registers 4

    .prologue
    .line 671
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 672
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 673
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->resetReplacing()V

    .line 671
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 667
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_18
    return-void
.end method

.method restoreSavedSurfaces()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->canRestoreSurfaces()Z

    move-result v5

    if-nez v5, :cond_b

    .line 543
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearVisibleBeforeClientHidden()V

    .line 544
    return-void

    .line 547
    :cond_b
    const/4 v2, 0x0

    .line 548
    .local v2, "numInteresting":I
    const/4 v1, 0x0

    .line 549
    .local v1, "numDrawn":I
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_4e

    .line 550
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 551
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v3, v5, :cond_27

    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v5, :cond_2a

    .line 549
    :cond_27
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 551
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->wasVisibleBeforeClientHidden()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 552
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v5, :cond_3a

    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_27

    .line 553
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 554
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 555
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->restoreSavedSurface()V

    .line 557
    :cond_45
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 563
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_4e
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_6c

    .line 564
    if-lez v2, :cond_57

    if-ne v2, v1, :cond_57

    const/4 v4, 0x1

    :cond_57
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 565
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_6c

    .line 566
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    const/16 v6, 0x20

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 569
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearVisibleBeforeClientHidden()V

    .line 541
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 7

    .prologue
    .line 160
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 161
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_2b

    .line 162
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 163
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_1c

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v4, :cond_1c

    .line 161
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 170
    :cond_1c
    :try_start_1c
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v4, :cond_29

    const/4 v4, 0x0

    :goto_23
    invoke-interface {v5, v4}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_19

    .line 171
    :catch_27
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_19

    .line 170
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_29
    const/4 v4, 0x1

    goto :goto_23

    .line 159
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_2b
    return-void
.end method

.method setReplacingChildren()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 659
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1f

    .line 660
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 661
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 662
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->setReplacing(Z)V

    .line 659
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 656
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1f
    return-void
.end method

.method setReplacingWindows(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 643
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 644
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setReplacing(Z)V

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 646
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_18
    if-eqz p1, :cond_1f

    .line 652
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->setDummyAnimation()V

    .line 638
    :cond_1f
    return-void
.end method

.method setVisibleBeforeClientHidden()V
    .registers 4

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 179
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setVisibleBeforeClientHidden()V

    .line 177
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 176
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_18
    return-void
.end method

.method shouldSaveSurface()Z
    .registers 2

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    return v0
.end method

.method startRelaunching()V
    .registers 2

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->canFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 690
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    .line 692
    :cond_9
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 688
    return-void
.end method

.method stopUsingSavedSurfaceLocked()V
    .registers 5

    .prologue
    .line 517
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_30

    .line 518
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 519
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 522
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    .line 523
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 524
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "stopUsingSavedSurfaceLocked"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 525
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 517
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 528
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    .line 516
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v1, :cond_30

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string/jumbo v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    .line 925
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateReportedVisibilityLocked()V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 203
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v12, :cond_7

    .line 204
    return-void

    .line 207
    :cond_7
    const/4 v7, 0x0

    .line 208
    .local v7, "numInteresting":I
    const/4 v8, 0x0

    .line 209
    .local v8, "numVisible":I
    const/4 v6, 0x0

    .line 210
    .local v6, "numDrawn":I
    const/4 v4, 0x1

    .line 214
    .local v4, "nowGone":Z
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 215
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_56

    .line 216
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 217
    .local v9, "win":Lcom/android/server/wm/WindowState;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v9, v12, :cond_28

    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v12, :cond_28

    .line 218
    iget v12, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v12, :cond_2b

    .line 215
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 219
    :cond_2b
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_28

    .line 220
    iget-boolean v12, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 217
    if-nez v12, :cond_28

    .line 239
    add-int/lit8 v7, v7, 0x1

    .line 240
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v12

    if-eqz v12, :cond_4c

    .line 241
    add-int/lit8 v6, v6, 0x1

    .line 242
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v12

    if-nez v12, :cond_4a

    .line 243
    add-int/lit8 v8, v8, 0x1

    .line 245
    :cond_4a
    const/4 v4, 0x0

    goto :goto_28

    .line 246
    :cond_4c
    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v12

    if-eqz v12, :cond_28

    .line 247
    const/4 v4, 0x0

    goto :goto_28

    .line 251
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_56
    if-lez v7, :cond_a0

    if-lt v6, v7, :cond_a0

    const/4 v3, 0x1

    .line 252
    .local v3, "nowDrawn":Z
    :goto_5b
    if-lez v7, :cond_a2

    if-lt v8, v7, :cond_a2

    const/4 v5, 0x1

    .line 253
    .local v5, "nowVisible":Z
    :goto_60
    if-nez v4, :cond_6a

    .line 255
    if-nez v3, :cond_66

    .line 256
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 258
    .end local v3    # "nowDrawn":Z
    :cond_66
    if-nez v5, :cond_6a

    .line 259
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 264
    .end local v5    # "nowVisible":Z
    :cond_6a
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v3, v12, :cond_83

    .line 265
    if-eqz v3, :cond_81

    .line 266
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 267
    const/16 v13, 0x9

    .line 266
    invoke-virtual {v12, v13, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 268
    .local v2, "m":Landroid/os/Message;
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 270
    .end local v2    # "m":Landroid/os/Message;
    :cond_81
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 272
    :cond_83
    iget-boolean v12, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v5, v12, :cond_9f

    .line 276
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 277
    iget-object v12, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 279
    if-eqz v5, :cond_a4

    move v12, v10

    .line 280
    :goto_90
    if-eqz v4, :cond_a6

    .line 278
    :goto_92
    const/16 v11, 0x8

    .line 277
    invoke-virtual {v13, v11, v12, v10, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 282
    .restart local v2    # "m":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 202
    .end local v2    # "m":Landroid/os/Message;
    :cond_9f
    return-void

    .line 251
    :cond_a0
    const/4 v3, 0x0

    .restart local v3    # "nowDrawn":Z
    goto :goto_5b

    .line 252
    :cond_a2
    const/4 v5, 0x0

    .restart local v5    # "nowVisible":Z
    goto :goto_60

    .end local v3    # "nowDrawn":Z
    .end local v5    # "nowVisible":Z
    :cond_a4
    move v12, v11

    .line 279
    goto :goto_90

    :cond_a6
    move v10, v11

    .line 280
    goto :goto_92
.end method

.method updateSurfaceViewBackgroundVisibilities()V
    .registers 6

    .prologue
    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "bottom":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    const v1, 0x7fffffff

    .line 830
    .local v1, "bottomLayer":I
    const/4 v2, 0x0

    .end local v0    # "bottom":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    .local v2, "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_23

    .line 831
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    .line 832
    .local v3, "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v4, :cond_20

    iget v4, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    if-ge v4, v1, :cond_20

    .line 833
    iget v1, v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    .line 834
    move-object v0, v3

    .line 830
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 837
    .end local v3    # "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    :cond_23
    const/4 v2, 0x0

    :goto_24
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3f

    .line 838
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceViewBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    .line 839
    .restart local v3    # "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    if-eq v3, v0, :cond_3d

    const/4 v4, 0x1

    :goto_37
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->updateBackgroundVisibility(Z)V

    .line 837
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 839
    :cond_3d
    const/4 v4, 0x0

    goto :goto_37

    .line 827
    .end local v3    # "sc":Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
    :cond_3f
    return-void
.end method

.method waitingForReplacement()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 730
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1c

    .line 731
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 732
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v2, :cond_19

    .line 733
    const/4 v2, 0x1

    return v2

    .line 730
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 736
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_1c
    return v3
.end method

.method windowsAreFocusable()Z
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->canReceiveKeys(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method
