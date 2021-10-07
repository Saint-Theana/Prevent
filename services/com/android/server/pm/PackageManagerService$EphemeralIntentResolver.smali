.class final Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EphemeralIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;",
        "Landroid/content/pm/EphemeralResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mOrderResult:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 11463
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 11476
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 11463
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterResults(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11513
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 11514
    return-void

    .line 11516
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 11517
    .local v3, "resultSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v3, :cond_38

    .line 11518
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/EphemeralResolveInfo;

    .line 11519
    .local v1, "info":Landroid/content/pm/EphemeralResolveInfo;
    invoke-virtual {v1}, Landroid/content/pm/EphemeralResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 11520
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 11521
    .local v4, "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/EphemeralResolveInfo;>;"
    if-nez v4, :cond_27

    .line 11517
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 11525
    :cond_27
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, v1, :cond_39

    .line 11527
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11528
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_24

    .line 11511
    .end local v1    # "info":Landroid/content/pm/EphemeralResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/EphemeralResolveInfo;>;"
    :cond_38
    return-void

    .line 11535
    .restart local v1    # "info":Landroid/content/pm/EphemeralResolveInfo;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/EphemeralResolveInfo;>;"
    :cond_39
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11536
    add-int/lit8 v3, v3, -0x1

    .line 11537
    add-int/lit8 v0, v0, -0x1

    goto :goto_24
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/IntentFilter;

    .prologue
    .line 11484
    check-cast p2, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    .prologue
    .line 11485
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 11479
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 11480
    new-array v0, p1, [Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;II)Landroid/content/pm/EphemeralResolveInfo;
    .registers 11
    .param p1, "info"    # Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 11491
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 11492
    return-object v6

    .line 11494
    :cond_a
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->getEphemeralResolveInfo()Landroid/content/pm/EphemeralResolveInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/EphemeralResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 11495
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->getOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11497
    .local v1, "order":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 11499
    .local v0, "lastOrderResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/EphemeralResolveInfo;>;"
    if-eqz v0, :cond_33

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_33

    .line 11500
    return-object v6

    .line 11502
    :cond_33
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->getEphemeralResolveInfo()Landroid/content/pm/EphemeralResolveInfo;

    move-result-object v3

    .line 11503
    .local v3, "res":Landroid/content/pm/EphemeralResolveInfo;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_47

    .line 11505
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11507
    :cond_47
    return-object v3
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 5
    .param p1, "info"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    .line 11489
    check-cast p1, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    .end local p1    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->newResult(Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;II)Landroid/content/pm/EphemeralResolveInfo;

    move-result-object v0

    return-object v0
.end method
