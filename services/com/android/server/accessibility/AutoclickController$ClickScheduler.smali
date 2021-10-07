.class final Lcom/android/server/accessibility/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickScheduler"
.end annotation


# static fields
.field private static final MOVEMENT_SLOPE:D = 20.0


# instance fields
.field private mActive:Z

.field private mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mDelay:I

.field private mEventPolicyFlags:I

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mMetaState:I

.field private mScheduledClickTime:J

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final synthetic this$0:Lcom/android/server/accessibility/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/accessibility/AutoclickController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 284
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 285
    iput p3, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 286
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 280
    return-void
.end method

.method private cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "useAsAnchor"    # Z

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    .line 381
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 383
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 384
    iput p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 386
    if-eqz p3, :cond_20

    .line 387
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 388
    .local v0, "pointerIndex":I
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 379
    .end local v0    # "pointerIndex":I
    :cond_20
    return-void
.end method

.method private detectMovement(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 407
    iget-object v6, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-nez v6, :cond_6

    .line 408
    return v5

    .line 410
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 411
    .local v4, "pointerIndex":I
    iget-object v6, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float v2, v6, v7

    .line 412
    .local v2, "deltaX":F
    iget-object v6, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float v3, v6, v7

    .line 413
    .local v3, "deltaY":F
    float-to-double v6, v2

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 414
    .local v0, "delta":D
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_2b

    const/4 v5, 0x1

    :cond_2b
    return v5
.end method

.method private rescheduleClick(I)V
    .registers 8
    .param p1, "delay"    # I

    .prologue
    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 357
    .local v0, "clickTime":J
    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_14

    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 358
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 359
    return-void

    .line 362
    :cond_14
    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_1d

    .line 363
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    :cond_1d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 367
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 369
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method private resetInternalState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 394
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_f

    .line 395
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 396
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 398
    :cond_f
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 392
    return-void
.end method

.method private sendClick()V
    .registers 22

    .prologue
    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-static {v4}, Lcom/android/server/accessibility/AutoclickController;->-get0(Lcom/android/server/accessibility/AutoclickController;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v4

    if-nez v4, :cond_11

    .line 422
    :cond_10
    return-void

    .line 425
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .line 427
    .local v19, "pointerIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-nez v4, :cond_32

    .line 428
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 432
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v4, :cond_5b

    .line 435
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 438
    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 443
    .local v2, "now":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    .line 442
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 444
    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-wide v4, v2

    .line 442
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 448
    .local v18, "downEvent":Landroid/view/MotionEvent;
    invoke-static/range {v18 .. v18}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    .line 449
    .local v20, "upEvent":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-static {v4}, Lcom/android/server/accessibility/AutoclickController;->-get0(Lcom/android/server/accessibility/AutoclickController;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1, v5}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 452
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-static {v4}, Lcom/android/server/accessibility/AutoclickController;->-get0(Lcom/android/server/accessibility/AutoclickController;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1, v5}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 455
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 420
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v0, :cond_5

    .line 325
    return-void

    .line 327
    :cond_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 328
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 293
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    .line 294
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void

    .line 298
    :cond_13
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->sendClick()V

    .line 299
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 290
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClickScheduler: { active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    const-string/jumbo v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    const-string/jumbo v1, ", scheduledClickTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 464
    const-string/jumbo v1, ", anchor={x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 465
    const-string/jumbo v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string/jumbo v1, ", metastate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string/jumbo v1, ", policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    const-string/jumbo v1, ", lastMotionEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 315
    .local v0, "moved":Z
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1a

    move v1, v0

    :goto_f
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    .line 317
    if-eqz v0, :cond_19

    .line 318
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->rescheduleClick(I)V

    .line 311
    :cond_19
    return-void

    .line 315
    :cond_1a
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public updateDelay(I)V
    .registers 2
    .param p1, "delay"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 343
    return-void
.end method

.method public updateMetaState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 334
    return-void
.end method
