.class Lcom/google/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/google/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/nano/Extension",
        "<TM;TT;>;"
    }
.end annotation


# instance fields
.field private final nonPackedTag:I

.field private final packedTag:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZII)V
    .registers 13
    .param p1, "type"    # I
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z
    .param p5, "nonPackedTag"    # I
    .param p6, "packedTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZII)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/google/protobuf/nano/Extension;)V

    .line 353
    iput p5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    .line 354
    iput p6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    .line 351
    return-void
.end method

.method private computePackedDataSize(Ljava/lang/Object;)I
    .registers 8
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 599
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    const/4 v1, 0x0

    .line 600
    .local v1, "dataSize":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 601
    .local v0, "arrayLength":I
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v3, :pswitch_data_98

    .line 659
    :pswitch_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected non-packable type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 604
    :pswitch_26
    move v1, v0

    .line 661
    :cond_27
    :goto_27
    return v1

    .line 609
    :pswitch_28
    mul-int/lit8 v1, v0, 0x4

    .line 610
    goto :goto_27

    .line 614
    :pswitch_2b
    mul-int/lit8 v1, v0, 0x8

    .line 615
    goto :goto_27

    .line 617
    :pswitch_2e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v0, :cond_27

    .line 619
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 618
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 617
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 623
    .end local v2    # "i":I
    :pswitch_3d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3e
    if-ge v2, v0, :cond_27

    .line 625
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 624
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 629
    .end local v2    # "i":I
    :pswitch_4c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4d
    if-ge v2, v0, :cond_27

    .line 631
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 630
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 635
    .end local v2    # "i":I
    :pswitch_5b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5c
    if-ge v2, v0, :cond_27

    .line 637
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    .line 636
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 641
    .end local v2    # "i":I
    :pswitch_6a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6b
    if-ge v2, v0, :cond_27

    .line 643
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    .line 642
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 641
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 647
    .end local v2    # "i":I
    :pswitch_79
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7a
    if-ge v2, v0, :cond_27

    .line 649
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    .line 648
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 653
    .end local v2    # "i":I
    :pswitch_88
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_89
    if-ge v2, v0, :cond_27

    .line 655
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 654
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 601
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_5b
        :pswitch_79
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_26
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_4c
        :pswitch_88
        :pswitch_28
        :pswitch_2b
        :pswitch_3d
        :pswitch_6a
    .end packed-switch
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 7
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 666
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v2, v3, :cond_b

    .line 668
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 669
    :cond_b
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v2, v3, :cond_23

    .line 671
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v0

    .line 673
    .local v0, "dataSize":I
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int v1, v0, v2

    .line 674
    .local v1, "payloadSize":I
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 676
    .end local v0    # "dataSize":I
    .end local v1    # "payloadSize":I
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected repeated extension tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 677
    const-string/jumbo v4, ", unequal to both non-packed variant "

    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 677
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    const-string/jumbo v4, " and packed variant "

    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 24
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 684
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v6

    .line 685
    .local v6, "fieldNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_11a

    .line 737
    :pswitch_13
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unknown type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :pswitch_33
    move-object/from16 v4, p1

    .line 687
    check-cast v4, Ljava/lang/Double;

    .line 688
    .local v4, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v19

    return v19

    .end local v4    # "doubleValue":Ljava/lang/Double;
    :pswitch_42
    move-object/from16 v9, p1

    .line 690
    check-cast v9, Ljava/lang/Float;

    .line 691
    .local v9, "floatValue":Ljava/lang/Float;
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v19

    return v19

    .end local v9    # "floatValue":Ljava/lang/Float;
    :pswitch_51
    move-object/from16 v11, p1

    .line 693
    check-cast v11, Ljava/lang/Long;

    .line 694
    .local v11, "int64Value":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v19

    return v19

    .end local v11    # "int64Value":Ljava/lang/Long;
    :pswitch_60
    move-object/from16 v18, p1

    .line 696
    check-cast v18, Ljava/lang/Long;

    .line 697
    .local v18, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v19

    return v19

    .end local v18    # "uint64Value":Ljava/lang/Long;
    :pswitch_6f
    move-object/from16 v10, p1

    .line 699
    check-cast v10, Ljava/lang/Integer;

    .line 700
    .local v10, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v19

    return v19

    .end local v10    # "int32Value":Ljava/lang/Integer;
    :pswitch_7e
    move-object/from16 v8, p1

    .line 702
    check-cast v8, Ljava/lang/Long;

    .line 703
    .local v8, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v19

    return v19

    .end local v8    # "fixed64Value":Ljava/lang/Long;
    :pswitch_8d
    move-object/from16 v7, p1

    .line 705
    check-cast v7, Ljava/lang/Integer;

    .line 706
    .local v7, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v19

    return v19

    .end local v7    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_9c
    move-object/from16 v2, p1

    .line 708
    check-cast v2, Ljava/lang/Boolean;

    .line 709
    .local v2, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v19

    return v19

    .end local v2    # "boolValue":Ljava/lang/Boolean;
    :pswitch_ab
    move-object/from16 v16, p1

    .line 711
    check-cast v16, Ljava/lang/String;

    .line 712
    .local v16, "stringValue":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v19

    return v19

    .end local v16    # "stringValue":Ljava/lang/String;
    :pswitch_b6
    move-object/from16 v3, p1

    .line 714
    check-cast v3, [B

    .line 715
    .local v3, "bytesValue":[B
    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v19

    return v19

    .end local v3    # "bytesValue":[B
    :pswitch_bf
    move-object/from16 v17, p1

    .line 717
    check-cast v17, Ljava/lang/Integer;

    .line 718
    .local v17, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v19

    return v19

    .end local v17    # "uint32Value":Ljava/lang/Integer;
    :pswitch_ce
    move-object/from16 v5, p1

    .line 720
    check-cast v5, Ljava/lang/Integer;

    .line 721
    .local v5, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v19

    return v19

    .end local v5    # "enumValue":Ljava/lang/Integer;
    :pswitch_dd
    move-object/from16 v12, p1

    .line 723
    check-cast v12, Ljava/lang/Integer;

    .line 725
    .local v12, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 724
    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v19

    return v19

    .end local v12    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_ec
    move-object/from16 v13, p1

    .line 727
    check-cast v13, Ljava/lang/Long;

    .line 729
    .local v13, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 728
    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v19

    return v19

    .end local v13    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_fb
    move-object/from16 v14, p1

    .line 731
    check-cast v14, Ljava/lang/Integer;

    .line 732
    .local v14, "sint32Value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v19

    return v19

    .end local v14    # "sint32Value":Ljava/lang/Integer;
    :pswitch_10a
    move-object/from16 v15, p1

    .line 734
    check-cast v15, Ljava/lang/Long;

    .line 735
    .local v15, "sint64Value":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v19

    return v19

    .line 685
    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_42
        :pswitch_51
        :pswitch_60
        :pswitch_6f
        :pswitch_7e
        :pswitch_8d
        :pswitch_9c
        :pswitch_ab
        :pswitch_13
        :pswitch_13
        :pswitch_b6
        :pswitch_bf
        :pswitch_ce
        :pswitch_dd
        :pswitch_ec
        :pswitch_fb
        :pswitch_10a
    .end packed-switch
.end method

.method protected readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    .prologue
    .line 360
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    :try_start_0
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v1, :pswitch_data_b4

    .line 394
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_21

    .line 396
    :catch_21
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_2b
    :try_start_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 364
    :pswitch_34
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 366
    :pswitch_3d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 368
    :pswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 370
    :pswitch_4f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 372
    :pswitch_58
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 374
    :pswitch_61
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 376
    :pswitch_6a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 378
    :pswitch_73
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 380
    :pswitch_78
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    return-object v1

    .line 382
    :pswitch_7d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 384
    :pswitch_86
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readEnum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 386
    :pswitch_8f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 388
    :pswitch_98
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 390
    :pswitch_a1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 392
    :pswitch_aa
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_b1} :catch_21

    move-result-object v1

    return-object v1

    .line 360
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_34
        :pswitch_3d
        :pswitch_46
        :pswitch_4f
        :pswitch_58
        :pswitch_61
        :pswitch_6a
        :pswitch_73
        :pswitch_5
        :pswitch_5
        :pswitch_78
        :pswitch_7d
        :pswitch_86
        :pswitch_8f
        :pswitch_98
        :pswitch_a1
        :pswitch_aa
    .end packed-switch
.end method

.method protected readDataInto(Lcom/google/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 7
    .param p1, "data"    # Lcom/google/protobuf/nano/UnknownFieldData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v2, v3, :cond_14

    .line 406
    iget-object v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_13
    return-void

    .line 409
    :cond_14
    iget-object v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 411
    .local v0, "buffer":Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    :try_start_1a
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_2f

    .line 415
    :goto_21
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v2

    if-nez v2, :cond_13

    .line 416
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 412
    :catch_2f
    move-exception v1

    .line 413
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Error reading extension field"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 10
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 501
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v4, v5, :cond_a

    .line 503
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 500
    :cond_9
    return-void

    .line 504
    :cond_a
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v4, v5, :cond_fe

    .line 507
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 508
    .local v0, "arrayLength":I
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v1

    .line 511
    .local v1, "dataSize":I
    :try_start_18
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 512
    invoke-virtual {p2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 513
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v4, :pswitch_data_134

    .line 585
    :pswitch_25
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unpackable type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_41} :catch_41

    .line 587
    :catch_41
    move-exception v2

    .line 589
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 515
    .end local v2    # "e":Ljava/io/IOException;
    :pswitch_48
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_49
    if-ge v3, v0, :cond_9

    .line 516
    :try_start_4b
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 520
    .end local v3    # "i":I
    :pswitch_55
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_56
    if-ge v3, v0, :cond_9

    .line 521
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 520
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 525
    .end local v3    # "i":I
    :pswitch_62
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_63
    if-ge v3, v0, :cond_9

    .line 526
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 530
    .end local v3    # "i":I
    :pswitch_6f
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_70
    if-ge v3, v0, :cond_9

    .line 531
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 530
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 535
    .end local v3    # "i":I
    :pswitch_7c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7d
    if-ge v3, v0, :cond_9

    .line 536
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 540
    .end local v3    # "i":I
    :pswitch_89
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8a
    if-ge v3, v0, :cond_9

    .line 541
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 545
    .end local v3    # "i":I
    :pswitch_96
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_97
    if-ge v3, v0, :cond_9

    .line 546
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    .line 550
    .end local v3    # "i":I
    :pswitch_a3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a4
    if-ge v3, v0, :cond_9

    .line 551
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 555
    .end local v3    # "i":I
    :pswitch_b0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b1
    if-ge v3, v0, :cond_9

    .line 556
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 555
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    .line 560
    .end local v3    # "i":I
    :pswitch_bd
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_be
    if-ge v3, v0, :cond_9

    .line 561
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_be

    .line 565
    .end local v3    # "i":I
    :pswitch_ca
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_cb
    if-ge v3, v0, :cond_9

    .line 566
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 565
    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 570
    .end local v3    # "i":I
    :pswitch_d7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d8
    if-ge v3, v0, :cond_9

    .line 571
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 575
    .end local v3    # "i":I
    :pswitch_e4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_e5
    if-ge v3, v0, :cond_9

    .line 576
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 575
    add-int/lit8 v3, v3, 0x1

    goto :goto_e5

    .line 580
    .end local v3    # "i":I
    :pswitch_f1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_f2
    if-ge v3, v0, :cond_9

    .line 581
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_fb} :catch_41

    .line 580
    add-int/lit8 v3, v3, 0x1

    goto :goto_f2

    .line 592
    .end local v0    # "arrayLength":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_fe
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected repeated extension tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 593
    const-string/jumbo v6, ", unequal to both non-packed variant "

    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 593
    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 594
    const-string/jumbo v6, " and packed variant "

    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 594
    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 513
    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_96
        :pswitch_6f
        :pswitch_ca
        :pswitch_e4
        :pswitch_a3
        :pswitch_7c
        :pswitch_55
        :pswitch_48
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_bd
        :pswitch_f1
        :pswitch_62
        :pswitch_89
        :pswitch_b0
        :pswitch_d7
    .end packed-switch
.end method

.method protected final writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 27
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 424
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_152

    .line 491
    :pswitch_16
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unknown type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_36

    .line 493
    :catch_36
    move-exception v7

    .line 495
    .local v7, "e":Ljava/io/IOException;
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 427
    .end local v7    # "e":Ljava/io/IOException;
    :pswitch_3f
    :try_start_3f
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v6, v0

    .line 428
    .local v6, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 422
    .end local v6    # "doubleValue":Ljava/lang/Double;
    :goto_4f
    return-void

    .line 431
    :pswitch_50
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    move-object v11, v0

    .line 432
    .local v11, "floatValue":Ljava/lang/Float;
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    goto :goto_4f

    .line 435
    .end local v11    # "floatValue":Ljava/lang/Float;
    :pswitch_61
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v13, v0

    .line 436
    .local v13, "int64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    goto :goto_4f

    .line 439
    .end local v13    # "int64Value":Ljava/lang/Long;
    :pswitch_72
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 440
    .local v20, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    goto :goto_4f

    .line 443
    .end local v20    # "uint64Value":Ljava/lang/Long;
    :pswitch_84
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v12, v0

    .line 444
    .local v12, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    goto :goto_4f

    .line 447
    .end local v12    # "int32Value":Ljava/lang/Integer;
    :pswitch_95
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    .line 448
    .local v10, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    goto :goto_4f

    .line 451
    .end local v10    # "fixed64Value":Ljava/lang/Long;
    :pswitch_a6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    .line 452
    .local v9, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    goto :goto_4f

    .line 455
    .end local v9    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_b7
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 456
    .local v4, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    goto :goto_4f

    .line 459
    .end local v4    # "boolValue":Ljava/lang/Boolean;
    :pswitch_c8
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 460
    .local v18, "stringValue":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 463
    .end local v18    # "stringValue":Ljava/lang/String;
    :pswitch_d7
    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v5, v0

    .line 464
    .local v5, "bytesValue":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    goto/16 :goto_4f

    .line 467
    .end local v5    # "bytesValue":[B
    :pswitch_e3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v19, v0

    .line 468
    .local v19, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    goto/16 :goto_4f

    .line 471
    .end local v19    # "uint32Value":Ljava/lang/Integer;
    :pswitch_f6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 472
    .local v8, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    goto/16 :goto_4f

    .line 475
    .end local v8    # "enumValue":Ljava/lang/Integer;
    :pswitch_108
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v14, v0

    .line 476
    .local v14, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    goto/16 :goto_4f

    .line 479
    .end local v14    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_11a
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v15, v0

    .line 480
    .local v15, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    goto/16 :goto_4f

    .line 483
    .end local v15    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_12c
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v16, v0

    .line 484
    .local v16, "sint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    goto/16 :goto_4f

    .line 487
    .end local v16    # "sint32Value":Ljava/lang/Integer;
    :pswitch_13f
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 488
    .local v17, "sint64Value":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_150} :catch_36

    goto/16 :goto_4f

    .line 425
    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_50
        :pswitch_61
        :pswitch_72
        :pswitch_84
        :pswitch_95
        :pswitch_a6
        :pswitch_b7
        :pswitch_c8
        :pswitch_16
        :pswitch_16
        :pswitch_d7
        :pswitch_e3
        :pswitch_f6
        :pswitch_108
        :pswitch_11a
        :pswitch_12c
        :pswitch_13f
    .end packed-switch
.end method
