.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;
.implements Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;


# static fields
.field private static final ADJUSTED_STACK_FRACTION_MIN:F = 0.3f

.field private static final IME_ADJUST_DIM_AMOUNT:F = 0.25f


# instance fields
.field private mAdjustDividerAmount:F

.field private mAdjustImeAmount:F

.field private final mAdjustedBounds:Landroid/graphics/Rect;

.field private mAdjustedForIme:Z

.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBounds:Landroid/graphics/Rect;

.field private final mBoundsAfterRotation:Landroid/graphics/Rect;

.field private mBoundsAnimating:Z

.field mDeferDetach:Z

.field mDensity:I

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDockedStackMinimizeThickness:I

.field private mDragResizing:Z

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mFullscreen:Z

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private mMinimizeAmount:F

.field mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStackId:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAdjustedBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 111
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    .line 140
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 141
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 142
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    const v1, 0x1050028

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    .line 144
    const/16 v0, 0x791c

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 139
    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .registers 21
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    .line 968
    .local v7, "dockedSide":I
    const/4 v14, 0x2

    if-eq v7, v14, :cond_a

    const/4 v14, 0x4

    if-ne v7, v14, :cond_b7

    :cond_a
    const/4 v8, 0x1

    .line 969
    .local v8, "dockedTopOrBottom":Z
    :goto_b
    if-eqz p1, :cond_ba

    if-eqz v8, :cond_ba

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 974
    .local v3, "displayContentRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 977
    .local v2, "contentBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/android/server/wm/DisplayContent;->getContentRect(Landroid/graphics/Rect;)V

    .line 978
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 979
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 981
    .local v9, "imeTop":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v14

    .line 982
    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    if-le v14, v9, :cond_3a

    .line 983
    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 986
    :cond_3a
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v14, v15

    .line 989
    .local v13, "yOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v14}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    .line 991
    .local v4, "dividerWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v14}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    move-result v6

    .line 993
    .local v6, "dividerWidthInactive":I
    const/4 v14, 0x2

    if-ne v7, v14, :cond_bc

    .line 998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v10

    .line 1000
    .local v10, "minTopStackBottom":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v13

    add-int/2addr v14, v4

    sub-int/2addr v14, v6

    .line 999
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1002
    .local v1, "bottom":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1004
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    int-to-float v0, v1

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v16, v17, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    .line 1003
    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    .line 1005
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1032
    .end local v1    # "bottom":I
    :goto_b5
    const/4 v14, 0x1

    return v14

    .line 968
    .end local v2    # "contentBounds":Landroid/graphics/Rect;
    .end local v3    # "displayContentRect":Landroid/graphics/Rect;
    .end local v4    # "dividerWidth":I
    .end local v6    # "dividerWidthInactive":I
    .end local v8    # "dockedTopOrBottom":Z
    .end local v9    # "imeTop":I
    .end local v10    # "minTopStackBottom":I
    .end local v13    # "yOffset":I
    :cond_b7
    const/4 v8, 0x0

    .restart local v8    # "dockedTopOrBottom":Z
    goto/16 :goto_b

    .line 970
    :cond_ba
    const/4 v14, 0x0

    return v14

    .line 1008
    .restart local v2    # "contentBounds":Landroid/graphics/Rect;
    .restart local v3    # "displayContentRect":Landroid/graphics/Rect;
    .restart local v4    # "dividerWidth":I
    .restart local v6    # "dividerWidthInactive":I
    .restart local v9    # "imeTop":I
    .restart local v13    # "yOffset":I
    :cond_bc
    sub-int v5, v6, v4

    .line 1015
    .local v5, "dividerWidthDelta":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v4

    add-int v12, v14, v6

    .line 1017
    .local v12, "topBeforeImeAdjust":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v10

    .line 1019
    .restart local v10    # "minTopStackBottom":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v13

    add-int v15, v10, v6

    .line 1018
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1021
    .local v11, "top":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    .line 1026
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v16, v0

    sub-int v17, v11, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    .line 1027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v17, v17, v18

    .line 1026
    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1025
    add-int v15, v15, v16

    iput v15, v14, Landroid/graphics/Rect;->top:I

    .line 1028
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    iput v11, v14, Landroid/graphics/Rect;->top:I

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int/2addr v15, v11

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b5
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .registers 10
    .param p1, "minimizeAmount"    # F

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1037
    .local v0, "dockSide":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1041
    :cond_12
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3a

    .line 1042
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(Landroid/graphics/Rect;)V

    .line 1043
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 1044
    .local v1, "topInset":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1045
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1046
    int-to-float v4, v1

    mul-float/2addr v4, p1

    sub-float v5, v6, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1045
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1060
    .end local v1    # "topInset":I
    :cond_37
    :goto_37
    return v7

    .line 1038
    :cond_38
    const/4 v3, 0x0

    return v3

    .line 1047
    :cond_3a
    if-ne v0, v7, :cond_65

    .line 1048
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1049
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1050
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1051
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    .line 1052
    sub-float v5, v6, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 1051
    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1050
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1053
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_37

    .line 1054
    .end local v2    # "width":I
    :cond_65
    const/4 v3, 0x3

    if-ne v0, v3, :cond_37

    .line 1055
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1056
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1057
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    .line 1058
    sub-float v5, v6, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 1057
    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1056
    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_37
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "adjustedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 251
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v4, :cond_7

    .line 252
    return-void

    .line 255
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "taskNdx":I
    :goto_f
    if-ltz v2, :cond_41

    .line 256
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 257
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isTwoFingerScrollMode()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 260
    invoke-virtual {v1, v6, v6, v3}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 261
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 262
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->scrollLocked(Landroid/graphics/Rect;)Z

    .line 255
    :goto_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 264
    :cond_2f
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v4, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3f

    const/4 v0, 0x1

    .line 265
    .local v0, "alignBottom":Z
    :goto_3b
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_2c

    .end local v0    # "alignBottom":Z
    :cond_3f
    move v0, v3

    .line 264
    goto :goto_3b

    .line 250
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_41
    return-void
