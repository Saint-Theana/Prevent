.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field protected mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field protected mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/BarController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I
    .param p7, "transparentFlag"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    .line 70
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    .line 71
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    .line 72
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    .line 73
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    .line 74
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    .line 75
    iput p7, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .registers 11
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 166
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 167
    .local v1, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 168
    .local v0, "anim":Z
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v2, v4, :cond_17

    if-eqz p4, :cond_1e

    .line 170
    :cond_17
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v2, v5, :cond_21

    if-eqz v1, :cond_21

    .line 171
    return v3

    .line 168
    :cond_1e
    if-nez v1, :cond_17

    .line 169
    return v5

    .line 172
    :cond_21
    if-eqz p4, :cond_2d

    .line 173
    if-eqz p1, :cond_29

    if-eqz v1, :cond_29

    if-eqz p2, :cond_2a

    .line 176
    :cond_29
    return v3

    .line 173
    :cond_2a
    if-eqz v0, :cond_29

    .line 174
    return v4

    .line 180
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :cond_2d
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    return v2
.end method

.method private setTransientBarState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_17

    .line 270
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq v0, v1, :cond_f

    if-ne p1, v1, :cond_15

    .line 271
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 273
    :cond_15
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 268
    :cond_17
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 288
    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "TRANSIENT_BAR_HIDING"

    return-object v0

    .line 289
    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const-string/jumbo v0, "TRANSIENT_BAR_SHOWING"

    return-object v0

    .line 290
    :cond_e
    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    const-string/jumbo v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object v0

    .line 291
    :cond_15
    if-nez p0, :cond_1b

    const-string/jumbo v0, "TRANSIENT_BAR_NONE"

    return-object v0

    .line 292
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 184
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_12

    .line 185
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 187
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_12
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .registers 6
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 111
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_17

    .line 113
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 109
    :cond_16
    :goto_16
    return-void

    .line 115
    :cond_17
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_16

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_16
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_25

    .line 123
    if-eqz p1, :cond_30

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_30

    .line 125
    invoke-static {p1, v2}, Landroid/view/WindowManagerPolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 126
    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_26

    .line 127
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    .line 131
    :goto_1d
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2b

    .line 132
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p2, v1

    .line 141
    .end local v0    # "fl":I
    :cond_25
    :goto_25
    return p2

    .line 129
    .restart local v0    # "fl":I
    :cond_26
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    goto :goto_1d

    .line 134
    :cond_2b
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    goto :goto_25

    .line 137
    .end local v0    # "fl":I
    :cond_30
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr v1, p2

    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v2, p3

    or-int p2, v1, v2

    .line 138
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr v1, p2

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v2, p3

    or-int p2, v1, v2

    goto :goto_25
.end method

.method public checkHiddenLw()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 206
    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 216
    :cond_2b
    return v2

    .line 204
    :cond_2c
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    goto :goto_1e

    .line 208
    :cond_31
    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 209
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    if-eqz v0, :cond_3d

    .line 210
    invoke-virtual {p0, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 211
    iput-boolean v2, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 213
    :cond_3d
    return v3
.end method

.method public checkShowTransientBarLw()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 222
    return v2

    .line 223
    :cond_8
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v0, v3, :cond_d

    .line 225
    return v2

    .line 226
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_12

    .line 228
    return v2

    .line 229
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 231
    return v2

    .line 233
    :cond_1b
    return v3
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 296
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_44

    .line 297
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 299
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 301
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :cond_44
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_3
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_11

    .line 281
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 283
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 279
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isTransientShowRequested()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 102
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTransientShowing()Z
    .registers 3

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setBarShowingLw(Z)Z
    .registers 11
    .param p1, "show"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_7

    return v6

    .line 146
    :cond_7
    if-eqz p1, :cond_11

    iget v5, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_11

    .line 147
    iput-boolean v7, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 148
    return v6

    .line 150
    :cond_11
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    .line 151
    .local v4, "wasVis":Z
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 152
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_42

    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_2b
    move v5, v6

    :goto_2c
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 154
    .local v0, "change":Z
    :goto_30
    iput-boolean v6, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 155
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v4, v3, v5, v0}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v1

    .line 156
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v2

    .line 157
    .local v2, "stateChanged":Z
    if-nez v0, :cond_3f

    move v7, v2

    :cond_3f
    return v7

    .end local v0    # "change":Z
    .end local v1    # "state":I
    .end local v2    # "stateChanged":Z
    :cond_40
    move v5, v7

    .line 152
    goto :goto_2c

    .line 153
    :cond_42
    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_4e

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    move-result v5

    if-eqz v5, :cond_54

    :cond_4e
    move v5, v6

    :goto_4f
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    .restart local v0    # "change":Z
    goto :goto_30

    .end local v0    # "change":Z
    :cond_54
    move v5, v7

    goto :goto_4f
.end method

.method public setShowTransparent(Z)V
    .registers 3
    .param p1, "transparent"    # Z

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_b

    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    .line 86
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 83
    :cond_b
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 79
    return-void
.end method

.method public showTransient()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 91
    :cond_8
    return-void
.end method

.method protected skipAnimation()Z
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public updateVisibilityLw(ZII)I
    .registers 6
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_6

    return p3

    .line 239
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 240
    :cond_12
    if-eqz p1, :cond_4d

    .line 241
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 242
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1f

    .line 243
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 245
    :cond_1f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 250
    :cond_23
    :goto_23
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v0, :cond_33

    .line 251
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    or-int/2addr p3, v0

    .line 252
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v0, :cond_33

    .line 253
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 254
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 257
    :cond_33
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz v0, :cond_3c

    .line 258
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 259
    and-int/lit8 p3, p3, -0x2

    .line 261
    :cond_3c
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p3

    if-nez v0, :cond_46

    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_51

    .line 263
    :cond_46
    :goto_46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 265
    :cond_4c
    return p3

    .line 247
    :cond_4d
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_23

    .line 262
    :cond_51
    or-int v0, p3, p2

    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4c

    goto :goto_46
.end method

.method public wasRecentlyTranslucent()Z
    .registers 5

    .prologue
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
