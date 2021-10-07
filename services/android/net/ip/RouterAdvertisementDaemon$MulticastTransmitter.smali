.class final Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MulticastTransmitter"
.end annotation


# instance fields
.field private final mRandom:Ljava/util/Random;

.field private final mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    .line 660
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 661
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    .line 662
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 660
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    return-void
.end method

.method private getNextMulticastTransmitDelayMs()J
    .registers 5

    .prologue
    .line 713
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelaySec()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextMulticastTransmitDelaySec()I
    .registers 7

    .prologue
    const/16 v5, 0x12c

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "deprecationInProgress":Z
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 696
    :try_start_a
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-get5(Landroid/net/ip/RouterAdvertisementDaemon;)I
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_35

    move-result v2

    const/16 v4, 0x10

    if-ge v2, v4, :cond_19

    .line 698
    const v2, 0x15180

    monitor-exit v3

    return v2

    .line 700
    :cond_19
    :try_start_19
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->isEmpty()Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_35

    move-result v2

    if-eqz v2, :cond_33

    const/4 v0, 0x0

    :goto_26
    monitor-exit v3

    .line 703
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    .line 704
    .local v1, "urgentPending":I
    if-gtz v1, :cond_31

    if-eqz v0, :cond_38

    .line 705
    :cond_31
    const/4 v2, 0x3

    return v2

    .line 700
    .end local v1    # "urgentPending":I
    :cond_33
    const/4 v0, 0x1

    goto :goto_26

    .line 695
    :catchall_35
    move-exception v2

    monitor-exit v3

    throw v2

    .line 708
    .restart local v1    # "urgentPending":I
    :cond_38
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x12c

    return v2
.end method


# virtual methods
.method public hup()V
    .registers 3

    .prologue
    .line 689
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 690
    invoke-virtual {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->interrupt()V

    .line 684
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 666
    :goto_0
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap0(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 668
    :try_start_8
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelayMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_f} :catch_38

    .line 673
    :goto_f
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-get2(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap2(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    .line 674
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 675
    :try_start_21
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->-wrap0(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 678
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap1(Landroid/net/ip/RouterAdvertisementDaemon;)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit v2

    goto :goto_0

    .line 674
    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1

    .line 665
    :cond_37
    return-void

    .line 669
    :catch_38
    move-exception v0

    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_f
.end method
