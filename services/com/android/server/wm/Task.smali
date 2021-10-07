.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# static fields
.field static final BOUNDS_CHANGE_NONE:I = 0x0

.field static final BOUNDS_CHANGE_POSITION:I = 0x1

.field static final BOUNDS_CHANGE_SIZE:I = 0x2

.field static final TAG:Ljava/lang/String;


# instance fields
.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mBounds:Landroid/graphics/Rect;

.field mDeferRemoval:Z

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field private mFullscreen:Z

.field private mHomeTask:Z

.field mOverrideConfig:Landroid/content/res/Configuration;

.field private mPreScrollBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

.field private mResizeMode:I

.field mRotation:I

.field private mScrollValid:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mTaskId:I

.field private final mTempInsetBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "bounds"    # Landroid/graphics/Rect;
    .param p6, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    .line 83
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 101
    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 102
    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 103
    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 104
    iput-object p4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 105
    invoke-direct {p0, p5, p6}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    .line 100
    return-void
.end method

.method private hasWindowsAlive()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1e

    .line 133
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasWindowsAlive()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 134
    const/4 v1, 0x1

    return v1

    .line 132
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 137
    :cond_1e
    return v2
.end method

.method private inCropWindowsResizeMode()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    move v0, v1

    :goto_d
    return v0

    :cond_e
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v2, v0, :cond_c

    goto :goto_d
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I
    .registers 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 212
    if-nez p2, :cond_5

    .line 213
    sget-object p2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 215
    :cond_5
    if-nez p1, :cond_f

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 219
    :cond_f
    if-eqz p1, :cond_3c

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 220
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "non null bounds, but empty configuration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_22
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "null bounds but non empty configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_3c
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    .line 223
    .local v2, "oldFullscreen":Z
    const/4 v3, 0x0

    .line 224
    .local v3, "rotation":I
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 225
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_5d

    .line 226
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 227
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v3, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 228
    if-nez p1, :cond_60

    const/4 v4, 0x1

    :goto_55
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    .line 229
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    if-eqz v4, :cond_5d

    .line 230
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 234
    :cond_5d
    if-nez p1, :cond_62

    .line 236
    return v5

    :cond_60
    move v4, v5

    .line 228
    goto :goto_55

    .line 238
    :cond_62
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    if-ne v2, v4, :cond_73

    iget v4, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v4, v3, :cond_73

    .line 239
    return v5

    .line 242
    :cond_73
    const/4 v0, 0x0

    .line 243
    .local v0, "boundsChange":I
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-ne v4, v5, :cond_84

    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-eq v4, v5, :cond_85

    .line 244
    :cond_84
    const/4 v0, 0x1

    .line 246
    :cond_85
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_9d

    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v4, v5, :cond_9f

    .line 247
    :cond_9d
    or-int/lit8 v0, v0, 0x2

    .line 251
    :cond_9f
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetScrollLocked()V

    .line 255
    iput v3, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 256
    if-eqz v1, :cond_b0

    .line 257
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 259
    :cond_b0
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    if-eqz v4, :cond_b6

    sget-object p2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .end local p2    # "config":Landroid/content/res/Configuration;
    :cond_b6
    iput-object p2, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 260
    return v0
.end method

.method private useCurrentBounds()Z
    .registers 3

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 420
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    if-nez v1, :cond_16

    .line 421
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isTaskResizeableByDockedStack(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 422
    if-nez v0, :cond_18

    .line 424
    :cond_16
    const/4 v1, 0x1

    return v1

    .line 423
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-nez v1, :cond_16

    .line 426
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;IZ)V
    .registers 8
    .param p1, "addPos"    # I
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "resizeMode"    # I
    .param p4, "homeTask"    # Z

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 114
    .local v0, "lastPos":I
    if-lt p1, v0, :cond_18

    .line 115
    move p1, v0

    .line 124
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/AppTokenList;->add(ILjava/lang/Object;)V

    .line 125
    iput-object p0, p2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 126
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 127
    iput p3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 128
    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    .line 112
    return-void

    .line 117
    :cond_18
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_19
    if-ge v1, v0, :cond_9

    if-ge v1, p1, :cond_9

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_2b

    .line 120
    add-int/lit8 p1, p1, 0x1

    .line 117
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method addWindowsWaitingForDrawnIfResizingChanged()V
    .registers 6

    .prologue
    .line 562
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_35

    .line 563
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 564
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "winNdx":I
    :goto_1a
    if-ltz v2, :cond_32

    .line 565
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 566
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 567
    iget-object v4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 562
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 561
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_35
    return-void
.end method

.method alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 9
    .param p1, "adjustedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "alignBottom"    # Z

    .prologue
    const/4 v4, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-ne v1, v2, :cond_e

    .line 342
    :cond_d
    return-void

    .line 345
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 346
    if-eqz p3, :cond_2d

    .line 347
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 348
    .local v0, "offsetY":I
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 352
    .end local v0    # "offsetY":I
    :goto_22
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    .line 353
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 340
    return-void

    .line 350
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_22
.end method

