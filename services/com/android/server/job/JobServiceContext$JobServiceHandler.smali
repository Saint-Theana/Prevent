.class Lcom/android/server/job/JobServiceContext$JobServiceHandler;
.super Landroid/os/Handler;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/job/JobServiceContext;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 369
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 368
    return-void
.end method

.method private closeAndCleanupJobH(Z)V
    .registers 10
    .param p1, "reschedule"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 609
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get6(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 610
    :try_start_9
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_a3

    if-ne v2, v6, :cond_11

    monitor-exit v3

    .line 611
    return-void

    .line 613
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 614
    .local v0, "completedJob":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get5(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobPackageTracker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_a3

    .line 616
    :try_start_20
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get1(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v4}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v4

    .line 617
    iget-object v5, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v5}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 616
    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3d} :catch_a6
    .catchall {:try_start_20 .. :try_end_3d} :catchall_a3

    .line 621
    :goto_3d
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 622
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 624
    :cond_4e
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get4(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 625
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set4(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 626
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set3(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    .line 627
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set1(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    .line 628
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x4

    iput v4, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 629
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 630
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 631
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set0(Lcom/android/server/job/JobServiceContext;Z)Z
    :try_end_85
    .catchall {:try_start_3d .. :try_end_85} :catchall_a3

    monitor-exit v3

    .line 633
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    .line 634
    invoke-virtual {p0, v7}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 635
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 636
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 637
    invoke-virtual {p0, v6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 638
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get3(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/android/server/job/JobCompletedListener;->onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 607
    return-void

    .line 609
    .end local v0    # "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_a3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 618
    .restart local v0    # "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :catch_a6
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_3d
.end method

.method private handleCancelH()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 523
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_3c

    .line 539
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancelling a job without a valid verb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_26
    :pswitch_26
    return-void

    .line 526
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_26

    .line 529
    :pswitch_31
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 531
    return-void

    .line 533
    :cond_38
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    goto :goto_26

    .line 523
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method

.method private handleFinishedH(Z)V
    .registers 6
    .param p1, "reschedule"    # Z

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_38

    .line 503
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    const-string/jumbo v2, "."

    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_32
    return-void

    .line 500
    :pswitch_33
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_32

    .line 497
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method private handleOpTimeoutH()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 546
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_ea

    .line 574
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling timeout for an invalid job state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 575
    const-string/jumbo v2, ", dropping."

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 545
    :goto_36
    return-void

    .line 548
    :pswitch_37
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Time-out while trying to bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 549
    const-string/jumbo v2, ", dropping."

    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_36

    .line 556
    :pswitch_66
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No response from client for onStartJob \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_36

    .line 562
    :pswitch_8e
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No response from client for onStopJob, \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 563
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_36

    .line 568
    :pswitch_b7
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Client timed out while executing (no jobFinished received). sending onStop. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 569
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/job/JobParameters;->setStopReason(I)V

    .line 571
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    goto/16 :goto_36

    .line 546
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_37
        :pswitch_66
        :pswitch_b7
        :pswitch_8e
    .end packed-switch
.end method

.method private handleServiceBoundH()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 430
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v1, :cond_30

    .line 431
    const-string/jumbo v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 432
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v4, v4, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v3, v3, v4

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0, v5}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 434
    return-void

    .line 436
    :cond_30
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 441
    invoke-direct {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 442
    return-void

    .line 445
    :cond_40
    :try_start_40
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 446
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    .line 447
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_57} :catch_58

    .line 426
    :goto_57
    return-void

    .line 448
    :catch_58
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 453
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 453
    const-string/jumbo v3, "\' "

    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57
.end method

.method private handleStartedH(Z)V
    .registers 6
    .param p1, "workOngoing"    # Z

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_56

    .line 484
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 485
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 485
    const-string/jumbo v2, "."

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void

    .line 467
    :pswitch_33
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 468
    if-nez p1, :cond_3f

    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    .line 471
    return-void

    .line 473
    :cond_3f
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 478
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    .line 479
    return-void

    .line 481
    :cond_4f
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    .line 464
    return-void

    .line 465
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_33
    .end packed-switch
.end method

.method private sendStopMessageH()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 585
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    .line 586
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_31

    .line 587
    const-string/jumbo v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-direct {p0, v4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 589
    return-void

    .line 592
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 593
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    .line 594
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_48} :catch_49

    .line 584
    :goto_48
    return-void

    .line 595
    :catch_49
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "JobServiceContext"

    const-string/jumbo v2, "Error sending onStopJob to client."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    invoke-direct {p0, v4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_48
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 374
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_96

    .line 421
    const-string/jumbo v2, "JobServiceContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognised message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_22
    :goto_22
    return-void

    .line 376
    :pswitch_23
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    .line 377
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleServiceBoundH()V

    goto :goto_22

    .line 384
    :pswitch_2c
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    .line 386
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-ne v3, v1, :cond_41

    .line 387
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_3f

    .line 388
    .local v1, "workOngoing":Z
    :goto_3b
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleStartedH(Z)V

    goto :goto_22

    .end local v1    # "workOngoing":Z
    :cond_3f
    move v1, v2

    .line 387
    goto :goto_3b

    .line 389
    :cond_41
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eq v3, v4, :cond_4e

    .line 390
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_22

    .line 391
    :cond_4e
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_57

    move v0, v1

    .line 392
    .local v0, "reschedule":Z
    :goto_53
    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    goto :goto_22

    .end local v0    # "reschedule":Z
    :cond_57
    move v0, v2

    .line 391
    goto :goto_53

    .line 400
    :pswitch_59
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_61

    .line 405
    return-void

    .line 407
    :cond_61
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/job/JobParameters;->setStopReason(I)V

    .line 408
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_87

    .line 409
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    :goto_84
    invoke-static {v3, v2}, Lcom/android/server/job/JobServiceContext;->-set2(Lcom/android/server/job/JobServiceContext;I)I

    .line 412
    :cond_87
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    goto :goto_22

    .line 410
    :cond_8b
    const/4 v2, -0x1

    goto :goto_84

    .line 415
    :pswitch_8d
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleOpTimeoutH()V

    goto :goto_22

    .line 418
    :pswitch_91
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_22

    .line 374
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_2c
        :pswitch_23
        :pswitch_59
        :pswitch_91
    .end packed-switch
.end method