.end method

.method private computeMaxPosition(I)I
    .registers 6
    .param p1, "maxPosition"    # I

    .prologue
    .line 593
    :goto_0
    if-lez p1, :cond_1c

    .line 594
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 596
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 597
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    .line 598
    .local v0, "canShowTmpTask":Z
    :goto_1a
    if-nez v0, :cond_1f

    .line 603
    .end local v0    # "canShowTmpTask":Z
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_1c
    return p1

    .line 596
    .restart local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_1d
    const/4 v0, 0x1

    goto :goto_1a

    .line 601
    .restart local v0    # "canShowTmpTask":Z
    :cond_1f
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private computeMinPosition(II)I
    .registers 7
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .prologue
    .line 574
    :goto_0
    if-ge p1, p2, :cond_1a

    .line 575
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 577
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    .line 579
    .local v0, "canShowTmpTask":Z
    :goto_18
    if-eqz v0, :cond_1d

    .line 584
    .end local v0    # "canShowTmpTask":Z
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_1a
    return p1

    .line 577
    .restart local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_1b
    const/4 v0, 0x1

    goto :goto_18

    .line 582
    .restart local v0    # "canShowTmpTask":Z
    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method static getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 8
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1215
    if-ne p2, v3, :cond_13

    .line 1217
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_11

    .line 1218
    return v4

    .line 1220
    :cond_11
    const/4 v0, 0x4

    return v0

    .line 1222
    :cond_13
    if-ne p2, v4, :cond_24

    .line 1224
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_22

    .line 1225
    return v3

    .line 1227
    :cond_22
    const/4 v0, 0x3

    return v0

    .line 1230
    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method private getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V
    .registers 18
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;
    .param p3, "stackId"    # I
    .param p4, "dockedBounds"    # Landroid/graphics/Rect;
    .param p5, "dockDividerWidth"    # I
    .param p6, "dockOnTopOrLeft"    # Z

    .prologue
    .line 726
    const/4 v0, 0x3

    if-ne p3, v0, :cond_22

    const/4 v8, 0x1

    .line 727
    .local v8, "dockedStack":Z
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_24

    const/4 v10, 0x1

    .line 729
    .local v10, "splitHorizontally":Z
    :goto_f
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 730
    if-eqz v8, :cond_78

    .line 731
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_26

    .line 732
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 733
    return-void

    .line 726
    .end local v8    # "dockedStack":Z
    .end local v10    # "splitHorizontally":Z
    :cond_22
    const/4 v8, 0x0

    .restart local v8    # "dockedStack":Z
    goto :goto_4

    .line 727
    :cond_24
    const/4 v10, 0x0

    .restart local v10    # "splitHorizontally":Z
    goto :goto_f

    .line 739
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    .line 740
    .local v7, "di":Landroid/view/DisplayInfo;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, v7, Landroid/view/DisplayInfo;->rotation:I

    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 741
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 740
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 742
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 743
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 744
    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 746
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_67

    const/4 v5, 0x1

    .line 747
    :goto_53
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move/from16 v4, p5

    .line 742
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v9, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 749
    .local v9, "position":I
    if-eqz p6, :cond_6c

    .line 750
    if-eqz v10, :cond_69

    .line 751
    iput v9, p2, Landroid/graphics/Rect;->right:I

    .line 762
    :goto_66
    return-void

    .line 746
    .end local v9    # "position":I
    :cond_67
    const/4 v5, 0x0

    goto :goto_53

    .line 753
    .restart local v9    # "position":I
    :cond_69
    iput v9, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_66

    .line 756
    :cond_6c
    if-eqz v10, :cond_73

    .line 757
    add-int v0, v9, p5

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_66

    .line 759
    :cond_73
    add-int v0, v9, p5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_66

    .line 766
    .end local v7    # "di":Landroid/view/DisplayInfo;
    .end local v9    # "position":I
    :cond_78
    if-nez p6, :cond_90

    .line 767
    if-eqz v10, :cond_89

    .line 768
    iget v0, p4, Landroid/graphics/Rect;->left:I

    sub-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 779
    :goto_82
    if-eqz p6, :cond_a0

    const/4 v0, 0x0

    :goto_85
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 725
    return-void

    .line 770
    :cond_89
    iget v0, p4, Landroid/graphics/Rect;->top:I

    sub-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_82

    .line 773
    :cond_90
    if-eqz v10, :cond_99

    .line 774
    iget v0, p4, Landroid/graphics/Rect;->right:I

    add-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_82

    .line 776
    :cond_99
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    add-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_82

    .line 779
    :cond_a0
    const/4 v0, 0x1

    goto :goto_85