.method applyScrollToAllWindows(II)V
    .registers 8
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 365
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_2c

    .line 366
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 367
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "winNdx":I
    :goto_1a
    if-ltz v2, :cond_29

    .line 368
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 369
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iput p1, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 370
    iput p2, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 367
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 365
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 364
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2c
    return-void
.end method

.method applyScrollToWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    if-eqz v0, :cond_10

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 375
    :cond_10
    return-void
.end method

.method cancelTaskThumbnailTransition()V
    .registers 3

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 672
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 671
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 670
    :cond_1a
    return-void
.end method

.method cancelTaskWindowTransition()V
    .registers 3

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 663
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 662
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 661
    :cond_1a
    return-void
.end method

.method cropWindowsToStackBounds()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 293
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v2, v0, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public dimFullscreen()Z
    .registers 2

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "doublePrefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFullscreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mdr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "appTokens="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mTempInsetBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, "triplePrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_e6
    if-ltz v1, :cond_11c

    .line 801
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 802
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Activity #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v3, p2, v2}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 800
    add-int/lit8 v1, v1, -0x1

    goto :goto_e6

    .line 788
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_11c
    return-void
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 435
    return-void

    .line 440
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 430
    return-void
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 491
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 494
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_21

    .line 495
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v1

    .line 496
    :goto_e
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 497
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 498
    return-void

    .line 495
    :cond_21
    const/4 v1, 0x0

    .local v1, "dockedResizing":Z
    goto :goto_e

    .line 501
    .end local v1    # "dockedResizing":Z
    :cond_23
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    if-nez v2, :cond_43

    .line 508
    if-eqz v1, :cond_34

    .line 509
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 514
    :goto_2e
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 518
    :goto_33
    return-void

    .line 511
    :cond_34
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 512
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_2e

    .line 516
    :cond_43
    iget-object v2, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_33

    .line 524
    :cond_49
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 490
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDragResizeMode()I
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getMaxVisibleBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "foundTop":Z
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_6a

    .line 458
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 460
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v4, :cond_1f

    iget-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v4, :cond_1f

    iget-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_22

    .line 457
    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 463
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 464
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_1f

    .line 467
    if-nez v0, :cond_31

    .line 468
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 469
    const/4 v0, 0x1

    .line 470
    goto :goto_1f

    .line 472
    :cond_31
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_3f

    .line 473
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 475
    :cond_3f
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_4d

    .line 476
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 478
    :cond_4d
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_5b

    .line 479
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 481
    :cond_5b
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_1f

    .line 482
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1f

    .line 485
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_6a
    return v0
.end method

.method getTempInsetBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 279
    return-void
.end method

.method getTopAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 730
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 731
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    .prologue
    .line 735
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 736
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 738
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v2, :cond_1d

    .line 735
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 738
    :cond_1d
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_1a

    .line 739
    return-object v1

    .line 742
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method inDockedWorkspace()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 700
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method inFreeformWorkspace()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 696
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method inHomeStack()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 692
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method inPinnedWorkspace()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 704
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method isDockedInEffect()Z
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inDockedWorkspace()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeableByDockedStack()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method isDragResizing()Z
    .registers 2

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isDragResizing()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method isFloating()Z
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->tasksAreFloating(I)Z

    move-result v0

    return v0
.end method

.method isFullscreen()Z
    .registers 2

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 756
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    return v0

    .line 761
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method isHomeTask()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    return v0
.end method

.method isResizeable()Z
    .registers 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    if-nez v0, :cond_13

    .line 289
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    .line 288
    :goto_10
    return v0

    .line 289
    :cond_11
    const/4 v0, 0x1

    goto :goto_10

    .line 288
    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method isResizeableByDockedStack()Z
    .registers 3

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 709
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 710
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isTaskResizeableByDockedStack(I)Z

    move-result v1

    .line 709
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method isTwoFingerScrollMode()Z
    .registers 2

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/server/wm/Task;->inCropWindowsResizeMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isVisible()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 682
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1e

    .line 683
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 684
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 685
    const/4 v2, 0x1

    return v2

    .line 682
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 688
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_1e
    return v3
.end method

.method moveTaskToStack(Lcom/android/server/wm/TaskStack;Z)V
    .registers 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v0, :cond_5

    .line 159
    return-void

    .line 163
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "moveTask"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x791b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_25

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 167
    :cond_25
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 157
    return-void
.end method

.method moveWindows()V
    .registers 6

    .prologue
    .line 648
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 649
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 650
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "winNdx":I
    :goto_1a
    if-ltz v2, :cond_28

    .line 651
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 653
    .local v1, "win":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 650
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 648
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 647
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2b
    return-void
.end method

