.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerService$3$-void_handleMessage_android_os_Message_msg_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static synthetic -com_android_server_am_ActivityManagerService$3_lambda$1(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 7
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    const/4 v0, 0x0

    .line 2578
    iget-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_10

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 2559
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 46
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2562
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1f0

    .line 2561
    return-void

    .line 2564
    :pswitch_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 2565
    .local v38, "start":J
    const/16 v31, 0x0

    .line 2566
    .local v31, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v2, :cond_2a

    .line 2568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2569
    new-instance v31, Lcom/android/internal/util/MemInfoReader;

    .end local v31    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-direct/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_7d

    :cond_2a
    monitor-exit v3

    .line 2566
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2572
    if-eqz v31, :cond_e4

    .line 2573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2574
    const-wide/16 v12, 0x0

    .line 2576
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 2577
    :try_start_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v4, Lcom/android/server/am/ActivityManagerService$3$-void_handleMessage_android_os_Message_msg_LambdaImpl0;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$3$-void_handleMessage_android_os_Message_msg_LambdaImpl0;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_83

    move-result-object v40

    .local v40, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v3

    .line 2581
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v14

    .line 2582
    .local v14, "N":I
    const/16 v30, 0x0

    .local v30, "j":I
    :goto_56
    move/from16 v0, v30

    if-ge v0, v14, :cond_9e

    .line 2583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2584
    :try_start_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_9b

    move-result v2

    if-ltz v2, :cond_86

    monitor-exit v3

    .line 2582
    :goto_7a
    add-int/lit8 v30, v30, 0x1

    goto :goto_56

    .line 2566
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v30    # "j":I
    .end local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :catchall_7d
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2576
    .restart local v12    # "nativeTotalPss":J
    :catchall_83
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v14    # "N":I
    .restart local v30    # "j":I
    .restart local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :cond_86
    monitor-exit v3

    .line 2589
    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v2

    add-long/2addr v12, v2

    goto :goto_7a

    .line 2583
    :catchall_9b
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2591
    :cond_9e
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    :try_start_a6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2595
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v26

    .line 2596
    .local v26, "cachedKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v28

    .line 2597
    .local v28, "freeKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v42

    .line 2598
    .local v42, "zramKb":J
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v32

    .line 2599
    .local v32, "kernelKb":J
    const-wide/16 v2, 0x400

    mul-long v2, v2, v26

    const-wide/16 v4, 0x400

    mul-long v4, v4, v28

    const-wide/16 v6, 0x400

    mul-long v6, v6, v42

    .line 2600
    const-wide/16 v8, 0x400

    mul-long v8, v8, v32

    const-wide/16 v10, 0x400

    mul-long/2addr v10, v12

    .line 2599
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v4, v26

    move-wide/from16 v6, v28

    move-wide/from16 v8, v42

    move-wide/from16 v10, v32

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V
    :try_end_e0
    .catchall {:try_start_a6 .. :try_end_e0} :catchall_115

    monitor-exit v15

    .line 2592
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2606
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v26    # "cachedKb":J
    .end local v28    # "freeKb":J
    .end local v30    # "j":I
    .end local v32    # "kernelKb":J
    .end local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v42    # "zramKb":J
    :cond_e4
    const/16 v36, 0x0

    .line 2607
    .local v36, "num":I
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v41, v0

    .line 2613
    .local v41, "tmp":[J
    :cond_eb
    :goto_eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_f0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_157

    .line 2615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v2, :cond_11b

    .line 2618
    :goto_107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_110
    .catchall {:try_start_f0 .. :try_end_110} :catchall_151

    monitor-exit v3

    .line 2613
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2619
    return-void

    .line 2592
    .end local v36    # "num":I
    .end local v41    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v30    # "j":I
    .restart local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    :catchall_115
    move-exception v2

    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2615
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v30    # "j":I
    .end local v40    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .restart local v36    # "num":I
    .restart local v41    # "tmp":[J
    :cond_11b
    :try_start_11b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v2

    .line 2616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Collected PSS of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " processes in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v38

    .line 2616
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2617
    const-string/jumbo v5, "ms"

    .line 2616
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2615
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catchall {:try_start_11b .. :try_end_150} :catchall_151

    goto :goto_107

    .line 2613
    :catchall_151
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2621
    :cond_157
    :try_start_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ProcessRecord;

    .line 2622
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    move/from16 v17, v0

    .line 2623
    .local v17, "procState":I
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v34, v0

    .line 2624
    .local v34, "lastPssTime":J
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1e4

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_1e4

    .line 2625
    const-wide/16 v4, 0x3e8

    add-long v4, v4, v34

    .line 2626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2625
    cmp-long v2, v4, v6

    if-gez v2, :cond_1e4

    .line 2627
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v37, v0
    :try_end_190
    .catchall {:try_start_157 .. :try_end_190} :catchall_151

    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v37, "pid":I
    :goto_190
    monitor-exit v3

    .line 2613
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2633
    if-eqz v16, :cond_eb

    .line 2634
    const/4 v2, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v41

    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v18

    .line 2635
    .local v18, "pss":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1a4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2636
    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-eqz v2, :cond_1de

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1de

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_1de

    .line 2637
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v37

    if-ne v2, v0, :cond_1de

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v2, v4, v34

    if-nez v2, :cond_1de

    .line 2638
    add-int/lit8 v36, v36, 0x1

    .line 2639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    aget-wide v20, v41, v2

    const/4 v2, 0x1

    aget-wide v22, v41, v2

    .line 2640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 2639
    invoke-virtual/range {v15 .. v25}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
    :try_end_1de
    .catchall {:try_start_1a4 .. :try_end_1de} :catchall_1e9

    :cond_1de
    monitor-exit v3

    .line 2635
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_eb

    .line 2629
    .end local v18    # "pss":J
    .end local v37    # "pid":I
    .restart local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_1e4
    const/16 v16, 0x0

    .line 2630
    .local v16, "proc":Lcom/android/server/am/ProcessRecord;
    const/16 v37, 0x0

    .restart local v37    # "pid":I
    goto :goto_190

    .line 2635
    .end local v16    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "pss":J
    :catchall_1e9
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2562
    nop

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