.end method

.method private repositionDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    .line 436
    .local v0, "dockSide":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->isDockSideAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 437
    return-void

    .line 439
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 440
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    .line 441
    packed-switch v0, :pswitch_data_5e

    .line 434
    :goto_1d
    return-void

    .line 443
    :pswitch_1e
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 444
    .local v1, "movement":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 445
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1d

    .line 448
    .end local v1    # "movement":I
    :pswitch_2b
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 449
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 450
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1d

    .line 453
    .end local v1    # "movement":I
    :pswitch_3e
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 454
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 455
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1d

    .line 458
    .end local v1    # "movement":I
    :pswitch_4b
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 459
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 460
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1d

    .line 441
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_3e
        :pswitch_2b
        :pswitch_4b
    .end packed-switch
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 234
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 235
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v0, 0x0

    .line 236
    .local v0, "adjusted":Z
    :goto_1d
    const/4 v1, 0x0

    .line 237
    .local v1, "insetBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDock()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 238
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 246
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_28
    :goto_28
    if-eqz v0, :cond_47

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    :goto_2c
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 247
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 229
    return-void

    .line 231
    .end local v0    # "adjusted":Z
    :cond_34
    return-void

    :cond_35
    move v0, v3

    .line 235
    goto :goto_1d

    .line 239
    .restart local v0    # "adjusted":Z
    .restart local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_37
    if-eqz v0, :cond_28

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_28

    .line 240
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v2, :cond_44

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .local v1, "insetBounds":Landroid/graphics/Rect;
    goto :goto_28

    .line 243
    .local v1, "insetBounds":Landroid/graphics/Rect;
    :cond_44
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .local v1, "insetBounds":Landroid/graphics/Rect;
    goto :goto_28

    .line 246
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_47
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    goto :goto_2c
.end method

.method private setBounds(Landroid/graphics/Rect;)Z
    .registers 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 271
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 272
    .local v1, "oldFullscreen":Z
    const/4 v2, 0x0

    .line 273
    .local v2, "rotation":I
    const/4 v0, 0x0

    .line 274
    .local v0, "density":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_2c

    .line 275
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 276
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 277
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v0, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 278
    if-nez p1, :cond_2f

    move v3, v4

    :goto_24
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 279
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v3, :cond_2c

    .line 280
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 284
    :cond_2c
    if-nez p1, :cond_31

    .line 286
    return v5

    :cond_2f
    move v3, v5

    .line 278
    goto :goto_24

    .line 288
    :cond_31
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-ne v1, v3, :cond_42

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v3, v2, :cond_42

    .line 289
    return v5

    .line 292
    :cond_42
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_52

    .line 293
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 294
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 297
    :cond_52
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 298
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    .line 299
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    .line 301
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 303
    return v4
.end method