.method overridePlayingAppAnimations(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 774
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->overridePlayingAppAnimations(Landroid/view/animation/Animation;)V

    .line 773
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 772
    :cond_18
    return-void
.end method

.method positionTaskInStack(Lcom/android/server/wm/TaskStack;ILandroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 13
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "position"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    .line 171
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eq p1, v4, :cond_24

    .line 174
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, "moveTask"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/16 v5, 0x791b

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 175
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 177
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v4

    invoke-virtual {p1, p0, p2, v4}, Lcom/android/server/wm/TaskStack;->positionTask(Lcom/android/server/wm/Task;IZ)V

    .line 178
    invoke-virtual {p0, p3, p4, v7}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 180
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "activityNdx":I
    :goto_36
    if-ltz v0, :cond_59

    .line 181
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 182
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "winNdx":I
    :goto_48
    if-ltz v2, :cond_56

    .line 183
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 184
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->notifyMovedInStack()V

    .line 182
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 180
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 170
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_59
    return-void
.end method

.method prepareFreezingBounds()V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 324
    return-void
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 6
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-nez v1, :cond_2c

    .line 192
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "removeAppToken: last token"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x791b

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 193
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v1, :cond_2c

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeLocked()V

    .line 197
    :cond_2c
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 201
    return v0
.end method

.method removeLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 143
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 144
    return-void

    .line 147
    :cond_13
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "removeTask"

    aput-object v2, v1, v4

    const/16 v2, 0x791b

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 148
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 150
    .local v0, "content":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_35

    .line 151
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 153
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 140
    return-void
.end method

.method resetDragResizingChangeReported()V
    .registers 6

    .prologue
    .line 540
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 541
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 542
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "winNdx":I
    :goto_1a
    if-ltz v2, :cond_28

    .line 543
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 544
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->resetDragResizingChangeReported()V

    .line 542
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 540
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 539
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2b
    return-void
.end method

.method resetScrollLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    if-eqz v0, :cond_a

    .line 358
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    .line 359
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/Task;->applyScrollToAllWindows(II)V

    .line 361
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 356
    return-void
.end method

.method resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .param p3, "forced"    # Z

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    move-result v0

    .line 306
    .local v0, "boundsChanged":I
    if-eqz p3, :cond_9

    .line 307
    or-int/lit8 v0, v0, 0x2

    .line 309
    :cond_9
    if-nez v0, :cond_c

    .line 310
    return v1

    .line 312
    :cond_c
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 313
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resizeWindows()V

    .line 317
    :goto_14
    const/4 v1, 0x1

    return v1

    .line 315
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->moveWindows()V

    goto :goto_14
.end method

.method resizeWindows()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 609
    iget-object v6, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 610
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v6, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "activityNdx":I
    :goto_d
    if-ltz v0, :cond_69

    .line 611
    iget-object v6, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 615
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    .line 616
    iget-object v5, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 617
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_22
    if-ltz v4, :cond_66

    .line 618
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 619
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_34

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 640
    :cond_34
    :goto_34
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 641
    iput-boolean v7, v3, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 617
    :cond_3c
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 621
    :cond_3f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v6

    if-nez v6, :cond_34

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v7, :cond_34

    .line 635
    iget-object v6, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getBoundsAnimating()Z

    move-result v6

    if-nez v6, :cond_34

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v6

    if-nez v6, :cond_34

    .line 636
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWorkspace()Z

    move-result v6

    if-nez v6, :cond_34

    .line 637
    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowState;->setResizedWhileNotDragResizing(Z)V

    goto :goto_34

    .line 610
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_66
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 608
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_69
    return-void
.end method

.method scrollLocked(Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x1

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    .line 386
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_3a

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 404
    :cond_2c
    :goto_2c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 405
    const/4 v0, 0x0

    return v0

    .line 389
    :cond_3a
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_2c

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2c

    .line 394
    :cond_56
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_72

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2c

    .line 397
    :cond_72
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_2c

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2c

    .line 411
    :cond_8e
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 412
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    .line 413
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->applyScrollToAllWindows(II)V

    .line 414
    return v2
.end method

.method setDragResizing(ZI)V
    .registers 6
    .param p1, "dragResizing"    # Z
    .param p2, "dragResizeMode"    # I

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_3e

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(II)Z

    move-result v0

    if-nez v0, :cond_37

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    const-string/jumbo v2, " dragResizeMode="

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_37
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 534
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 535
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 527
    :cond_3e
    return-void
.end method

.method setResizeable(I)V
    .registers 2
    .param p1, "resizeMode"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 283
    return-void
.end method

.method setSendingToBottom(Z)V
    .registers 4
    .param p1, "toBottom"    # Z

    .prologue
    .line 205
    const/4 v0, 0x0

    .local v0, "appTokenNdx":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_16
    return-void
.end method

.method setTempInsetBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "tempInsetBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 268
    if-eqz p1, :cond_8

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 267
    :goto_7
    return-void

    .line 271
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_7
.end method

.method showForAllUsers()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 678
    .local v0, "tokensCount":I
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    :cond_15
    return v1
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v2, 0x0

    .line 574
    if-nez p1, :cond_4

    .line 575
    return-void

    .line 577
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    if-eqz v1, :cond_e

    .line 578
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    .line 579
    return-void

    .line 581
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v0, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 582
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v1, v0, :cond_19

    .line 583
    return-void

    .line 591
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 593
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 594
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    .line 595
    return-void

    .line 598
    :cond_32
    iget v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 599
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_55

    .line 603
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 604
    iget-object v3, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    .line 603
    const/16 v4, 0x2b

    .line 604
    const/4 v5, 0x1

    .line 603
    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 573
    :cond_55
    return-void
.end method
