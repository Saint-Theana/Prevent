.class Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;
.super Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final ICMPV4_ECHO_REQUEST:I = 0x8

.field private static final ICMPV6_ECHO_REQUEST:I = 0x80

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final TIMEOUT_RECV:I = 0x12c

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mIcmpType:I

.field private final mProtocol:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 440
    return-void
.end method

.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 425
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 427
    iget v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_46

    .line 428
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 429
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 430
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string/jumbo v1, "ICMPv6"

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 437
    :goto_1a
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dst{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mTarget:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 424
    return-void

    .line 432
    :cond_46
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 433
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 434
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string/jumbo v1, "ICMPv4"

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    goto :goto_1a
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_14

    .line 450
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 451
    return-void

    .line 455
    :cond_14
    :try_start_14
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_21} :catch_e4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_e4

    .line 460
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " src{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->getSocketAddressString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 463
    const/16 v1, 0x8

    new-array v10, v1, [B

    .line 464
    iget v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput-byte v1, v10, v2

    .line 467
    .local v10, "icmpPacket":[B
    const/4 v0, 0x0

    .line 468
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 469
    :goto_79
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get1(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v4

    const-wide/16 v6, 0x190

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_bd

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 471
    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, v10, v1

    .line 473
    :try_start_92
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v2, v10

    const/4 v3, 0x0

    invoke-static {v1, v10, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_99
    .catch Landroid/system/ErrnoException; {:try_start_92 .. :try_end_99} :catch_ef
    .catch Ljava/io/InterruptedIOException; {:try_start_92 .. :try_end_99} :catch_ef

    .line 480
    const/16 v1, 0x200

    :try_start_9b
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 481
    .local v11, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 483
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_bd
    .catch Landroid/system/ErrnoException; {:try_start_9b .. :try_end_bd} :catch_fa
    .catch Ljava/io/InterruptedIOException; {:try_start_9b .. :try_end_bd} :catch_fa

    .line 489
    .end local v11    # "reply":Ljava/nio/ByteBuffer;
    :cond_bd
    :goto_bd
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_e0

    .line 490
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 493
    :cond_e0
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->close()V

    .line 445
    return-void

    .line 456
    .end local v0    # "count":I
    .end local v10    # "icmpPacket":[B
    :catch_e4
    move-exception v9

    .line 457
    .local v9, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 458
    return-void

    .line 474
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v10    # "icmpPacket":[B
    :catch_ef
    move-exception v9

    .line 475
    .restart local v9    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto :goto_bd

    .line 485
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_fa
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto/16 :goto_79
.end method