.method private snapDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .registers 21
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    .line 472
    .local v13, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v6

    .line 474
    .local v6, "dividerSize":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v15

    .line 475
    .local v15, "dockSide":I
    move-object/from16 v0, p1

    invoke-static {v0, v15, v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v14

    .line 477
    .local v14, "dividerPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 478
    .local v4, "displayWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v5, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 481
    .local v5, "displayHeight":I
    iget v0, v13, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v17, v0

    .line 482
    .local v17, "rotation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 483
    .local v16, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v3, v0, v4, v5, v1}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 484
    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 486
    const/4 v7, 0x1

    move/from16 v0, v16

    if-ne v0, v7, :cond_7c

    const/4 v7, 0x1

    :goto_63
    move-object/from16 v8, p1

    .line 484
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 487
    .local v2, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v2, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v18

    .line 490
    .local v18, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 491
    iget v10, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    move v8, v15

    move-object/from16 v9, p1

    move v12, v6

    .line 490
    invoke-static/range {v7 .. v12}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 468
    return-void

    .line 486
    .end local v2    # "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v18    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_7c
    const/4 v7, 0x0

    goto :goto_63
.end method

.method private updateAdjustedBounds()V
    .registers 7

    .prologue
    .line 1087
    const/4 v0, 0x0

    .line 1088
    .local v0, "adjust":Z
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2c

    .line 1089
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    move-result v0

    .line 1093
    .end local v0    # "adjust":Z
    :cond_e
    :goto_e
    if-nez v0, :cond_15

    .line 1094
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1096
    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    .line 1098
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-ne v3, p0, :cond_37

    const/4 v2, 0x1

    .line 1099
    .local v2, "isImeTarget":Z
    :goto_23
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_2b

    if-eqz v0, :cond_2b

    if-eqz v2, :cond_39

    .line 1086
    :cond_2b
    :goto_2b
    return-void

    .line 1090
    .end local v2    # "isImeTarget":Z
    .restart local v0    # "adjust":Z
    :cond_2c
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_e

    .line 1091
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .local v0, "adjust":Z
    goto :goto_e

    .line 1098
    .end local v0    # "adjust":Z
    :cond_37
    const/4 v2, 0x0

    .restart local v2    # "isImeTarget":Z
    goto :goto_23

    .line 1100
    :cond_39
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1101
    const/high16 v4, 0x3e800000    # 0.25f

    .line 1100
    mul-float v1, v3, v4

    .line 1102
    .local v1, "alpha":F
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    goto :goto_2b
.end method

.method private updateBoundsAfterConfigChange()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 382
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v5, :cond_8

    .line 385
    return v3

    .line 387
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v2, v5, Landroid/view/DisplayInfo;->rotation:I

    .line 388
    .local v2, "newRotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v0, v5, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 390
    .local v0, "newDensity":I
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v5, v2, :cond_1d

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v5, v0, :cond_1d

    .line 392
    return v3

    .line 395
    :cond_1d
    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v5, :cond_25

    .line 397
    invoke-direct {p0, v8}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 399
    return v3

    .line 402
    :cond_25
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 404
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5d

    .line 405
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskStack;->repositionDockedStackAfterRotation(Landroid/graphics/Rect;)V

    .line 406
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/graphics/Rect;)V

    .line 407
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v1

    .line 411
    .local v1, "newDockSide":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 412
    if-eq v1, v4, :cond_51

    const/4 v6, 0x2

    if-ne v1, v6, :cond_65

    .line 411
    :cond_51
    :goto_51
    invoke-virtual {v5, v3, v8}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 416
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    .line 419
    .end local v1    # "newDockSide":I
    :cond_5d
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 420
    return v4

    .restart local v1    # "newDockSide":I
    :cond_65
    move v3, v4

    .line 414
    goto :goto_51
.end method

