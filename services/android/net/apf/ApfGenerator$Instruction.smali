.class Landroid/net/apf/ApfGenerator$Instruction;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Instruction"
.end annotation


# instance fields
.field private mCompareBytes:[B

.field private mHasImm:Z

.field private mImm:I

.field private mImmSigned:Z

.field private mImmSize:B

.field private mLabel:Ljava/lang/String;

.field private final mOpcode:B

.field private final mRegister:B

.field private mTargetLabel:Ljava/lang/String;

.field private mTargetLabelSize:B

.field offset:I

.field final synthetic this$0:Landroid/net/apf/ApfGenerator;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/apf/ApfGenerator;
    .param p2, "opcode"    # Landroid/net/apf/ApfGenerator$Opcodes;

    .prologue
    .line 118
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {p0, p1, p2, v0}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 117
    return-void
.end method

.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V
    .registers 5
    .param p1, "this$0"    # Landroid/net/apf/ApfGenerator;
    .param p2, "opcode"    # Landroid/net/apf/ApfGenerator$Opcodes;
    .param p3, "register"    # Landroid/net/apf/ApfGenerator$Register;

    .prologue
    .line 112
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget v0, p2, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    .line 114
    iget v0, p3, Landroid/net/apf/ApfGenerator$Register;->value:I

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    .line 112
    return-void
.end method

.method private calculateImmSize(IZ)B
    .registers 4
    .param p1, "imm"    # I
    .param p2, "signed"    # Z

    .prologue
    const/4 v0, 0x0

    .line 289
    if-nez p1, :cond_4

    .line 290
    return v0

    .line 292
    :cond_4
    if-eqz p2, :cond_10

    const/16 v0, -0x80

    if-lt p1, v0, :cond_10

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_10

    .line 294
    :cond_e
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_10
    if-nez p2, :cond_18

    if-ltz p1, :cond_18

    const/16 v0, 0xff

    if-le p1, v0, :cond_e

    .line 296
    :cond_18
    if-eqz p2, :cond_24

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_24

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_24

    .line 298
    :cond_22
    const/4 v0, 0x2

    return v0

    .line 297
    :cond_24
    if-nez p2, :cond_2d

    if-ltz p1, :cond_2d

    const v0, 0xffff

    if-le p1, v0, :cond_22

    .line 300
    :cond_2d
    const/4 v0, 0x4

    return v0
.end method

.method private calculateTargetLabelOffset()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const-string/jumbo v3, "__DROP__"

    if-ne v2, v3, :cond_2b

    .line 270
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v2}, Landroid/net/apf/ApfGenerator;->-get0(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    move-result-object v0

    .line 276
    .local v0, "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :goto_d
    if-nez v0, :cond_48

    .line 277
    new-instance v2, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "label not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    .end local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_2b
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const-string/jumbo v3, "__PASS__"

    if-ne v2, v3, :cond_39

    .line 272
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v2}, Landroid/net/apf/ApfGenerator;->-get2(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    move-result-object v0

    .restart local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    goto :goto_d

    .line 274
    .end local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_39
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v2}, Landroid/net/apf/ApfGenerator;->-get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    .restart local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    goto :goto_d

    .line 280
    :cond_48
    iget v2, v0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    iget v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 281
    .local v1, "targetLabelOffset":I
    if-gez v1, :cond_71

    .line 282
    new-instance v2, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "backward branches disallowed; label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 283
    iget-object v4, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_71
    return v1
.end method

.method private generateImmSizeField()B
    .registers 3

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v0

    .line 203
    .local v0, "immSize":B
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x3

    .end local v0    # "immSize":B
    :cond_8
    return v0
.end method

.method private generateInstructionByte()B
    .registers 4

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateImmSizeField()B

    move-result v0

    .line 211
    .local v0, "sizeField":B
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    shl-int/lit8 v1, v1, 0x3

    shl-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    return v1
.end method

.method private generatedImmSize()B
    .registers 3

    .prologue
    .line 264
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    if-le v0, v1, :cond_9

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    :goto_8
    return v0

    :cond_9
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    goto :goto_8
.end method

