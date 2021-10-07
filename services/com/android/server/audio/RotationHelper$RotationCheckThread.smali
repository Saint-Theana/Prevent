.class final Lcom/android/server/audio/RotationHelper$RotationCheckThread;
.super Ljava/lang/Thread;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotationCheckThread"
.end annotation


# instance fields
.field private final WAIT_TIMES_MS:[I

.field private final mCounterLock:Ljava/lang/Object;

.field private mWaitCounter:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 176
    const-string/jumbo v0, "RotationCheck"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    .line 175
    return-void

    .line 171
    nop

    :array_18
    .array-data 4
        0xa
        0x14
        0x32
        0x64
        0x64
        0xc8
        0xc8
        0x1f4
    .end array-data
.end method


# virtual methods
.method beginCheck()V
    .registers 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    const/4 v2, 0x0

    :try_start_4
    iput v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b

    monitor-exit v1

    .line 184
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->start()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_a} :catch_e

    .line 179
    :goto_a
    return-void

    .line 180
    :catchall_b
    move-exception v2

    monitor-exit v1

    throw v2

    .line 185
    :catch_e
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_a
.end method

.method endCheck()V
    .registers 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 188
    return-void

    .line 189
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 195
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2f

    .line 197
    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v3

    .line 198
    :try_start_a
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    iget-object v4, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2a

    .line 199
    iget-object v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    iget v4, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    aget v1, v2, v4

    .line 200
    .local v1, "waitTimeMs":I
    :goto_17
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_2c

    monitor-exit v3

    .line 203
    if-lez v1, :cond_0

    .line 204
    int-to-long v2, v1

    :try_start_21
    invoke-static {v2, v3}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->sleep(J)V

    .line 205
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_0

    .line 207
    :catch_28
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "waitTimeMs":I
    :cond_2a
    const/4 v1, 0x0

    .restart local v1    # "waitTimeMs":I
    goto :goto_17

    .line 197
    .end local v1    # "waitTimeMs":I
    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 194
    :cond_2f
    return-void
.end method