.method private useCurrentBounds()Z
    .registers 2

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-nez v0, :cond_10

    .line 317
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_12

    .line 320
    :cond_10
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_10

    .line 322
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;ZZ)V

    .line 511
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .prologue
    .line 522
    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/TaskStack;->positionTask(Lcom/android/server/wm/Task;IZ)V

    .line 521
    return-void

    .line 522
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v2, 0x1

    .line 1107
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1108
    :cond_14
    return-void

    .line 1111
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v1, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 1112
    .local v0, "insetBounds":Landroid/graphics/Rect;
    :goto_1b
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_30

    move v1, v2

    :goto_25
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1113
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1106
    return-void

    .line 1111
    .end local v0    # "insetBounds":Landroid/graphics/Rect;
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .restart local v0    # "insetBounds":Landroid/graphics/Rect;
    goto :goto_1b

    .line 1112
    :cond_30
    const/4 v1, 0x0

    goto :goto_25
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .registers 11
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v8, 0x3

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attachDisplayContent: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_e
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 648
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animation background stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 648
    invoke-direct {v0, v1, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 651
    const/4 v2, 0x0

    .line 652
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskStack;

    .line 653
    .local v7, "dockedStack":Lcom/android/server/wm/TaskStack;
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v0, v8, :cond_58

    .line 654
    if-eqz v7, :cond_54

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 655
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 673
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_54
    :goto_54
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    .line 642
    return-void

    .line 660
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    :cond_58
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "bounds":Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 661
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 662
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 663
    if-eqz v7, :cond_6e

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 666
    :cond_6e
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    if-nez v0, :cond_88

    const/4 v6, 0x1

    .line 668
    .local v6, "dockedOnTopOrLeft":Z
    :goto_75
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 669
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    move-object v0, p0

    .line 668
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    goto :goto_54

    .line 666
    .end local v6    # "dockedOnTopOrLeft":Z
    :cond_88
    const/4 v6, 0x0

    .restart local v6    # "dockedOnTopOrLeft":Z
    goto :goto_75
.end method

.method beginImeAdjustAnimation()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 943
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_9
    if-ltz v0, :cond_22

    .line 944
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 945
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 946
    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 947
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->addWindowsWaitingForDrawnIfResizingChanged()V

    .line 943
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 942
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_22
    return-void
.end method

.method close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 847
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_c

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 849
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 851
    :cond_c
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 846
    return-void
.end method

.method detachDisplay()V
    .registers 9

    .prologue
    .line 796
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/16 v7, 0x791e

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 798
    const/4 v3, 0x0

    .line 799
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_10
    if-ltz v4, :cond_49

    .line 800
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 801
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "appNdx":I
    :goto_22
    if-ltz v0, :cond_46

    .line 802
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 803
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "winNdx":I
    :goto_32
    if-ltz v5, :cond_43

    .line 806
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 807
    const/4 v3, 0x1

    .line 803
    add-int/lit8 v5, v5, -0x1

    goto :goto_32

    .line 801
    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 799
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 811
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_49
    if-eqz v3, :cond_52

    .line 812
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 815
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->close()V

    .line 795
    return-void
.end method

.method public dimFullscreen()Z
    .registers 2

    .prologue
    .line 1166
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mStackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mDeferDetach="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mFullscreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9c

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mMinimizeAmout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    :cond_9c
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_f1

    .line 1129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustedForIme=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustImeAmount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustDividerAmount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    :cond_f1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11a

    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustedBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1136
    :cond_11a
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_122
    if-ltz v1, :cond_146

    .line 1137
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1136
    add-int/lit8 v1, v1, -0x1

    goto :goto_122

    .line 1139
    :cond_146
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1143
    :cond_17e
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c0

    .line 1144
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1145
    const-string/jumbo v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_197
    if-ltz v0, :cond_1c0

    .line 1147
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 1148
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1149
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1150
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 1151
    const-string/jumbo v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1146
    add-int/lit8 v0, v0, -0x1

    goto :goto_197

    .line 1120
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1c0
    return-void
.end method

.method endImeAdjustAnimation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 956
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "j":I
    :goto_9
    if-ltz v0, :cond_1a

    .line 957
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 956
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 955
    :cond_1a
    return-void
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 156
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v1, :cond_6

    .line 157
    return-object v2

    .line 160
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_2a

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 162
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    return-object v1

    .line 160
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 165
    :cond_2a
    return-object v2
.end method

.method forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    .prologue
    .line 1306
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1308
    :try_start_3
    iget-object v0, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1309
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_b
    if-ltz v1, :cond_38

    .line 1310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1311
    .local v4, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_1b
    if-ltz v3, :cond_35

    .line 1312
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v2, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1313
    .local v2, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1316
    iget-object v5, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3c

    .line 1311
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 1309
    .end local v2    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1320
    .end local v3    # "winNdx":I
    .end local v4    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_38
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1305
    return-void

    .line 1319
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :catchall_3c
    move-exception v5

    .line 1320
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1319
    throw v5
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    :goto_13
    return-void

    .line 334
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 342
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 325
    return-void
.end method

.method public getBoundsAnimating()Z
    .registers 2

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 423
    return-void
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 347
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDockSide()I
    .registers 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSide(Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, -0x1

    .line 1203
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1206
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_14

    .line 1207
    return v3

    .line 1204
    :cond_13
    return v3

    .line 1209
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1210
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1211
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, v1, v0}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    return v1
.end method

.method public getForceScaleToCrop()Z
    .registers 2

    .prologue
    .line 1365
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public getFullScreenBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getContentRect(Landroid/graphics/Rect;)V

    .line 1356
    return-void
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .registers 6
    .param p1, "displayContentRect"    # Landroid/graphics/Rect;
    .param p2, "originalStackBottom"    # I

    .prologue
    .line 962
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 963
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    .line 962
    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMinimizeDistance()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1068
    .local v0, "dockSide":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1069
    return v3

    .line 1072
    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1d

    .line 1073
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(Landroid/graphics/Rect;)V

    .line 1074
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 1075
    .local v1, "topInset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    return v2

    .line 1076
    .end local v1    # "topInset":I
    :cond_1d
    const/4 v2, 0x1

    if-eq v0, v2, :cond_23

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2d

    .line 1077
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v2, v3

    return v2

    .line 1079
    :cond_2d
    return v3
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 310
    return-void
.end method

.method getRawFullscreen()Z
    .registers 2

    .prologue
    .line 1161
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    return v0
.end method

.method getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Z)V
    .registers 12
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "ignoreVisibility"    # Z

    .prologue
    const/4 v1, 0x3

    .line 677
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 678
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_17

    .line 679
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 680
    return-void

    .line 683
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskStack;

    .line 684
    .local v8, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-nez v8, :cond_2c

    .line 686
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 687
    const-string/jumbo v1, "Calling getStackDockedModeBoundsLocked() when there is no docked stack."

    .line 686
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_2c
    if-nez p2, :cond_34

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 697
    :cond_34
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    .line 698
    .local v7, "dockedSide":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_61

    .line 700
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get valid docked side for docked stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 702
    return-void

    .line 693
    .end local v7    # "dockedSide":I
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 694
    return-void

    .line 705
    .restart local v7    # "dockedSide":I
    :cond_61
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 706
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 707
    const/4 v0, 0x2

    if-eq v7, v0, :cond_73

    const/4 v0, 0x1

    if-ne v7, v0, :cond_88

    :cond_73
    const/4 v6, 0x1

    .line 708
    .local v6, "dockedOnTopOrLeft":Z
    :goto_74
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 709
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    move-object v0, p0

    move-object v2, p1

    .line 708
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    .line 676
    return-void

    .line 707
    .end local v6    # "dockedOnTopOrLeft":Z
    :cond_88
    const/4 v6, 0x0

    .restart local v6    # "dockedOnTopOrLeft":Z
    goto :goto_74