.method private writeValue(I[BI)I
    .registers 7
    .param p1, "value"    # I
    .param p2, "bytecode"    # [B
    .param p3, "writingOffset"    # I

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    move v1, p3

    .end local p3    # "writingOffset":I
    .local v1, "writingOffset":I
    :goto_7
    if-ltz v0, :cond_18

    .line 225
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "writingOffset":I
    .restart local p3    # "writingOffset":I
    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 224
    add-int/lit8 v0, v0, -0x1

    move v1, p3

    .end local p3    # "writingOffset":I
    .restart local v1    # "writingOffset":I
    goto :goto_7

    .line 227
    :cond_18
    return v1
.end method


# virtual methods
.method generate([B)V
    .registers 7
    .param p1, "bytecode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 234
    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v3, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v3, v3, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v2, v3, :cond_9

    .line 235
    return-void

    .line 237
    :cond_9
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 238
    .local v0, "writingOffset":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "writingOffset":I
    .local v1, "writingOffset":I
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateInstructionByte()B

    move-result v2

    aput-byte v2, p1, v0

    .line 239
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-eqz v2, :cond_72

    .line 240
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    move-result v2

    invoke-direct {p0, v2, p1, v1}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    move-result v0

    .line 242
    .end local v1    # "writingOffset":I
    .restart local v0    # "writingOffset":I
    :goto_1f
    iget-boolean v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    if-eqz v2, :cond_29

    .line 243
    iget v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    invoke-direct {p0, v2, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    move-result v0

    .line 245
    :cond_29
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    if-eqz v2, :cond_3a

    .line 246
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, p1, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 247
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 249
    :cond_3a
    iget v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    if-eq v2, v3, :cond_71

    .line 250
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    const-string/jumbo v4, " but should have written "

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v4

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_71
    return-void

    .end local v0    # "writingOffset":I
    .restart local v1    # "writingOffset":I
    :cond_72
    move v0, v1

    .end local v1    # "writingOffset":I
    .restart local v0    # "writingOffset":I
    goto :goto_1f
.end method

.method setCompareBytes([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .prologue
    .line 153
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-eq v0, v1, :cond_11

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "adding compare bytes to non-JNEBS instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_11
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    .line 152
    return-void
.end method

.method setImm(IZ)V
    .registers 4
    .param p1, "imm"    # I
    .param p2, "signed"    # Z

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    .line 123
    iput p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    .line 124
    iput-boolean p2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSigned:Z

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    move-result v0

    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    .line 121
    return-void
.end method

.method setLabel(Ljava/lang/String;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->-get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 138
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duplicate label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_26
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-eq v0, v1, :cond_37

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "adding label to non-label instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_37
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mLabel:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->-get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method setSignedImm(I)V
    .registers 3
    .param p1, "imm"    # I

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    .line 132
    return-void
.end method

.method setTargetLabel(Ljava/lang/String;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    .line 149
    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 147
    return-void
.end method

.method setUnsignedImm(I)V
    .registers 3
    .param p1, "imm"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    .line 128
    return-void
.end method

.method shrink()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 186
    return v2

    .line 188
    :cond_6
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v0

    .line 189
    .local v0, "oldSize":I
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 190
    .local v1, "oldTargetLabelSize":I
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    move-result v3

    invoke-direct {p0, v3, v2}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    move-result v3

    iput-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 191
    iget-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    if-le v3, v1, :cond_23

    .line 192
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "instruction grew"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_23
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    if-ge v3, v0, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    return v2
.end method

.method size()I
    .registers 4

    .prologue
    .line 163
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v2, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v2, v2, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v1, v2, :cond_a

    .line 164
    const/4 v1, 0x0

    return v1

    .line 166
    :cond_a
    const/4 v0, 0x1

    .line 167
    .local v0, "size":I
    iget-boolean v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    if-eqz v1, :cond_15

    .line 168
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 170
    :cond_15
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 171
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_1e
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    if-eqz v1, :cond_26

    .line 174
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 176
    :cond_26
    return v0
.end method
