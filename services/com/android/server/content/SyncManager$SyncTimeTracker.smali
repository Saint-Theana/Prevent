.class Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    .line 2292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    .line 2288
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$SyncTimeTracker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .registers 7

    .prologue
    monitor-enter p0

    .line 2311
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v2, :cond_9

    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    monitor-exit p0

    return-wide v2

    .line 2313
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2314
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    monitor-exit p0

    return-wide v2

    .end local v0    # "now":J
    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update()V
    .registers 9

    .prologue
    monitor-enter p0

    .line 2298
    :try_start_1
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    .line 2299
    .local v0, "isSyncInProgress":Z
    :goto_c
    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2a

    if-ne v0, v1, :cond_14

    monitor-exit p0

    return-void

    .line 2298
    .end local v0    # "isSyncInProgress":Z
    :cond_12
    const/4 v0, 0x1

    .restart local v0    # "isSyncInProgress":Z
    goto :goto_c

    .line 2300
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2301
    .local v2, "now":J
    if-eqz v0, :cond_20

    .line 2302
    iput-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    .line 2306
    :goto_1c
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_2a

    monitor-exit p0

    .line 2297
    return-void

    .line 2304
    :cond_20
    :try_start_20
    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v6, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2a

    goto :goto_1c

    .end local v0    # "isSyncInProgress":Z
    .end local v2    # "now":J
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method
