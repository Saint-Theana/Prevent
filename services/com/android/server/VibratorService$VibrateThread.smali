.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 687
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 688
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 689
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 690
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 686
    return-void
.end method

.method private delay(J)V
    .registers 12
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 694
    cmp-long v3, p1, v6

    if-lez v3, :cond_13

    .line 695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v0, p1, v4

    .line 698
    .local v0, "bedtime":J
    :goto_c
    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_14

    .line 702
    :goto_f
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_16

    .line 693
    .end local v0    # "bedtime":J
    :cond_13
    return-void

    .line 700
    .restart local v0    # "bedtime":J
    :catch_14
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_f

    .line 705
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v0, v4

    .line 706
    cmp-long v3, p1, v6

    if-lez v3, :cond_13

    goto :goto_c
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 711
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 712
    monitor-enter p0

    .line 713
    :try_start_5
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 714
    .local v5, "pattern":[J
    array-length v4, v5

    .line 715
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 716
    .local v6, "repeat":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    .line 717
    .local v7, "uid":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    .line 718
    .local v8, "usageHint":I
    const/4 v2, 0x0

    .line 719
    .local v2, "index":I
    const-wide/16 v0, 0x0

    .local v0, "duration":J
    move v3, v2

    .line 721
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_22
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_85

    .line 723
    if-ge v3, v4, :cond_2e

    .line 724
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-wide v10, v5, v3

    add-long/2addr v0, v10

    move v3, v2

    .line 728
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_2e
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 729
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v9, :cond_64

    move v2, v3

    .line 749
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_36
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_7f

    monitor-exit p0

    .line 751
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v10

    monitor-enter v10

    .line 752
    :try_start_47
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v9, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v9, p0, :cond_52

    .line 753
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 755
    :cond_52
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_62

    .line 758
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v11, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9, v11}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 759
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_82

    :cond_62
    monitor-exit v10

    .line 710
    return-void

    .line 733
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_64
    if-ge v3, v4, :cond_77

    .line 736
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_68
    aget-wide v0, v5, v3

    .line 737
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_75

    .line 738
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9, v0, v1, v7, v8}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JII)V
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_7f

    :cond_75
    :goto_75
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_22

    .line 741
    :cond_77
    if-gez v6, :cond_7b

    move v2, v3

    .line 742
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_36

    .line 744
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_7b
    move v2, v6

    .line 745
    .end local v3    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v0, 0x0

    goto :goto_75

    .line 712
    .end local v0    # "duration":J
    .end local v2    # "index":I
    .end local v4    # "len":I
    .end local v5    # "pattern":[J
    .end local v6    # "repeat":I
    .end local v7    # "uid":I
    .end local v8    # "usageHint":I
    :catchall_7f
    move-exception v9

    monitor-exit p0

    throw v9

    .line 751
    .restart local v0    # "duration":J
    .restart local v2    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "pattern":[J
    .restart local v6    # "repeat":I
    .restart local v7    # "uid":I
    .restart local v8    # "usageHint":I
    :catchall_82
    move-exception v9

    monitor-exit v10

    throw v9

    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_85
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_36
.end method
