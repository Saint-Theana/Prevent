.class public abstract Lcom/android/server/notification/RankingReconsideration;
.super Ljava/lang/Object;
.source "RankingReconsideration.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CANCELLED:I = 0x3

.field private static final DONE:I = 0x2

.field private static final IMMEDIATE:J = 0x0L

.field private static final RUNNING:I = 0x1

.field private static final START:I


# instance fields
.field private mDelay:J

.field protected mKey:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p2, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    .line 43
    iput-object p1, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 41
    return-void
.end method


# virtual methods
.method public abstract applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x0

    .line 69
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    if-nez v0, :cond_a

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_a
    return v1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isDone()Z
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public run()V
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    if-nez v0, :cond_12

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 55
    invoke-virtual {p0}, Lcom/android/server/notification/RankingReconsideration;->work()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    .line 58
    monitor-enter p0

    .line 59
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/notification/RankingReconsideration;->notifyAll()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    monitor-exit p0

    .line 51
    :cond_12
    return-void

    .line 58
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract work()V
.end method
