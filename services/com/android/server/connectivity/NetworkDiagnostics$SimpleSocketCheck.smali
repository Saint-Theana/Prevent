.class Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleSocketCheck"
.end annotation


# instance fields
.field protected final mAddressFamily:I

.field protected mFileDescriptor:Ljava/io/FileDescriptor;

.field protected final mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

.field protected mSocketAddress:Ljava/net/SocketAddress;

.field protected final mSource:Ljava/net/InetAddress;

.field protected final mTarget:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method protected constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 377
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 355
    instance-of v2, p3, Ljava/net/Inet6Address;

    if-eqz v2, :cond_41

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "targetWithScopeId":Ljava/net/Inet6Address;
    invoke-virtual {p3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get2(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 360
    :try_start_18
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get2(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    .line 359
    invoke-static {v4, v2, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_28
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_28} :catch_34

    move-result-object v1

    .line 365
    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :cond_29
    :goto_29
    if-eqz v1, :cond_3f

    :goto_2b
    iput-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 366
    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    iput v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    .line 374
    :goto_31
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    .line 352
    return-void

    .line 361
    .restart local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :catch_34
    move-exception v0

    .line 362
    .local v0, "e":Ljava/net/UnknownHostException;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto :goto_29

    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    :cond_3f
    move-object v1, p3

    .line 365
    goto :goto_2b

    .line 368
    :cond_41
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 369
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    iput v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    goto :goto_31
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 409
    return-void
.end method

.method protected getSocketAddressString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 402
    .local v0, "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 404
    .local v1, "localAddr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_29

    const-string/jumbo v2, "[%s]:%d"

    .line 403
    :goto_f
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 405
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 403
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 404
    :cond_29
    const-string/jumbo v2, "%s:%d"

    goto :goto_f
.end method

.method protected setupSocket(IIJJI)V
    .registers 13
    .param p1, "sockType"    # I
    .param p2, "protocol"    # I
    .param p3, "writeTimeout"    # J
    .param p5, "readTimeout"    # J
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    iget v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    invoke-static {v0, p1, p2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 386
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 387
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p3, p4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 386
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 388
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 389
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p5, p6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 388
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 391
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get3(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    if-eqz v0, :cond_39

    .line 393
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 395
    :cond_39
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    invoke-static {v0, v1, p7}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 396
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    .line 383
    return-void
.end method
