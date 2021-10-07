.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpConnectivityLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;


# instance fields
.field public droppedEvents:I

.field public events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2539
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2540
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    .line 2539
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .registers 2

    .prologue
    .line 2517
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    if-nez v0, :cond_11

    .line 2518
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2520
    :try_start_7
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    if-nez v0, :cond_10

    .line 2521
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    .line 2525
    :cond_11
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    return-object v0

    .line 2518
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2649
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2643
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2544
    invoke-static {}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    .line 2545
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 2546
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->version:I

    .line 2547
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->cachedSize:I

    .line 2548
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 6

    .prologue
    .line 2573
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v2

    .line 2574
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v3, v3

    if-lez v3, :cond_22

    .line 2575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v3, v3

    if-ge v1, v3, :cond_22

    .line 2576
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    aget-object v0, v3, v1

    .line 2577
    .local v0, "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v0, :cond_1f

    .line 2579
    const/4 v3, 0x1

    .line 2578
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2575
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2583
    .end local v0    # "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .end local v1    # "i":I
    :cond_22
    iget v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    if-eqz v3, :cond_2e

    .line 2585
    iget v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    const/4 v4, 0x2

    .line 2584
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2587
    :cond_2e
    iget v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->version:I

    if-eqz v3, :cond_3a

    .line 2589
    iget v3, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->version:I

    const/4 v4, 0x3

    .line 2588
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2591
    :cond_3a
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    .registers 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2599
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2600
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_5e

    .line 2604
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2605
    return-object p0

    .line 2602
    :sswitch_f
    return-object p0

    .line 2611
    :sswitch_10
    const/16 v5, 0xa

    .line 2610
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2612
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    if-nez v5, :cond_3d

    move v1, v4

    .line 2614
    .local v1, "i":I
    :goto_1b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    .line 2615
    .local v2, "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v1, :cond_26

    .line 2616
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2618
    :cond_26
    :goto_26
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_41

    .line 2619
    new-instance v5, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v5}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    aput-object v5, v2, v1

    .line 2620
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2621
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2618
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2612
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_3d
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v1, v5

    goto :goto_1b

    .line 2624
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_41
    new-instance v5, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v5}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    aput-object v5, v2, v1

    .line 2625
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2626
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    goto :goto_1

    .line 2630
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :sswitch_50
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    goto :goto_1

    .line 2634
    :sswitch_57
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->version:I

    goto :goto_1

    .line 2600
    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_10
        0x10 -> :sswitch_50
        0x18 -> :sswitch_57
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
    .line 2595
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2554
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v2, v2

    if-lez v2, :cond_1c

    .line 2555
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_1c

    .line 2556
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    aget-object v0, v2, v1

    .line 2557
    .local v0, "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v0, :cond_19

    .line 2558
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2555
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2562
    .end local v0    # "element":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .end local v1    # "i":I
    :cond_1c
    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    if-eqz v2, :cond_26

    .line 2563
    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2565
    :cond_26
    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->version:I

    if-eqz v2, :cond_30

    .line 2566
    iget v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->version:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2568
    :cond_30
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2553
    return-void
.end method
