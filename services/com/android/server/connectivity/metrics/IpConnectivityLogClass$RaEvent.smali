.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RaEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;


# instance fields
.field public dnsslLifetime:J

.field public prefixPreferredLifetime:J

.field public prefixValidLifetime:J

.field public rdnssLifetime:J

.field public routeInfoLifetime:J

.field public routerLifetime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1945
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1946
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    .line 1945
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .registers 2

    .prologue
    .line 1914
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    if-nez v0, :cond_11

    .line 1915
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1917
    :try_start_7
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    if-nez v0, :cond_10

    .line 1918
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    .line 1922
    :cond_11
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    return-object v0

    .line 1915
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2065
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2059
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 1950
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 1951
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 1952
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 1953
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 1954
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 1955
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 1956
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->cachedSize:I

    .line 1957
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1986
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1987
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_14

    .line 1989
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    const/4 v1, 0x1

    .line 1988
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1991
    :cond_14
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_22

    .line 1993
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    const/4 v1, 0x2

    .line 1992
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1995
    :cond_22
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_30

    .line 1997
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    const/4 v1, 0x3

    .line 1996
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1999
    :cond_30
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3e

    .line 2001
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    const/4 v1, 0x4

    .line 2000
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2003
    :cond_3e
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4c

    .line 2005
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    const/4 v1, 0x5

    .line 2004
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2007
    :cond_4c
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5a

    .line 2009
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    const/4 v1, 0x6

    .line 2008
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2011
    :cond_5a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .registers 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2019
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2020
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_3a

    .line 2024
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2025
    return-object p0

    .line 2022
    :sswitch_e
    return-object p0

    .line 2030
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    goto :goto_0

    .line 2034
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    goto :goto_0

    .line 2038
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    goto :goto_0

    .line 2042
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    goto :goto_0

    .line 2046
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    goto :goto_0

    .line 2050
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    goto :goto_0

    .line 2020
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x20 -> :sswitch_24
        0x28 -> :sswitch_2b
        0x30 -> :sswitch_32
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2015
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1963
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_e

    .line 1964
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1966
    :cond_e
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1a

    .line 1967
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1969
    :cond_1a
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_26

    .line 1970
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1972
    :cond_26
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_32

    .line 1973
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1975
    :cond_32
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3e

    .line 1976
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1978
    :cond_3e
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4a

    .line 1979
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1981
    :cond_4a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1962
    return-void
.end method
