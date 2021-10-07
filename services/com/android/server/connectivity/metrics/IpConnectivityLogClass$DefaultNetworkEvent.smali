.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultNetworkEvent"
.end annotation


# static fields
.field public static final DUAL:I = 0x3

.field public static final IPV4:I = 0x1

.field public static final IPV6:I = 0x2

.field public static final NONE:I

.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;


# instance fields
.field public networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

.field public previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

.field public previousNetworkIpSupport:I

.field public transportTypes:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 242
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    .line 241
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 2

    .prologue
    .line 216
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    if-nez v0, :cond_11

    .line 217
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_7
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    if-nez v0, :cond_10

    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    .line 224
    :cond_11
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    return-object v0

    .line 217
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 247
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    .line 249
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->cachedSize:I

    .line 251
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 276
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v3

    .line 277
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v4, :cond_10

    .line 279
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 278
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 281
    :cond_10
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v4, :cond_1c

    .line 283
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    const/4 v5, 0x2

    .line 282
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 285
    :cond_1c
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    if-eqz v4, :cond_28

    .line 287
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    const/4 v5, 0x3

    .line 286
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 289
    :cond_28
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v4, v4

    if-lez v4, :cond_4b

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v4, v4

    if-ge v2, v4, :cond_44

    .line 292
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    aget v1, v4, v2

    .line 293
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 296
    .end local v1    # "element":I
    :cond_44
    add-int/2addr v3, v0

    .line 297
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 299
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_4b
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .registers 12
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 307
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 308
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_b4

    .line 312
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 313
    return-object p0

    .line 310
    :sswitch_f
    return-object p0

    .line 318
    :sswitch_10
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-nez v9, :cond_1b

    .line 319
    new-instance v9, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v9}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 321
    :cond_1b
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 325
    :sswitch_21
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-nez v9, :cond_2c

    .line 326
    new-instance v9, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v9}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 328
    :cond_2c
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 332
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    .line 333
    .local v7, "value":I
    packed-switch v7, :pswitch_data_ce

    goto :goto_1

    .line 338
    :pswitch_3a
    iput v7, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    goto :goto_1

    .line 345
    .end local v7    # "value":I
    :sswitch_3d
    const/16 v9, 0x20

    .line 344
    invoke-static {p1, v9}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 346
    .local v0, "arrayLength":I
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    if-nez v9, :cond_64

    move v1, v8

    .line 347
    .local v1, "i":I
    :goto_48
    add-int v9, v1, v0

    new-array v4, v9, [I

    .line 348
    .local v4, "newArray":[I
    if-eqz v1, :cond_53

    .line 349
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 351
    :cond_53
    :goto_53
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_68

    .line 352
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    .line 353
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 346
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_64
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v1, v9

    goto :goto_48

    .line 356
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_68
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    .line 357
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    goto :goto_1

    .line 361
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_71
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 362
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 364
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 365
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 366
    .local v5, "startPos":I
    :goto_7e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_8a

    .line 367
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 370
    :cond_8a
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 371
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    if-nez v9, :cond_a9

    move v1, v8

    .line 372
    .restart local v1    # "i":I
    :goto_92
    add-int v9, v1, v0

    new-array v4, v9, [I

    .line 373
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_9d

    .line 374
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 376
    :cond_9d
    :goto_9d
    array-length v9, v4

    if-ge v1, v9, :cond_ad

    .line 377
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    aput v9, v4, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 371
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_a9
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v1, v9

    goto :goto_92

    .line 379
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_ad
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    .line 380
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_1

    .line 308
    :sswitch_data_b4
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_10
        0x12 -> :sswitch_21
        0x18 -> :sswitch_32
        0x20 -> :sswitch_3d
        0x22 -> :sswitch_71
    .end sparse-switch

    .line 333
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
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
    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

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
    .line 257
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v1, :cond_a

    .line 258
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 260
    :cond_a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    if-eqz v1, :cond_14

    .line 261
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 263
    :cond_14
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    if-eqz v1, :cond_1e

    .line 264
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 266
    :cond_1e
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v1, v1

    if-lez v1, :cond_38

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 268
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 271
    .end local v0    # "i":I
    :cond_38
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 256
    return-void
.end method