.end method

.method getTasks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMovementAnimations()Z
    .registers 2

    .prologue
    .line 1361
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->hasMovementAnimations(I)Z

    move-result v0

    return v0
.end method

.method isAdjustedForIme()Z
    .registers 2

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    return v0
.end method

.method isAdjustedForMinimizedDock()Z
    .registers 3

    .prologue
    .line 935
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isAdjustedForMinimizedDockedStack()Z
    .registers 3

    .prologue
    .line 1117
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isAnimating()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 496
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_9
    if-ltz v2, :cond_4c

    .line 497
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 498
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1b
    if-ltz v1, :cond_49

    .line 499
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 500
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2b
    if-ltz v4, :cond_46

    .line 501
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 502
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v6

    if-nez v6, :cond_41

    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v6, :cond_43

    .line 503
    :cond_41
    const/4 v6, 0x1

    return v6

    .line 500
    :cond_43
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 498
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 496
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 508
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4c
    return v7
.end method

.method isAnimatingForIme()Z
    .registers 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isDragResizing()Z
    .registers 2

    .prologue
    .line 1259
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    return v0
.end method

.method isFullscreen()Z
    .registers 2

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1171
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    return v0

    .line 1176
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method isFullscreenBounds(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 217
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isVisibleLocked()Z
    .registers 2

    .prologue
    .line 1235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    move-result v0

    return v0
.end method

.method isVisibleLocked(Z)Z
    .registers 8
    .param p1, "ignoreKeyguard"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1239
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1240
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v4, :cond_4a

    const/4 v2, 0x0

    .line 1241
    .local v2, "keyguardOn":Z
    :goto_14
    if-nez p1, :cond_20

    if-eqz v2, :cond_20

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->isAllowedOverLockscreen(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1246
    :cond_20
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_28
    if-ltz v0, :cond_55

    .line 1247
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1248
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v4, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_3a
    if-ltz v1, :cond_52

    .line 1249
    iget-object v4, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v4, :cond_4f

    .line 1250
    const/4 v4, 0x1

    return v4

    .line 1240
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "keyguardOn":Z
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_4a
    const/4 v2, 0x1

    .restart local v2    # "keyguardOn":Z
    goto :goto_14

    .line 1239
    .end local v2    # "keyguardOn":Z
    :cond_4c
    const/4 v2, 0x0

    .restart local v2    # "keyguardOn":Z
    goto :goto_14

    .line 1243
    :cond_4e
    return v5

    .line 1248
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_3a

    .line 1246
    :cond_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 1255
    .end local v1    # "j":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_55
    return v5
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 613
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 610
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 606
    return-void
.end method

.method public moveToFullscreen()V
    .registers 5

    .prologue
    .line 1349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1347
    :goto_a
    return-void

    .line 1350
    :catch_b
    move-exception v0

    .line 1351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public onAnimationEnd()V
    .registers 4

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1334
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1335
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1b

    monitor-exit v2

    .line 1337
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1339
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationEnded()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1e

    .line 1332
    :cond_1a
    :goto_1a
    return-void

    .line 1333
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1340
    :catch_1e
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1a
.end method

.method public onAnimationStart()V
    .registers 3

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1327
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit v0

    .line 1325
    return-void

    .line 1326
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method onConfigurationChanged()Z
    .registers 2

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateBoundsAfterConfigChange()Z

    move-result v0

    return v0
.end method

.method overridePlayingAppAnimations(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1377
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->overridePlayingAppAnimations(Landroid/view/animation/Animation;)V

    .line 1376
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1375
    :cond_18
    return-void
.end method

.method positionTask(Lcom/android/server/wm/Task;IZ)V
    .registers 13
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "showForAllUsers"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 527
    if-nez p3, :cond_78

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    .line 528
    :goto_c
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 529
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 530
    .local v3, "stackSize":I
    const/4 v2, 0x0

    .line 531
    .local v2, "minPosition":I
    move v1, v3

    .line 533
    .local v1, "maxPosition":I
    if-eqz v0, :cond_7a

    .line 534
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    move-result v2

    .line 539
    :goto_1f
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 543
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 546
    iget-object v7, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eq v7, p0, :cond_33

    .line 547
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->resetScrollLocked()V

    .line 549
    :cond_33
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 550
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v7}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    .line 551
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p2, v7, :cond_7f

    move v4, v6

    .line 552
    .local v4, "toTop":Z
    :goto_45
    if-eqz v4, :cond_4c

    .line 553
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, p0, v6}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 556
    :cond_4c
    iget v7, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->windowsAreScaleable(I)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 560
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/TaskStack;->forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V

    .line 564
    :goto_57
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    if-eqz v4, :cond_65

    move v5, v6

    :cond_65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v7, v6

    const/16 v5, 0x791a

    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 525
    return-void

    .line 527
    .end local v1    # "maxPosition":I
    .end local v2    # "minPosition":I
    .end local v3    # "stackSize":I
    .end local v4    # "toTop":Z
    :cond_78
    const/4 v0, 0x1

    .local v0, "canShowTask":Z
    goto :goto_c

    .line 536
    .end local v0    # "canShowTask":Z
    .restart local v1    # "maxPosition":I
    .restart local v2    # "minPosition":I
    .restart local v3    # "stackSize":I
    :cond_7a
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    move-result v1

    goto :goto_1f

    :cond_7f
    move v4, v5

    .line 551
    goto :goto_45

    .line 562
    .restart local v4    # "toTop":Z
    :cond_81
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/TaskStack;->forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V

    goto :goto_57
.end method

.method prepareFreezingTaskBounds()V
    .registers 4

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_8
    if-ltz v1, :cond_18

    .line 210
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 211
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    .line 209
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 208
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_18
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v4, 0x0

    .line 626
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 627
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_1c

    .line 628
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 629
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 631
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 633
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "appNdx":I
    :goto_24
    if-ltz v0, :cond_3c

    .line 634
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 635
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_39

    .line 636
    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 637
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 633
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 624
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3c
    return-void
.end method

.method resetAdjustedForIme(Z)V
    .registers 6
    .param p1, "adjustBoundsNow"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 905
    if-eqz p1, :cond_1c

    .line 906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 907
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 908
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 909
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 910
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 911
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 912
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    .line 904
    :goto_1b
    return-void

    .line 914
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    goto :goto_1b
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 2

    .prologue
    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 818
    return-void
.end method

.method resetDockedStackToMiddle()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 783
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v1, v4, :cond_20

    .line 784
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a docked stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 787
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 789
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 790
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Z)V

    .line 791
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 782
    return-void
