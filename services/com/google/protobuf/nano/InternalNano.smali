.class public final Lcom/google/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field public static final LAZY_INIT_LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)[B
    .registers 4
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    const-string/jumbo v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 110
    :catch_8
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 114
    const-string/jumbo v2, "Java VM does not support a standard character set."

    .line 113
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static cloneUnknownFieldData(Lcom/google/protobuf/nano/ExtendableMessageNano;Lcom/google/protobuf/nano/ExtendableMessageNano;)V
    .registers 3
    .param p0, "original"    # Lcom/google/protobuf/nano/ExtendableMessageNano;
    .param p1, "cloned"    # Lcom/google/protobuf/nano/ExtendableMessageNano;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v0, :cond_c

    .line 337
    iget-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object v0

    iput-object v0, p1, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 335
    :cond_c
    return-void
.end method

.method public static copyFromUtf8(Ljava/lang/String;)[B
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 125
    :catch_8
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "UTF-8 not supported?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static equals([D[D)Z
    .registers 5
    .param p0, "field1"    # [D
    .param p1, "field2"    # [D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_f

    .line 172
    :cond_7
    if-eqz p1, :cond_c

    array-length v2, p1

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    .line 174
    :cond_f
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0
.end method

.method public static equals([F[F)Z
    .registers 5
    .param p0, "field1"    # [F
    .param p1, "field2"    # [F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_f

    .line 160
    :cond_7
    if-eqz p1, :cond_c

    array-length v2, p1

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    .line 162
    :cond_f
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0
.end method

.method public static equals([I[I)Z
    .registers 5
    .param p0, "field1"    # [I
    .param p1, "field2"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_f

    .line 136
    :cond_7
    if-eqz p1, :cond_c

    array-length v2, p1

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    .line 138
    :cond_f
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public static equals([J[J)Z
    .registers 5
    .param p0, "field1"    # [J
    .param p1, "field2"    # [J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_f

    .line 148
    :cond_7
    if-eqz p1, :cond_c

    array-length v2, p1

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    .line 150
    :cond_f
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 11
    .param p0, "field1"    # [Ljava/lang/Object;
    .param p1, "field2"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "index1":I
    if-nez p0, :cond_12

    const/4 v4, 0x0

    .line 234
    .local v4, "length1":I
    :goto_5
    const/4 v3, 0x0

    .line 235
    .local v3, "index2":I
    if-nez p1, :cond_14

    const/4 v5, 0x0

    .line 237
    .local v5, "length2":I
    :goto_9
    if-ge v2, v4, :cond_16

    aget-object v6, p0, v2

    if-nez v6, :cond_16

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 233
    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_12
    array-length v4, p0

    .restart local v4    # "length1":I
    goto :goto_5

    .line 235
    .restart local v3    # "index2":I
    :cond_14
    array-length v5, p1

    .restart local v5    # "length2":I
    goto :goto_9

    .line 240
    :cond_16
    :goto_16
    if-ge v3, v5, :cond_1f

    aget-object v6, p1, v3

    if-nez v6, :cond_1f

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 243
    :cond_1f
    if-lt v2, v4, :cond_2b

    const/4 v0, 0x1

    .line 244
    .local v0, "atEndOf1":Z
    :goto_22
    if-lt v3, v5, :cond_2d

    const/4 v1, 0x1

    .line 245
    .local v1, "atEndOf2":Z
    :goto_25
    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    .line 247
    const/4 v6, 0x1

    return v6

    .line 243
    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_2b
    const/4 v0, 0x0

    .restart local v0    # "atEndOf1":Z
    goto :goto_22

    .line 244
    :cond_2d
    const/4 v1, 0x0

    .restart local v1    # "atEndOf2":Z
    goto :goto_25

    .line 248
    :cond_2f
    if-eq v0, v1, :cond_32

    .line 250
    return v8

    .line 251
    :cond_32
    aget-object v6, p0, v2

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 253
    return v8

    .line 255
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public static equals([Z[Z)Z
    .registers 5
    .param p0, "field1"    # [Z
    .param p1, "field2"    # [Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-eqz p0, :cond_7

    array-length v2, p0

    if-nez v2, :cond_f

    .line 184
    :cond_7
    if-eqz p1, :cond_c

    array-length v2, p1

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    .line 186
    :cond_f
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0
.end method

.method public static equals([[B[[B)Z
    .registers 11
    .param p0, "field1"    # [[B
    .param p1, "field2"    # [[B

    .prologue
    const/4 v8, 0x0

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "index1":I
    if-nez p0, :cond_12

    const/4 v4, 0x0

    .line 199
    .local v4, "length1":I
    :goto_5
    const/4 v3, 0x0

    .line 200
    .local v3, "index2":I
    if-nez p1, :cond_14

    const/4 v5, 0x0

    .line 202
    .local v5, "length2":I
    :goto_9
    if-ge v2, v4, :cond_16

    aget-object v6, p0, v2

    if-nez v6, :cond_16

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 198
    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_12
    array-length v4, p0

    .restart local v4    # "length1":I
    goto :goto_5

    .line 200
    .restart local v3    # "index2":I
    :cond_14
    array-length v5, p1

    .restart local v5    # "length2":I
    goto :goto_9

    .line 205
    :cond_16
    :goto_16
    if-ge v3, v5, :cond_1f

    aget-object v6, p1, v3

    if-nez v6, :cond_1f

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 208
    :cond_1f
    if-lt v2, v4, :cond_2b

    const/4 v0, 0x1

    .line 209
    .local v0, "atEndOf1":Z
    :goto_22
    if-lt v3, v5, :cond_2d

    const/4 v1, 0x1

    .line 210
    .local v1, "atEndOf2":Z
    :goto_25
    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    .line 212
    const/4 v6, 0x1

    return v6

    .line 208
    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_2b
    const/4 v0, 0x0

    .restart local v0    # "atEndOf1":Z
    goto :goto_22

    .line 209
    :cond_2d
    const/4 v1, 0x0

    .restart local v1    # "atEndOf2":Z
    goto :goto_25

    .line 213
    :cond_2f
    if-eq v0, v1, :cond_32

    .line 215
    return v8

    .line 216
    :cond_32
    aget-object v6, p0, v2

    aget-object v7, p1, v3

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 218
    return v8

    .line 220
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public static hashCode([D)I
    .registers 3
    .param p0, "field"    # [D

    .prologue
    const/4 v0, 0x0

    .line 289
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([F)I
    .registers 3
    .param p0, "field"    # [F

    .prologue
    const/4 v0, 0x0

    .line 281
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([I)I
    .registers 3
    .param p0, "field"    # [I

    .prologue
    const/4 v0, 0x0

    .line 265
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([J)I
    .registers 3
    .param p0, "field"    # [J

    .prologue
    const/4 v0, 0x0

    .line 273
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 7
    .param p0, "field"    # [Ljava/lang/Object;

    .prologue
    .line 323
    const/4 v2, 0x0

    .line 324
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_16

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_5
    if-ge v1, v3, :cond_18

    .line 325
    aget-object v0, p0, v1

    .line 326
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_13

    .line 327
    mul-int/lit8 v4, v2, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 324
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0    # "element":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_16
    array-length v3, p0

    .restart local v3    # "size":I
    goto :goto_5

    .line 330
    :cond_18
    return v2
.end method

.method public static hashCode([Z)I
    .registers 3
    .param p0, "field"    # [Z

    .prologue
    const/4 v0, 0x0

    .line 297
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_6
.end method

.method public static hashCode([[B)I
    .registers 7
    .param p0, "field"    # [[B

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_16

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_5
    if-ge v1, v3, :cond_18

    .line 308
    aget-object v0, p0, v1

    .line 309
    .local v0, "element":[B
    if-eqz v0, :cond_13

    .line 310
    mul-int/lit8 v4, v2, 0x1f

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    add-int v2, v4, v5

    .line 307
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0    # "element":[B
    .end local v3    # "size":I
    :cond_16
    array-length v3, p0

    .restart local v3    # "size":I
    goto :goto_5

    .line 313
    :cond_18
    return v2
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 91
    :catch_10
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 95
    const-string/jumbo v2, "Java VM does not support a standard character set."

    .line 94
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
