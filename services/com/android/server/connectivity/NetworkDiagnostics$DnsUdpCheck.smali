.class Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;
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
    name = "DnsUdpCheck"
.end annotation


# static fields
.field private static final DNS_SERVER_PORT:I = 0x35

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final RR_TYPE_A:I = 0x1

.field private static final RR_TYPE_AAAA:I = 0x1c

.field private static final TIMEOUT_RECV:I = 0x1f4

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mQueryType:I

.field private final mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 520
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 506
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    .line 523
    iget v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_3c

    .line 524
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    .line 529
    :goto_16
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DNS UDP dst{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mTarget:Ljava/net/InetAddress;

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

    .line 519
    return-void

    .line 526
    :cond_3c
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    goto :goto_16
.end method

.method private getDnsQueryPacket(Ljava/lang/String;)[B
    .registers 11
    .param p1, "sixRandomDigits"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x63

    const/16 v7, 0x2d

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 591
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 592
    .local v0, "rnd":[B
    const/16 v1, 0x36

    new-array v1, v1, [B

    .line 593
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 594
    const/4 v2, 0x2

    aput-byte v5, v1, v2

    aput-byte v4, v1, v6

    .line 595
    const/4 v2, 0x4

    aput-byte v4, v1, v2

    const/4 v2, 0x5

    aput-byte v5, v1, v2

    .line 596
    const/4 v2, 0x6

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    .line 597
    const/16 v2, 0x8

    aput-byte v4, v1, v2

    const/16 v2, 0x9

    aput-byte v4, v1, v2

    .line 598
    const/16 v2, 0xa

    aput-byte v4, v1, v2

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    .line 599
    const/16 v2, 0x11

    const/16 v3, 0xc

    aput-byte v2, v1, v3

    aget-byte v2, v0, v4

    const/16 v3, 0xd

    aput-byte v2, v1, v3

    aget-byte v2, v0, v5

    const/16 v3, 0xe

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v3, 0xf

    aput-byte v2, v1, v3

    aget-byte v2, v0, v6

    const/16 v3, 0x10

    aput-byte v2, v1, v3

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x11

    aput-byte v2, v1, v3

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/16 v3, 0x12

    aput-byte v2, v1, v3

    .line 600
    const/16 v2, 0x13

    aput-byte v7, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x14

    aput-byte v2, v1, v3

    const/16 v2, 0x6e

    const/16 v3, 0x15

    aput-byte v2, v1, v3

    const/16 v2, 0x64

    const/16 v3, 0x16

    aput-byte v2, v1, v3

    const/16 v2, 0x72

    const/16 v3, 0x17

    aput-byte v2, v1, v3

    const/16 v2, 0x6f

    const/16 v3, 0x18

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x19

    aput-byte v2, v1, v3

    const/16 v2, 0x64

    const/16 v3, 0x1a

    aput-byte v2, v1, v3

    const/16 v2, 0x1b

    aput-byte v7, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x1c

    aput-byte v2, v1, v3

    const/16 v2, 0x73

    const/16 v3, 0x1d

    aput-byte v2, v1, v3

    .line 601
    const/4 v2, 0x6

    const/16 v3, 0x1e

    aput-byte v2, v1, v3

    const/16 v2, 0x6d

    const/16 v3, 0x1f

    aput-byte v2, v1, v3

    const/16 v2, 0x65

    const/16 v3, 0x20

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x21

    aput-byte v2, v1, v3

    const/16 v2, 0x72

    const/16 v3, 0x22

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x23

    aput-byte v2, v1, v3

    const/16 v2, 0x24

    aput-byte v8, v1, v2

    .line 602
    const/4 v2, 0x7

    const/16 v3, 0x25

    aput-byte v2, v1, v3

    const/16 v2, 0x67

    const/16 v3, 0x26

    aput-byte v2, v1, v3

    const/16 v2, 0x73

    const/16 v3, 0x27

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x28

    aput-byte v2, v1, v3

    const/16 v2, 0x61

    const/16 v3, 0x29

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x2a

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x2b

    aput-byte v2, v1, v3

    const/16 v2, 0x2c

    aput-byte v8, v1, v2

    .line 603
    aput-byte v6, v1, v7

    const/16 v2, 0x2e

    aput-byte v8, v1, v2

    const/16 v2, 0x6f

    const/16 v3, 0x2f

    aput-byte v2, v1, v3

    const/16 v2, 0x6d

    const/16 v3, 0x30

    aput-byte v2, v1, v3

    .line 604
    const/16 v2, 0x31

    aput-byte v4, v1, v2

    .line 605
    const/16 v2, 0x32

    aput-byte v4, v1, v2

    iget v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    int-to-byte v2, v2

    const/16 v3, 0x33

    aput-byte v2, v1, v3

    .line 606
    const/16 v2, 0x34

    aput-byte v4, v1, v2

    const/16 v2, 0x35

    aput-byte v5, v1, v2

    .line 592
    return-object v1
.end method

.method private responseCodeStr(I)Ljava/lang/String;
    .registers 4
    .param p1, "rcode"    # I

    .prologue
    .line 511
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->values()[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 512
    :catch_b
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_14

    .line 538
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 539
    return-void

    .line 543
    :cond_14
    :try_start_14
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x35

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->setupSocket(IIJJI)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_22} :catch_131
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_131

    .line 548
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " src{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->getSocketAddressString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 551
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    const v2, 0xdbba0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 552
    .local v13, "sixRandomDigits":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " qtype{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 553
    const-string/jumbo v3, " qname{"

    .line 552
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 553
    const-string/jumbo v3, "-android-ds.metric.gstatic.com}"

    .line 552
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 556
    invoke-direct {p0, v13}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->getDnsQueryPacket(Ljava/lang/String;)[B

    move-result-object v9

    .line 558
    .local v9, "dnsPacket":[B
    const/4 v0, 0x0

    .line 559
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 560
    :goto_a2
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get1(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_10a

    .line 561
    add-int/lit8 v0, v0, 0x1

    .line 563
    :try_start_b5
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v2, v9

    const/4 v3, 0x0

    invoke-static {v1, v9, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_bc
    .catch Landroid/system/ErrnoException; {:try_start_b5 .. :try_end_bc} :catch_13c
    .catch Ljava/io/InterruptedIOException; {:try_start_b5 .. :try_end_bc} :catch_13c

    .line 570
    const/16 v1, 0x200

    :try_start_be
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 571
    .local v12, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v12}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 574
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_147

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->responseCodeStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 577
    .local v11, "rcodeStr":Ljava/lang/String;
    :goto_ed
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_10a
    .catch Landroid/system/ErrnoException; {:try_start_be .. :try_end_10a} :catch_14b
    .catch Ljava/io/InterruptedIOException; {:try_start_be .. :try_end_10a} :catch_14b

    .line 583
    .end local v11    # "rcodeStr":Ljava/lang/String;
    .end local v12    # "reply":Ljava/nio/ByteBuffer;
    :cond_10a
    :goto_10a
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_12d

    .line 584
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

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

    .line 587
    :cond_12d
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->close()V

    .line 533
    return-void

    .line 544
    .end local v0    # "count":I
    .end local v9    # "dnsPacket":[B
    .end local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_131
    move-exception v10

    .line 545
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 546
    return-void

    .line 564
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v9    # "dnsPacket":[B
    .restart local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_13c
    move-exception v10

    .line 565
    .restart local v10    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto :goto_10a

    .line 576
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "reply":Ljava/nio/ByteBuffer;
    :cond_147
    :try_start_147
    const-string/jumbo v11, ""
    :try_end_14a
    .catch Landroid/system/ErrnoException; {:try_start_147 .. :try_end_14a} :catch_14b
    .catch Ljava/io/InterruptedIOException; {:try_start_147 .. :try_end_14a} :catch_14b

    .restart local v11    # "rcodeStr":Ljava/lang/String;
    goto :goto_ed

    .line 579
    .end local v11    # "rcodeStr":Ljava/lang/String;
    .end local v12    # "reply":Ljava/nio/ByteBuffer;
    :catch_14b
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    goto/16 :goto_a2
.end method
