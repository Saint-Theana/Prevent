.class public Lcom/android/server/policy/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastFlingTime:J

.field private mMouseHoveringAtEdge:Z

.field private mOverscroller:Landroid/widget/OverScroller;

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .prologue
    const/16 v1, 0x20

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 53
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    .line 54
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    .line 55
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 69
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 70
    const-string/jumbo v0, "callbacks"

    invoke-static {v0, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .line 71
    const-string/jumbo v0, "context"

    invoke-static {v0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    const v1, 0x105001c

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 73
    iget v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 68
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 164
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 165
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    .line 168
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    .line 169
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 170
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 171
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 163
    :cond_23
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1c

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1c
    return-object p1
.end method

.method private detectSwipe(IJFF)I
    .registers 16
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v8, 0x4

    const-wide/16 v6, 0x1f4

    .line 216
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    aget v2, v4, p1

    .line 217
    .local v2, "fromX":F
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    aget v3, v4, p1

    .line 218
    .local v3, "fromY":F
    iget-object v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v4, v4, p1

    sub-long v0, p2, v4

    .line 221
    .local v0, "elapsed":J
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_26

    .line 222
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p5, v4

    if-lez v4, :cond_26

    .line 223
    cmp-long v4, v0, v6

    if-gez v4, :cond_26

    .line 224
    const/4 v4, 0x1

    return v4

    .line 226
    :cond_26
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3f

    .line 227
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, p5, v4

    if-gez v4, :cond_3f

    .line 228
    cmp-long v4, v0, v6

    if-gez v4, :cond_3f

    .line 229
    const/4 v4, 0x2

    return v4

    .line 231
    :cond_3f
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_53

    .line 232
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p4, v4

    if-lez v4, :cond_53

    .line 233
    cmp-long v4, v0, v6

    if-gez v4, :cond_53

    .line 234
    return v8

    .line 236
    :cond_53
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_6c

    .line 237
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, p4, v4

    if-gez v4, :cond_6c

    .line 238
    cmp-long v4, v0, v6

    if-gez v4, :cond_6c

    .line 239
    const/4 v4, 0x3

    return v4

    .line 241
    :cond_6c
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_80

    .line 242
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p4, v4

    if-lez v4, :cond_80

    .line 243
    cmp-long v4, v0, v6

    if-gez v4, :cond_80

    .line 244
    return v8

    .line 246
    :cond_80
    const/4 v4, 0x0

    return v4
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .registers 22
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 192
    .local v15, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 193
    .local v17, "pointerCount":I
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_a
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_69

    .line 194
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 195
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v3

    .line 196
    .local v3, "i":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_66

    .line 197
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_24
    if-ge v14, v15, :cond_48

    .line 198
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    .line 199
    .local v4, "time":J
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 200
    .local v6, "x":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .local v7, "y":F
    move-object/from16 v2, p0

    .line 201
    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 202
    .local v19, "swipe":I
    if-eqz v19, :cond_45

    .line 203
    return v19

    .line 197
    :cond_45
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 206
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v19    # "swipe":I
    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 207
    .restart local v19    # "swipe":I
    if-eqz v19, :cond_66

    .line 208
    return v19

    .line 193
    .end local v14    # "h":I
    .end local v19    # "swipe":I
    :cond_66
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 212
    .end local v3    # "i":I
    .end local v18    # "pointerId":I
    :cond_69
    const/4 v2, 0x0

    return v2
.end method

.method private findIndex(I)I
    .registers 6
    .param p1, "pointerId"    # I

    .prologue
    const/4 v3, -0x1

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_10

    .line 179
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_d

    .line 180
    return v0

    .line 178
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    :cond_10
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v2, 0x20

    if-eq v1, v2, :cond_18

    if-ne p1, v3, :cond_19

    .line 184
    :cond_18
    return v3

    .line 186
    :cond_19
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    .line 187
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 94
    iget-object v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 96
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_e8

    .line 92
    :cond_19
    :goto_19
    :pswitch_19
    return-void

    .line 98
    :pswitch_1a
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 100
    iput v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 101
    invoke-direct {p0, p1, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 102
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v1, :cond_2e

    .line 103
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    .line 104
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 106
    :cond_2e
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    goto :goto_19

    .line 109
    :pswitch_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 110
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v3, :cond_19

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_52

    :goto_46
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 112
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v1, :cond_19

    .line 114
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_19

    :cond_52
    move v1, v2

    .line 111
    goto :goto_46

    .line 119
    :pswitch_54
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v3, :cond_19

    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 121
    .local v0, "swipe":I
    if-nez v0, :cond_5f

    move v2, v1

    :cond_5f
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 122
    if-ne v0, v1, :cond_69

    .line 124
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_19

    .line 125
    :cond_69
    const/4 v1, 0x2

    if-ne v0, v1, :cond_72

    .line 127
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_19

    .line 128
    :cond_72
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7b

    .line 130
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_19

    .line 131
    :cond_7b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 133
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    goto :goto_19

    .line 138
    .end local v0    # "swipe":I
    :pswitch_84
    const/16 v3, 0x2002

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 139
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v3, :cond_a1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_a1

    .line 140
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    .line 141
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_19

    .line 142
    :cond_a1
    iget-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v3, :cond_bb

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_bb

    .line 143
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    .line 144
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_19

    .line 145
    :cond_bb
    iget-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v1, :cond_19

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_19

    .line 147
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 148
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_19

    .line 154
    :pswitch_dd
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 156
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    goto/16 :goto_19

    .line 96
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_dd
        :pswitch_54
        :pswitch_dd
        :pswitch_19
        :pswitch_34
        :pswitch_19
        :pswitch_84
    .end packed-switch
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;)V

    invoke-direct {v1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 88
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    .line 85
    return-void
.end method
