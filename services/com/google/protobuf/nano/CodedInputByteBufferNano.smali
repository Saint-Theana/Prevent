.class public final Lcom/google/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# static fields
.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 410
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 413
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 419
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    .line 420
    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    .line 421
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 422
    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 418
    return-void
.end method

.method public static decodeZigZag32(I)I
    .registers 3
    .param p0, "n"    # I

    .prologue
    .line 379
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .registers 6
    .param p0, "n"    # J

    .prologue
    .line 393
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .registers 3
    .param p0, "buf"    # [B

    .prologue
    .line 52
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    .prologue
    .line 496
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 497
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 498
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1b

    .line 500
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 501
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 495
    :goto_1a
    return-void

    .line 503
    :cond_1b
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    goto :goto_1a
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eq v0, p1, :cond_9

    .line 95
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 93
    :cond_9
    return-void
.end method

.method public getAbsolutePosition()I
    .registers 2

    .prologue
    .line 550
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return v0
.end method

.method public getBuffer()[B
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    return-object v0
.end method

.method public getBytesUntilLimit()I
    .registers 4

    .prologue
    .line 522
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_9

    .line 523
    const/4 v1, -0x1

    return v1

    .line 526
    :cond_9
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 527
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getData(II)[B
    .registers 7
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 568
    if-nez p2, :cond_6

    .line 569
    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v2

    .line 571
    :cond_6
    new-array v0, p2, [B

    .line 572
    .local v0, "copy":[B
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int v1, v2, p1

    .line 573
    .local v1, "start":I
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    return-object v0
.end method

.method public getPosition()I
    .registers 3

    .prologue
    .line 543
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 3

    .prologue
    .line 536
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public popLimit(I)V
    .registers 2
    .param p1, "oldLimit"    # I

    .prologue
    .line 513
    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 514
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 512
    return-void
.end method

.method public pushLimit(I)I
    .registers 4
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 480
    if-gez p1, :cond_7

    .line 481
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 483
    :cond_7
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr p1, v1

    .line 484
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 485
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_13

    .line 486
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 488
    :cond_13
    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 490
    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 492
    return v0
.end method

.method public readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 232
    .local v1, "size":I
    if-gez v1, :cond_c

    .line 233
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 235
    :cond_c
    if-nez v1, :cond_11

    .line 236
    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v2

    .line 238
    :cond_11
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1d

    .line 239
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 242
    :cond_1d
    new-array v0, v1, [B

    .line 243
    .local v0, "result":[B
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 245
    return-object v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(Lcom/google/protobuf/nano/MessageNano;I)V
    .registers 5
    .param p1, "msg"    # Lcom/google/protobuf/nano/MessageNano;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v0, v1, :cond_b

    .line 206
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 208
    :cond_b
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 209
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    .line 211
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 212
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 204
    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/nano/MessageNano;)V
    .registers 6
    .param p1, "msg"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v2, v3, :cond_f

    .line 219
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 221
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 222
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    .line 224
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 225
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 226
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 216
    return-void
.end method

.method public readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_b

    .line 599
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 601
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .registers 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 611
    if-gez p1, :cond_8

    .line 612
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 615
    :cond_8
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v1, v2, :cond_1c

    .line 617
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 619
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 622
    :cond_1c
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_32

    .line 624
    new-array v0, p1, [B

    .line 625
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 627
    return-object v0

    .line 629
    .end local v0    # "bytes":[B
    :cond_32
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1
.end method

.method public readRawLittleEndian32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 339
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 340
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 341
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 342
    .local v3, "b4":B
    and-int/lit16 v4, v0, 0xff

    .line 343
    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 342
    or-int/2addr v4, v5

    .line 344
    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 342
    or-int/2addr v4, v5

    .line 345
    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 342
    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 351
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 352
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 353
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 354
    .local v3, "b4":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    .line 355
    .local v4, "b5":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    .line 356
    .local v5, "b6":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    .line 357
    .local v6, "b7":B
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v7

    .line 358
    .local v7, "b8":B
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    .line 359
    int-to-long v10, v1

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 360
    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 361
    int-to-long v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 362
    int-to-long v10, v4

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 363
    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 364
    int-to-long v10, v6

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    .line 365
    int-to-long v10, v7

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    .line 358
    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 289
    .local v2, "tmp":B
    if-ltz v2, :cond_7

    .line 290
    return v2

    .line 292
    :cond_7
    and-int/lit8 v1, v2, 0x7f

    .line 293
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_13

    .line 294
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    .line 318
    :cond_12
    :goto_12
    return v1

    .line 296
    :cond_13
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 297
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_22

    .line 298
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_12

    .line 300
    :cond_22
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_31

    .line 302
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_12

    .line 304
    :cond_31
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 305
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 306
    if-gez v2, :cond_12

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4d

    .line 309
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    if-ltz v3, :cond_4a

    .line 310
    return v1

    .line 308
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 313
    :cond_4d
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v3

    throw v3
.end method

.method public readRawVarint64()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 325
    .local v2, "result":J
    :goto_3
    const/16 v4, 0x40

    if-ge v1, v4, :cond_18

    .line 326
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 327
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 328
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_15

    .line 329
    return-wide v2

    .line 331
    :cond_15
    add-int/lit8 v1, v1, 0x7

    goto :goto_3

    .line 333
    .end local v0    # "b":B
    :cond_18
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v4

    throw v4
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 190
    .local v1, "size":I
    if-gez v1, :cond_b

    .line 191
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 193
    :cond_b
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_17

    .line 194
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 197
    :cond_17
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 198
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 199
    return-object v0
.end method

.method public readTag()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 72
    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 73
    return v1

    .line 76
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 77
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-nez v0, :cond_19

    .line 79
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 81
    :cond_19
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSizeCounter()V
    .registers 1

    .prologue
    .line 470
    return-void
.end method

.method public rewindToPosition(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 581
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_31

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_31
    if-gez p1, :cond_4d

    .line 586
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_4d
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 580
    return-void
.end method

.method public setRecursionLimit(I)I
    .registers 6
    .param p1, "limit"    # I

    .prologue
    .line 433
    if-gez p1, :cond_1c

    .line 434
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recursion limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_1c
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 438
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 439
    return v0
.end method

.method public setSizeLimit(I)I
    .registers 6
    .param p1, "limit"    # I

    .prologue
    .line 458
    if-gez p1, :cond_1c

    .line 459
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Size limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_1c
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 463
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 464
    return v0
.end method

.method public skipField(I)Z
    .registers 5
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-static {p1}, Lcom/google/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 128
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 108
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 109
    return v2

    .line 111
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    .line 112
    return v2

    .line 114
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 115
    return v2

    .line 117
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    .line 119
    invoke-static {p1}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 120
    const/4 v1, 0x4

    .line 119
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 121
    return v2

    .line 123
    :pswitch_2d
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    .line 126
    return v2

    .line 106
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public skipMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 139
    .local v0, "tag":I
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :cond_c
    return-void
.end method

.method public skipRawBytes(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    if-gez p1, :cond_7

    .line 641
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 644
    :cond_7
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1b

    .line 646
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 648
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 651
    :cond_1b
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    .line 653
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 639
    return-void

    .line 655
    :cond_28
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
