.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "cols"    # I

    .prologue
    .line 3398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3395
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 3399
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 3398
    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "formats"    # [Ljava/lang/String;
    .param p3, "row"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 3445
    const/4 v0, 0x0

    .local v0, "j":I
    array-length v1, p3

    .local v1, "rowLength":I
    :goto_3
    if-ge v0, v1, :cond_24

    .line 3446
    aget-object v2, p2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3447
    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3445
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3449
    :cond_24
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3444
    return-void
.end method


# virtual methods
.method public getNumRows()I
    .registers 2

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .registers 10
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 3403
    array-length v3, p3

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-le v3, v4, :cond_39

    .line 3404
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Table only has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3405
    const-string/jumbo v5, " columns. can\'t set "

    .line 3404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3405
    array-length v5, p3

    .line 3404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3405
    const-string/jumbo v5, " at column "

    .line 3404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3407
    :cond_39
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_3f
    if-gt v0, p1, :cond_5a

    .line 3408
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 3409
    .local v2, "list":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3410
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4b
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v1, v3, :cond_57

    .line 3411
    const-string/jumbo v3, ""

    aput-object v3, v2, v1

    .line 3410
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 3407
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 3414
    .end local v1    # "j":I
    .end local v2    # "list":[Ljava/lang/Object;
    :cond_5a
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v3, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3402
    return-void
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .registers 15
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v12, 0x0

    .line 3418
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v1, v9, [Ljava/lang/String;

    .line 3419
    .local v1, "formats":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3420
    .local v8, "totalLength":I
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_7
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v0, v9, :cond_42

    .line 3421
    const/4 v5, 0x0

    .line 3422
    .local v5, "maxLength":I
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "row$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 3423
    .local v6, "row":[Ljava/lang/Object;
    aget-object v9, v6, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    .line 3424
    .local v3, "length":I
    if-le v3, v5, :cond_12

    .line 3425
    move v5, v3

    goto :goto_12

    .line 3428
    .end local v3    # "length":I
    .end local v6    # "row":[Ljava/lang/Object;
    :cond_2c
    add-int/2addr v8, v5

    .line 3429
    const-string/jumbo v9, "%%-%ds"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    .line 3420
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3431
    .end local v5    # "maxLength":I
    .end local v7    # "row$iterator":Ljava/util/Iterator;
    :cond_42
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    add-int/lit8 v9, v9, -0x1

    const-string/jumbo v10, "%s"

    aput-object v10, v1, v9

    .line 3432
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v9}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3433
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 3434
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5e
    if-ge v2, v8, :cond_69

    .line 3435
    const-string/jumbo v9, "-"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3434
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 3437
    :cond_69
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3438
    const/4 v2, 0x1

    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "mTableSize":I
    :goto_73
    if-ge v2, v4, :cond_83

    .line 3439
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 3440
    .restart local v6    # "row":[Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3438
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 3417
    .end local v6    # "row":[Ljava/lang/Object;
    :cond_83
    return-void
.end method
