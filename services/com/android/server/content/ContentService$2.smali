.class Lcom/android/server/content/ContentService$2;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/ContentService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;

.field final synthetic val$pidCounts:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/content/ContentService;
    .param p2, "val$pidCounts"    # Landroid/util/SparseIntArray;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/content/ContentService$2;->this$0:Lcom/android/server/content/ContentService;

    iput-object p2, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 7
    .param p1, "lhs"    # Ljava/lang/Integer;
    .param p2, "rhs"    # Ljava/lang/Integer;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 194
    .local v0, "lc":I
    iget-object v2, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 195
    .local v1, "rc":I
    if-ge v0, v1, :cond_18

    .line 196
    const/4 v2, 0x1

    return v2

    .line 197
    :cond_18
    if-le v0, v1, :cond_1c

    .line 198
    const/4 v2, -0x1

    return v2

    .line 200
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService$2;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
