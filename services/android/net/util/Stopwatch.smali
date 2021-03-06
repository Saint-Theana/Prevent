.class public Landroid/net/util/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private mStartTimeMs:J

.field private mStopTimeMs:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isStarted()Z
    .registers 5

    .prologue
    .line 30
    iget-wide v0, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isStopped()Z
    .registers 5

    .prologue
    .line 34
    iget-wide v0, p0, Landroid/net/util/Stopwatch;->mStopTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public lap()J
    .registers 5

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 67
    :cond_e
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    .line 73
    iput-wide v0, p0, Landroid/net/util/Stopwatch;->mStopTimeMs:J

    .line 71
    return-void
.end method

.method public start()Landroid/net/util/Stopwatch;
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    .line 48
    :cond_c
    return-object p0
.end method

.method public stop()J
    .registers 5

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/util/Stopwatch;->mStopTimeMs:J

    .line 57
    :cond_c
    iget-wide v0, p0, Landroid/net/util/Stopwatch;->mStopTimeMs:J

    iget-wide v2, p0, Landroid/net/util/Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
