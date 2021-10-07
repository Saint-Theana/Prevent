.class final Lcom/android/server/am/AppErrorResult;
.super Ljava/lang/Object;
.source "AppErrorResult.java"


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    .line 19
    return-void
.end method


# virtual methods
.method public get()I
    .registers 3

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v1, :cond_b

    .line 32
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorResult;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    goto :goto_1

    .line 33
    :catch_9
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_b
    monitor-exit p0

    .line 37
    iget v1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    return v1

    .line 29
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public set(I)V
    .registers 3
    .param p1, "res"    # I

    .prologue
    .line 21
    monitor-enter p0

    .line 22
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    .line 23
    iput p1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorResult;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