.end method

.method setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V
    .registers 6
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 860
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 862
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_d

    if-eqz p2, :cond_16

    .line 863
    :cond_d
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 864
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 865
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 866
    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    .line 859
    :cond_16
    return-void
.end method

.method setAdjustedForMinimizedDock(F)Z
    .registers 3
    .param p1, "minimizeAmount"    # F

    .prologue
    .line 925
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_11

    .line 926
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    .line 927
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 928
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    move-result v0

    return v0

    .line 930
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .registers 9
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .prologue
    .line 824
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 825
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_c

    .line 826
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_25

    .line 827
    :cond_c
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 828
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    .line 829
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v2, v0, -0x1

    .line 830
    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const-wide/16 v4, 0x0

    .line 829
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 823
    :cond_25
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 14
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/Configuration;>;"
    .local p3, "taskBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p4, "taskTempInsetBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 181
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_d
    if-ltz v3, :cond_74

    .line 182
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 183
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 184
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_52

    .line 185
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 186
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTwoFingerScrollMode()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 192
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 193
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 194
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->scrollLocked(Landroid/graphics/Rect;)Z

    .line 181
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :goto_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 196
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3f
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 198
    if-eqz p4, :cond_50

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 197
    :goto_4c
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    goto :goto_3c

    :cond_50
    move-object v4, v5

    .line 199
    goto :goto_4c

    .line 202
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_52
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No config for task: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", is there a mismatch with AM?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 205
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_74
    const/4 v4, 0x1

    return v4
