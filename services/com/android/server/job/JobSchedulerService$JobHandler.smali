.class Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;
    }
.end annotation


# instance fields
.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->areJobConstraintsNotSatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 1084
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1183
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService$JobHandler;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

    .line 1279
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService$JobHandler;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

    .line 1083
    return-void
.end method

.method private areJobConstraintsNotSatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 1329
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 13
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v7, 0x0

    .line 1299
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v4

    .line 1300
    .local v4, "jobReady":Z
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1301
    .local v3, "jobPending":Z
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v8, p1}, Lcom/android/server/job/JobSchedulerService;->-wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 1303
    .local v2, "jobActive":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    .line 1304
    .local v5, "userId":I
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v8, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    .line 1307
    .local v6, "userStarted":Z
    :try_start_1f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 1308
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/high16 v10, 0x10000000

    .line 1307
    invoke-interface {v8, v9, v10, v5}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2c} :catch_3b

    move-result-object v8

    if-eqz v8, :cond_39

    const/4 v0, 0x1

    .line 1320
    .local v0, "componentPresent":Z
    :goto_30
    if-eqz v6, :cond_38

    if-eqz v0, :cond_38

    if-eqz v4, :cond_38

    if-eqz v3, :cond_41

    :cond_38
    :goto_38
    return v7

    .line 1307
    .end local v0    # "componentPresent":Z
    :cond_39
    const/4 v0, 0x0

    .restart local v0    # "componentPresent":Z
    goto :goto_30

    .line 1310
    .end local v0    # "componentPresent":Z
    :catch_3b
    move-exception v1

    .line 1311
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 1320
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "componentPresent":Z
    :cond_41
    if-nez v2, :cond_38

    const/4 v7, 0x1

    goto :goto_38
.end method

.method private maybeQueueReadyJobsForExecutionLockedH()V
    .registers 3

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1286
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->postProcess()V

    .line 1281
    return-void
.end method

.method private maybeRunPendingJobsH()V
    .registers 3

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1342
    :try_start_5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-wrap3(Lcom/android/server/job/JobSchedulerService;)V

    .line 1343
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActive()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 1337
    return-void

    .line 1338
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queueReadyJobsForExecutionLockedH()V
    .registers 3

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 1142
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1143
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    .line 1144
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->postProcess()V

    .line 1137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1089
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1090
    :try_start_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1c

    if-nez v1, :cond_e

    monitor-exit v2

    .line 1091
    return-void

    :cond_e
    monitor-exit v2

    .line 1094
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_82

    .line 1128
    :goto_14
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeRunPendingJobsH()V

    .line 1130
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 1088
    return-void

    .line 1089
    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1096
    :pswitch_1f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1097
    :try_start_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 1100
    .local v0, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1105
    :cond_34
    :goto_34
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_52

    .end local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :goto_37
    monitor-exit v2

    goto :goto_14

    .line 1101
    .restart local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 1100
    if-eqz v1, :cond_34

    .line 1102
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1103
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_52

    goto :goto_34

    .line 1096
    .end local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :catchall_52
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1109
    :pswitch_55
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1110
    :try_start_5a
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v1, :cond_67

    .line 1112
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_64

    goto :goto_37

    .line 1109
    :catchall_64
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1115
    :cond_67
    :try_start_67
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeQueueReadyJobsForExecutionLockedH()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_64

    goto :goto_37

    .line 1120
    :pswitch_6b
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1121
    :try_start_70
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_75

    monitor-exit v1

    goto :goto_14

    .line 1120
    :catchall_75
    move-exception v2

    monitor-exit v1

    throw v2

    .line 1125
    :pswitch_78
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v2, v1, v3}, Lcom/android/server/job/JobSchedulerService;->-wrap4(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_14

    .line 1094
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_55
        :pswitch_78
        :pswitch_6b
    .end packed-switch
.end method
