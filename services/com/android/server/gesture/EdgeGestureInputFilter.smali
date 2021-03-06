.class public Lcom/android/server/gesture/EdgeGestureInputFilter;
.super Ljava/lang/Object;
.source "EdgeGestureInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;,
        Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-gesture-EdgeGestureInputFilter$StateSwitchesValues:[I = null

.field private static final DEBUG:Z = false

.field private static final DEBUG_INPUT:Z = false

.field private static final SYSTRACE:Z = false

.field private static final TAG:Ljava/lang/String; = "EdgeGestureInputFilter"


# instance fields
.field private mDeviceId:I

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Landroid/view/IInputFilterHost;

.field private final mLock:Ljava/lang/Object;

.field private mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

.field private mMotionEventQueueCountDebug:I

.field private mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

.field private volatile mPositions:I

.field private volatile mSensitivity:I

.field private mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

.field private mSyntheticDownTime:J

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTracker:Lcom/android/server/gesture/EdgeGestureTracker;


# direct methods
.method static synthetic -get0(Lcom/android/server/gesture/EdgeGestureInputFilter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic -getcom-android-server-gesture-EdgeGestureInputFilter$StateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->-com-android-server-gesture-EdgeGestureInputFilter$StateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->-com-android-server-gesture-EdgeGestureInputFilter$StateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->values()[Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DETECTING:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_51

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DROP:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_4f

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_4d

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_4b

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_49

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->SYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_47

    :goto_44
    sput-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->-com-android-server-gesture-EdgeGestureInputFilter$StateSwitchesValues:[I

    return-object v0

    :catch_47
    move-exception v1

    goto :goto_44

    :catch_49
    move-exception v1

    goto :goto_3b

    :catch_4b
    move-exception v1

    goto :goto_32

    :catch_4d
    move-exception v1

    goto :goto_29

    :catch_4f
    move-exception v1

    goto :goto_20

    :catch_51
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lcom/android/server/gesture/EdgeGestureInputFilter;Lcom/android/server/gesture/EdgeGestureInputFilter$State;)Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    .registers 2

    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 151
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 167
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 168
    new-array v1, v4, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 169
    new-array v1, v4, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 172
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHandler:Landroid/os/Handler;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/server/gesture/EdgeGestureTracker;

    .line 176
    const v2, 0x1050166

    .line 175
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 177
    const v3, 0x1050164

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 178
    const v4, 0x1050165

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 175
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/gesture/EdgeGestureTracker;-><init>(III)V

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    .line 179
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    new-instance v2, Lcom/android/server/gesture/EdgeGestureInputFilter$1;

    invoke-direct {v2, p0}, Lcom/android/server/gesture/EdgeGestureInputFilter$1;-><init>(Lcom/android/server/gesture/EdgeGestureInputFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/gesture/EdgeGestureTracker;->setOnActivationListener(Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v5

    .line 188
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v5

    .line 171
    return-void
.end method

.method private cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 391
    invoke-static {p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    move-result-object v0

    .line 392
    .local v0, "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    if-nez v1, :cond_13

    .line 393
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 397
    :goto_a
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 398
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    .line 390
    return-void

    .line 395
    :cond_13
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    iput-object v0, v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    goto :goto_a
.end method

.method private clearAndResetStateLocked(ZZ)V
    .registers 9
    .param p1, "force"    # Z
    .param p2, "shift"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 357
    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    if-ne v0, v1, :cond_b

    .line 358
    return-void

    .line 360
    :cond_b
    invoke-static {}, Lcom/android/server/gesture/EdgeGestureInputFilter;->-getcom-android-server-gesture-EdgeGestureInputFilter$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 379
    :goto_1a
    :pswitch_1a
    iget-wide v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4d

    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    :goto_22
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 354
    return-void

    .line 365
    :pswitch_25
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureTracker;->reset()V

    .line 369
    :pswitch_2a
    invoke-direct {p0, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendDelayedMotionEventsLocked(Z)V

    goto :goto_1a

    .line 373
    :pswitch_2e
    const-string/jumbo v0, "EdgeGestureInputFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Quit POSTSYNTHESIZE without ACTION_UP from ACTION_DOWN at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    iget-wide v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 373
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iput-wide v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    goto :goto_1a

    .line 379
    :cond_4d
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    goto :goto_22

    .line 360
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1a
        :pswitch_1a
        :pswitch_2a
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method

.method private clearDelayedMotionEventsLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 434
    :goto_1
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    if-eqz v1, :cond_11

    .line 435
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    iget-object v0, v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 436
    .local v0, "next":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->recycle()V

    .line 437
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    goto :goto_1

    .line 439
    .end local v0    # "next":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    :cond_11
    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 440
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    .line 433
    return-void
.end method

.method private getTempPointerCoordsWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 7
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 463
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v3

    .line 464
    .local v1, "oldSize":I
    if-ge v1, p1, :cond_11

    .line 465
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 466
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 467
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_11
    move v0, v1

    .local v0, "i":I
    :goto_12
    if-ge v0, p1, :cond_20

    .line 470
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 472
    :cond_20
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 7
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 476
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v3

    .line 477
    .local v1, "oldSize":I
    if-ge v1, p1, :cond_11

    .line 478
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 479
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 480
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_11
    move v0, v1

    .local v0, "i":I
    :goto_12
    if-ge v0, p1, :cond_20

    .line 483
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 485
    :cond_20
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private processDeviceSwitch(ILandroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_18

    .line 275
    iput p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mDeviceId:I

    .line 276
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_d
    invoke-direct {p0, v0, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    .line 278
    invoke-direct {p0, p2, p3}, Lcom/android/server/gesture/EdgeGestureInputFilter;->processMotionEvent(Landroid/view/MotionEvent;I)V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 273
    :goto_14
    return-void

    .line 276
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0

    .line 281
    :cond_18
    invoke-direct {p0, p2, p3}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_14
.end method

.method private processMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 288
    .local v0, "action":I
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_b
    invoke-static {}, Lcom/android/server/gesture/EdgeGestureInputFilter;->-getcom-android-server-gesture-EdgeGestureInputFilter$StateSwitchesValues()[I

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v4}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v4

    aget v2, v2, v4
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_3b

    packed-switch v2, :pswitch_data_92

    :cond_1a
    :goto_1a
    monitor-exit v3

    .line 285
    return-void

    .line 291
    :pswitch_1c
    if-nez v0, :cond_37

    .line 292
    :try_start_1e
    iget v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mPositions:I

    if-eqz v2, :cond_2c

    .line 293
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    iget v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mPositions:I

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSensitivity:I

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/gesture/EdgeGestureTracker;->start(Landroid/view/MotionEvent;II)Z

    move-result v1

    .line 295
    .local v1, "hit":Z
    :cond_2c
    if-eqz v1, :cond_37

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 298
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DETECTING:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_3b

    monitor-exit v3

    .line 299
    return-void

    .line 302
    .end local v1    # "hit":Z
    :cond_37
    :try_start_37
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_1a

    .line 288
    :catchall_3b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 305
    :pswitch_3e
    :try_start_3e
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 306
    if-ne v0, v5, :cond_4d

    .line 307
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/gesture/EdgeGestureTracker;->move(Landroid/view/MotionEvent;)Z
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_3b

    move-result v2

    if-eqz v2, :cond_4d

    monitor-exit v3

    .line 309
    return-void

    .line 315
    :cond_4d
    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_4f
    invoke-direct {p0, v2, v4}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_1a

    .line 318
    :pswitch_53
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 319
    if-eq v0, v5, :cond_1a

    .line 320
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_1a

    .line 324
    :pswitch_5e
    if-ne v0, v5, :cond_6b

    .line 325
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearDelayedMotionEventsLocked()V

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendSynthesizedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 327
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    goto :goto_1a

    .line 333
    :cond_6b
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_1a

    .line 337
    :pswitch_71
    iget-wide v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 338
    if-eq v0, v6, :cond_7a

    if-ne v0, v7, :cond_82

    .line 339
    :cond_7a
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 340
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 342
    :cond_82
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_1a

    .line 345
    :pswitch_86
    if-eq v0, v6, :cond_8a

    if-ne v0, v7, :cond_1a

    .line 346
    :cond_8a
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearDelayedMotionEventsLocked()V

    .line 347
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    :try_end_91
    .catchall {:try_start_4f .. :try_end_91} :catchall_3b

    goto :goto_1a

    .line 289
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_86
        :pswitch_1c
        :pswitch_53
        :pswitch_71
        :pswitch_5e
    .end packed-switch
.end method

.method private sendDelayedMotionEventsLocked(Z)V
    .registers 11
    .param p1, "shift"    # Z

    .prologue
    const/4 v8, 0x0

    .line 405
    :goto_1
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    if-eqz v1, :cond_4f

    .line 406
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 407
    .local v0, "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 412
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    .line 416
    if-eqz p1, :cond_47

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->cachedTimeMillis:J

    sub-long v6, v2, v4

    .line 418
    .local v6, "offset":J
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2c

    .line 419
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 421
    :cond_2c
    iget-object v2, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->policyFlags:I

    iget-wide v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendMotionEventWithOffsetLocked(Landroid/view/MotionEvent;IJJ)V

    .line 422
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    .line 423
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 428
    .end local v6    # "offset":J
    :cond_43
    :goto_43
    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->recycle()V

    goto :goto_1

    .line 426
    :cond_47
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget v2, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->policyFlags:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_43

    .line 430
    .end local v0    # "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    :cond_4f
    iput-object v8, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 404
    return-void
.end method

.method private sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 382
    :goto_5
    return-void

    .line 385
    :catch_6
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method private sendMotionEventWithOffsetLocked(Landroid/view/MotionEvent;IJJ)V
    .registers 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "downTime"    # J
    .param p5, "offset"    # J

    .prologue
    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 449
    .local v7, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/gesture/EdgeGestureInputFilter;->getTempPointerCoordsWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 450
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/gesture/EdgeGestureInputFilter;->getTempPointerPropertiesWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 451
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_12
    move/from16 v0, v18

    if-ge v0, v7, :cond_2b

    .line 452
    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 453
    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 451
    add-int/lit8 v18, v18, 0x1

    goto :goto_12

    .line 455
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    add-long v4, v2, p5

    .line 456
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    .line 457
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-wide/from16 v2, p3

    .line 456
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 447
    return-void
.end method

.method private sendSynthesizedMotionEventLocked(Landroid/view/MotionEvent;I)V
    .registers 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_81

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 493
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    .line 493
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 495
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    .line 492
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 497
    .local v20, "down":Landroid/view/MotionEvent;
    const-string/jumbo v4, "EdgeGestureInputFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Synthesized event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 488
    .end local v20    # "down":Landroid/view/MotionEvent;
    :goto_80
    return-void

    .line 501
    :cond_81
    const-string/jumbo v4, "EdgeGestureInputFilter"

    const-string/jumbo v5, "Could not synthesize MotionEvent, this will drop all following events!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 507
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dropSequence()Z
    .registers 4

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_3
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    if-ne v0, v2, :cond_10

    .line 222
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DROP:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 223
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_10
    monitor-exit v1

    .line 226
    const/4 v0, 0x0

    return v0

    .line 220
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v2}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPositions=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mPositions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mQueue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " items"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_68

    monitor-exit v1

    .line 529
    return-void

    .line 530
    :catchall_68
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public filterInputEvent(Landroid/view/InputEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit16 v3, v3, 0x1002

    .line 244
    const/16 v4, 0x1002

    .line 243
    if-ne v3, v4, :cond_21

    .line 245
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_21

    .line 253
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 254
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    .line 255
    .local v1, "deviceId":I
    iget v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mDeviceId:I

    if-eq v1, v3, :cond_28

    .line 256
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->processDeviceSwitch(ILandroid/view/MotionEvent;I)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_3a

    .line 266
    :goto_1d
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 238
    return-void

    .line 246
    .end local v1    # "deviceId":I
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_21
    :try_start_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3a

    .line 266
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 247
    return-void

    .line 258
    .restart local v1    # "deviceId":I
    .restart local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_28
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-nez v3, :cond_36

    .line 259
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3a

    .line 260
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_32
    invoke-direct {p0, v4, v5}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3f

    :try_start_35
    monitor-exit v3

    .line 263
    :cond_36
    invoke-direct {p0, v2, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->processMotionEvent(Landroid/view/MotionEvent;I)V
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3a

    goto :goto_1d

    .line 265
    .end local v1    # "deviceId":I
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_3a
    move-exception v3

    .line 266
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 265
    throw v3

    .line 259
    .restart local v1    # "deviceId":I
    .restart local v2    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v3

    throw v4
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_3a
.end method

.method public install(Landroid/view/IInputFilterHost;)V
    .registers 5
    .param p1, "host"    # Landroid/view/IInputFilterHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 516
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit v0

    .line 511
    return-void

    .line 516
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public uninstall()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 522
    return-void
.end method

.method public unlockFilter()Z
    .registers 4

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_3
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    if-ne v0, v2, :cond_10

    .line 212
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->SYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 213
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_10
    monitor-exit v1

    .line 216
    const/4 v0, 0x0

    return v0

    .line 210
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateDisplay(Landroid/view/Display;Landroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_3
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/gesture/EdgeGestureTracker;->updateDisplay(Landroid/view/Display;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 192
    return-void

    .line 193
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updatePositions(I)V
    .registers 2
    .param p1, "positions"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mPositions:I

    .line 199
    return-void
.end method

.method public updateSensitivity(I)V
    .registers 2
    .param p1, "sensitivity"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSensitivity:I

    .line 204
    return-void
.end method