.end method

.method setDragResizingLocked(Z)V
    .registers 4
    .param p1, "resizing"    # Z

    .prologue
    .line 1263
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    if-ne v1, p1, :cond_5

    .line 1264
    return-void

    .line 1266
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    .line 1267
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_1f

    .line 1268
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 1267
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 1262
    :cond_1f
    return-void
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 1287
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1288
    :try_start_6
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_26

    if-nez v1, :cond_c

    monitor-exit v2

    .line 1289
    return v4

    .line 1291
    :cond_c
    :try_start_c
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1c

    .line 1292
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v3, "Attempt to use pinned stack resize animation helper onnon pinned stack"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_26

    monitor-exit v2

    .line 1294
    return v4

    :cond_1c
    monitor-exit v2

    .line 1298
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_29

    .line 1302
    :goto_24
    const/4 v1, 0x1

    return v1

    .line 1287
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1299
    :catch_29
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_24
.end method

.method public setSize(Landroid/graphics/Rect;)Z
    .registers 11
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1274
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1275
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1d

    if-nez v1, :cond_d

    monitor-exit v0

    .line 1276
    return v2

    :cond_d
    monitor-exit v0

    .line 1280
    :try_start_e
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1c} :catch_20

    .line 1283
    :goto_1c
    return v8

    .line 1274
    :catchall_1d
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1281
    :catch_20
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1c
.end method

.method switchUser()V
    .registers 6

    .prologue
    .line 835
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 836
    .local v2, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_7
    if-ge v1, v2, :cond_30

    .line 837
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 838
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 839
    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 840
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    add-int/lit8 v2, v2, -0x1

    .line 836
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 834
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_30
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAdjustForIme(FFZ)Z
    .registers 5
    .param p1, "adjustAmount"    # F
    .param p2, "adjustDividerAmount"    # F
    .param p3, "force"    # Z

    .prologue
    .line 887
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    .line 888
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_19

    .line 889
    :cond_c
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 890
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 891
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 892
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked(Z)Z

    move-result v0

    return v0

    .line 887
    :cond_19
    if-nez p3, :cond_c

    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method updateDisplayInfo(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 352
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v3, :cond_6

    .line 353
    return-void

    .line 356
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_e
    if-ltz v2, :cond_20

    .line 357
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    .line 356
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 359
    :cond_20
    if-eqz p1, :cond_26

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 361
    return-void

    .line 362
    :cond_26
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v3, :cond_2e

    .line 363
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 364
    return-void

    .line 367
    :cond_2e
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 368
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v1, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 369
    .local v1, "newRotation":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v0, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 370
    .local v0, "newDensity":I
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v3, v1, :cond_52

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v3, v0, :cond_52

    .line 371
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 351
    :cond_52
    return-void
.end method
