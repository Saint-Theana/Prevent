.class final Lcom/android/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "Searchables.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/Searchables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 7
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 337
    if-ne p1, p2, :cond_4

    .line 338
    const/4 v2, 0x0

    return v2

    .line 340
    :cond_4
    invoke-static {p1}, Lcom/android/server/search/Searchables;->-wrap0(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    .line 341
    .local v0, "lhsSystem":Z
    invoke-static {p2}, Lcom/android/server/search/Searchables;->-wrap0(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    .line 343
    .local v1, "rhsSystem":Z
    if-eqz v0, :cond_10

    if-eqz v1, :cond_1a

    .line 345
    :cond_10
    if-eqz v1, :cond_14

    if-eqz v0, :cond_1c

    .line 353
    :cond_14
    iget v2, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr v2, v3

    return v2

    .line 344
    :cond_1a
    const/4 v2, -0x1

    return v2

    .line 346
    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 336
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/search/Searchables$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
