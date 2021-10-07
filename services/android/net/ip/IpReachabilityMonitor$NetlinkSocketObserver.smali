.class final Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpReachabilityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetlinkSocketObserver"
.end annotation


# instance fields
.field private mSocket:Landroid/net/netlink/NetlinkSocket;

.field final synthetic this$0:Landroid/net/ip/IpReachabilityMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    return-void
.end method

.method private constructor <init>(Landroid/net/ip/IpReachabilityMonitor;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/ip/IpReachabilityMonitor;

    .prologue
    .line 448
    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/ip/IpReachabilityMonitor;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/ip/IpReachabilityMonitor;)V

    return-void
.end method

.method private clearNetlinkSocket()V
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    if-eqz v0, :cond_9

    .line 486
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    invoke-virtual {v0}, Landroid/net/netlink/NetlinkSocket;->close()V

    .line 484
    :cond_9
    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .registers 14
    .param p1, "neighMsg"    # Landroid/net/netlink/RtNetlinkNeighborMessage;
    .param p2, "whenMs"    # J

    .prologue
    .line 553
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    move-result-object v3

    .line 554
    .local v3, "ndMsg":Landroid/net/netlink/StructNdMsg;
    if-eqz v3, :cond_10

    iget v6, v3, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v7}, Landroid/net/ip/IpReachabilityMonitor;->-get0(Landroid/net/ip/IpReachabilityMonitor;)I

    move-result v7

    if-eq v6, v7, :cond_11

    .line 555
    :cond_10
    return-void

    .line 558
    :cond_11
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    move-result-object v0

    .line 559
    .local v0, "destination":Ljava/net/InetAddress;
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v6, v0}, Landroid/net/ip/IpReachabilityMonitor;->-wrap0(Landroid/net/ip/IpReachabilityMonitor;Ljava/net/InetAddress;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 560
    return-void

    .line 563
    :cond_1e
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v6

    iget-short v2, v6, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 564
    .local v2, "msgType":S
    iget-short v4, v3, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .line 565
    .local v4, "nudState":S
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NeighborEvent{elapsedMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 566
    const-string/jumbo v7, ", "

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 567
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 567
    const-string/jumbo v7, ", "

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 568
    const-string/jumbo v7, "["

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 568
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    move-result-object v7

    invoke-static {v7}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 568
    const-string/jumbo v7, "], "

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 569
    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 569
    const-string/jumbo v7, ", "

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 570
    invoke-static {v4}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 571
    const-string/jumbo v7, "}"

    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "eventMsg":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v6}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 580
    :try_start_8f
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v6}, Landroid/net/ip/IpReachabilityMonitor;->-get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 582
    const/16 v6, 0x1d

    if-ne v2, v6, :cond_d2

    .line 583
    const/4 v5, 0x0

    .line 585
    :goto_a0
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v6}, Landroid/net/ip/IpReachabilityMonitor;->-get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catchall {:try_start_8f .. :try_end_ad} :catchall_d4

    :cond_ad
    monitor-exit v7

    .line 589
    const/16 v6, 0x20

    if-ne v4, v6, :cond_d1

    .line 590
    const-string/jumbo v6, "IpReachabilityMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ALERT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v6, v1}, Landroid/net/ip/IpReachabilityMonitor;->-wrap2(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)V

    .line 552
    :cond_d1
    return-void

    .line 584
    :cond_d2
    move v5, v4

    .local v5, "value":S
    goto :goto_a0

    .line 579
    .end local v5    # "value":S
    :catchall_d4
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .registers 12
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "whenMs"    # J

    .prologue
    .line 522
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_37

    .line 523
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 524
    .local v1, "position":I
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v0

    .line 525
    .local v0, "nlMsg":Landroid/net/netlink/NetlinkMessage;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v3

    if-nez v3, :cond_38

    .line 526
    :cond_16
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 527
    const-string/jumbo v3, "IpReachabilityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unparsable netlink msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .end local v1    # "position":I
    :cond_37
    :goto_37
    return-void

    .line 531
    .restart local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .restart local v1    # "position":I
    :cond_38
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v3

    iget v2, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 532
    .local v2, "srcPortId":I
    if-eqz v2, :cond_5e

    .line 533
    const-string/jumbo v3, "IpReachabilityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "non-kernel source portId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v5, v2, -0x1

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 537
    :cond_5e
    instance-of v3, v0, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v3, :cond_7d

    .line 538
    const-string/jumbo v3, "IpReachabilityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "netlink error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    :cond_7d
    instance-of v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    if-eqz v3, :cond_0

    .line 547
    check-cast v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    invoke-direct {p0, v0, p2, p3}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    goto/16 :goto_0
.end method

.method private recvKernelReply()Ljava/nio/ByteBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 510
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_7} :catch_11
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v2

    return-object v2

    .line 513
    :catch_9
    move-exception v0

    .line 514
    .local v0, "e":Landroid/system/ErrnoException;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v2, v3, :cond_12

    .line 515
    throw v0

    .line 511
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_11
    move-exception v1

    .line 518
    :cond_12
    const/4 v2, 0x0

    return-object v2
.end method

.method private setupNetlinkSocket()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    .line 493
    new-instance v1, Landroid/net/netlink/NetlinkSocket;

    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-direct {v1, v2}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V

    iput-object v1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    .line 495
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    .line 496
    sget v1, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    const/4 v2, 0x0

    .line 495
    invoke-direct {v0, v2, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    .line 497
    .local v0, "listenAddr":Landroid/system/NetlinkSocketAddress;
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    invoke-virtual {v1, v0}, Landroid/net/netlink/NetlinkSocket;->bind(Landroid/system/NetlinkSocketAddress;)V

    .line 491
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 454
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    const/4 v7, 0x1

    invoke-static {v3, v7}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_27

    monitor-exit v6

    .line 457
    :try_start_e
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->setupNetlinkSocket()V
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_11} :catch_2a
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_11} :catch_2a

    .line 464
    :cond_11
    :goto_11
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-wrap1(Landroid/net/ip/IpReachabilityMonitor;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 466
    :try_start_19
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->recvKernelReply()Ljava/nio/ByteBuffer;
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_19 .. :try_end_1c} :catch_46

    move-result-object v0

    .line 471
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 472
    .local v4, "whenMs":J
    if-eqz v0, :cond_11

    .line 475
    invoke-direct {p0, v0, v4, v5}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_11

    .line 454
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "whenMs":J
    :catchall_27
    move-exception v3

    monitor-exit v6

    throw v3

    .line 458
    :catch_2a
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "IpReachabilityMonitor"

    const-string/jumbo v6, "Failed to suitably initialize a netlink socket"

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_3b
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_43

    monitor-exit v6

    goto :goto_11

    :catchall_43
    move-exception v3

    monitor-exit v6

    throw v3

    .line 467
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_46
    move-exception v1

    .line 468
    .local v1, "e":Landroid/system/ErrnoException;
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-wrap1(Landroid/net/ip/IpReachabilityMonitor;)Z

    move-result v3

    if-eqz v3, :cond_58

    const-string/jumbo v3, "IpReachabilityMonitor"

    const-string/jumbo v6, "ErrnoException: "

    invoke-static {v3, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_58
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    .line 480
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_62
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_6a

    monitor-exit v6

    .line 452
    return-void

    .line 480
    :catchall_6a
    move-exception v3

    monitor-exit v6

    throw v3
.end method
