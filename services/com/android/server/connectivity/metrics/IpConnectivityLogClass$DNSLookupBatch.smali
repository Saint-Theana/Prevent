.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSLookupBatch"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;


# instance fields
.field public eventTypes:[I

.field public latenciesMs:[I

.field public networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

.field public returnCodes:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 785
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    .line 784
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .registers 2

    .prologue
    .line 759
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v0, :cond_11

    .line 760
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    :try_start_7
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v0, :cond_10

    .line 763
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    .line 767
    :cond_11
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0

    .line 760
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .registers 2

    .prologue
    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 790
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 791
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 792
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 793
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->cachedSize:I

    .line 794
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 823
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v3

    .line 824
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v4, :cond_10

    .line 826
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 825
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 828
    :cond_10
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v4, v4

    if-lez v4, :cond_33

    .line 829
    const/4 v0, 0x0

    .line 830
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2c

    .line 831
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    aget v1, v4, v2

    .line 832
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 830
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 835
    .end local v1    # "element":I
    :cond_2c
    add-int/2addr v3, v0

    .line 836
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 838
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_33
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v4, v4

    if-lez v4, :cond_56

    .line 839
    const/4 v0, 0x0

    .line 840
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3e
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4f

    .line 841
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    aget v1, v4, v2

    .line 842
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 840
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 845
    .end local v1    # "element":I
    :cond_4f
    add-int/2addr v3, v0

    .line 846
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 848
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_56
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-eqz v4, :cond_79

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v4, v4

    if-lez v4, :cond_79

    .line 849
    const/4 v0, 0x0

    .line 850
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_61
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v4, v4

    if-ge v2, v4, :cond_72

    .line 851
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    aget v1, v4, v2

    .line 852
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 850
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 855
    .end local v1    # "element":I
    :cond_72
    add-int/2addr v3, v0

    .line 856
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 858
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_79
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
    .registers 11
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 866
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 867
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_188

    .line 871
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 872
    return-object p0

    .line 869
    :sswitch_f
    return-object p0

    .line 877
    :sswitch_10
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-nez v8, :cond_1b

    .line 878
    new-instance v8, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v8}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 880
    :cond_1b
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 885
    :sswitch_21
    const/16 v8, 0x10

    .line 884
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 886
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-nez v8, :cond_48

    move v1, v7

    .line 887
    .local v1, "i":I
    :goto_2c
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 888
    .local v4, "newArray":[I
    if-eqz v1, :cond_37

    .line 889
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 891
    :cond_37
    :goto_37
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_4c

    .line 892
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 893
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 886
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_48
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v8

    goto :goto_2c

    .line 896
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_4c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 897
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    goto :goto_1

    .line 901
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_55
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 902
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 904
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 905
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 906
    .local v5, "startPos":I
    :goto_62
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_6e

    .line 907
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 910
    :cond_6e
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 911
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-nez v8, :cond_8d

    move v1, v7

    .line 912
    .restart local v1    # "i":I
    :goto_76
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 913
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_81

    .line 914
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 916
    :cond_81
    :goto_81
    array-length v8, v4

    if-ge v1, v8, :cond_91

    .line 917
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 911
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_8d
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v8

    goto :goto_76

    .line 919
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_91
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 920
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_1

    .line 925
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_98
    const/16 v8, 0x18

    .line 924
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 926
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-nez v8, :cond_bf

    move v1, v7

    .line 927
    .restart local v1    # "i":I
    :goto_a3
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 928
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_ae

    .line 929
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 931
    :cond_ae
    :goto_ae
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_c3

    .line 932
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 933
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 931
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    .line 926
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_bf
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v8

    goto :goto_a3

    .line 936
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_c3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 937
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    goto/16 :goto_1

    .line 941
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_cd
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 942
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 944
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 945
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 946
    .restart local v5    # "startPos":I
    :goto_da
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_e6

    .line 947
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 950
    :cond_e6
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 951
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-nez v8, :cond_105

    move v1, v7

    .line 952
    .restart local v1    # "i":I
    :goto_ee
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 953
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_f9

    .line 954
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 956
    :cond_f9
    :goto_f9
    array-length v8, v4

    if-ge v1, v8, :cond_109

    .line 957
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 956
    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    .line 951
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_105
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v8

    goto :goto_ee

    .line 959
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_109
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 960
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_1

    .line 965
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_110
    const/16 v8, 0x20

    .line 964
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 966
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-nez v8, :cond_137

    move v1, v7

    .line 967
    .restart local v1    # "i":I
    :goto_11b
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 968
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_126

    .line 969
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 971
    :cond_126
    :goto_126
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_13b

    .line 972
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 973
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_126

    .line 966
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_137
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v8

    goto :goto_11b

    .line 976
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_13b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 977
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    goto/16 :goto_1

    .line 981
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_145
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 982
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 984
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 985
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 986
    .restart local v5    # "startPos":I
    :goto_152
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_15e

    .line 987
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_152

    .line 990
    :cond_15e
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 991
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-nez v8, :cond_17d

    move v1, v7

    .line 992
    .restart local v1    # "i":I
    :goto_166
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 993
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_171

    .line 994
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 996
    :cond_171
    :goto_171
    array-length v8, v4

    if-ge v1, v8, :cond_181

    .line 997
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_171

    .line 991
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_17d
    iget-object v8, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v8

    goto :goto_166

    .line 999
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_181
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 1000
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_1

    .line 867
    :sswitch_data_188
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_10
        0x10 -> :sswitch_21
        0x12 -> :sswitch_55
        0x18 -> :sswitch_98
        0x1a -> :sswitch_cd
        0x20 -> :sswitch_110
        0x22 -> :sswitch_145
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
    .line 862
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v1, :cond_a

    .line 801
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 803
    :cond_a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v1

    if-lez v1, :cond_24

    .line 804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 805
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 808
    .end local v0    # "i":I
    :cond_24
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v1

    if-lez v1, :cond_3e

    .line 809
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2e
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3e

    .line 810
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    aget v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 813
    .end local v0    # "i":I
    :cond_3e
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v1

    if-lez v1, :cond_58

    .line 814
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_48
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_58

    .line 815
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 818
    .end local v0    # "i":I
    :cond_58
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 799
    return-void
.end method
