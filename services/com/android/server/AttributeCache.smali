.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x4

.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    .line 47
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 85
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 74
    :cond_b
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "styleable"    # [I
    .param p4, "userId"    # I

    .prologue
    const/4 v10, 0x0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_2
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v7, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AttributeCache$Package;

    .line 122
    .local v6, "pkg":Lcom/android/server/AttributeCache$Package;
    const/4 v5, 0x0

    .line 123
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v3, 0x0

    .line 124
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v6, :cond_24

    .line 125
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    check-cast v5, Landroid/util/ArrayMap;

    .line 126
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    if-eqz v5, :cond_6b

    .line 127
    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    check-cast v3, Lcom/android/server/AttributeCache$Entry;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_66

    .line 128
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v3, :cond_6b

    monitor-exit p0

    .line 129
    return-object v3

    .line 135
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_24
    :try_start_24
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 136
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p4}, Landroid/os/UserHandle;-><init>(I)V

    .line 135
    const/4 v9, 0x0

    invoke-virtual {v7, p1, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2f} :catch_34
    .catchall {:try_start_24 .. :try_end_2f} :catchall_66

    move-result-object v0

    .line 137
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_37

    monitor-exit p0

    .line 138
    return-object v10

    .line 140
    .end local v0    # "context":Landroid/content/Context;
    :catch_34
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    .line 141
    return-object v10

    .line 143
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_37
    :try_start_37
    new-instance v6, Lcom/android/server/AttributeCache$Package;

    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    invoke-direct {v6, v0}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 144
    .restart local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    iget-object v7, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v7, p1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 147
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_42
    if-nez v5, :cond_50

    .line 148
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    invoke-static {v6}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_66

    .line 153
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_50
    :try_start_50
    new-instance v3, Lcom/android/server/AttributeCache$Entry;

    iget-object v7, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    .line 154
    iget-object v8, v6, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v8, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 153
    invoke-direct {v3, v7, v8}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    :try_end_5d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_50 .. :try_end_5d} :catch_62
    .catchall {:try_start_50 .. :try_end_5d} :catchall_66

    .line 155
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v3, "ent":Lcom/android/server/AttributeCache$Entry;
    :try_start_5d
    invoke-virtual {v5, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5d .. :try_end_60} :catch_69
    .catchall {:try_start_5d .. :try_end_60} :catchall_66

    monitor-exit p0

    .line 160
    return-object v3

    .line 156
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    :catch_62
    move-exception v2

    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v3, v4

    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_64
    monitor-exit p0

    .line 157
    return-object v10

    .line 120
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    :catchall_66
    move-exception v7

    monitor-exit p0

    throw v7

    .line 156
    .restart local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v6    # "pkg":Lcom/android/server/AttributeCache$Package;
    :catch_69
    move-exception v2

    .restart local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_64

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "ent":Lcom/android/server/AttributeCache$Entry;
    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_6b
    move-object v4, v3

    .restart local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    goto :goto_42
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v5, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AttributeCache$Package;

    .line 91
    .local v3, "pkg":Lcom/android/server/AttributeCache$Package;
    if-eqz v3, :cond_3f

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_36

    .line 93
    invoke-static {v3}, Lcom/android/server/AttributeCache$Package;->-get0(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 94
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_21
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_33

    .line 95
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AttributeCache$Entry;

    invoke-virtual {v5}, Lcom/android/server/AttributeCache$Entry;->recycle()V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 92
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 99
    .end local v1    # "j":I
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    :cond_36
    iget-object v5, v3, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 100
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .end local v0    # "i":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_3f
    monitor-exit p0

    .line 88
    return-void

    .line 89
    .end local v3    # "pkg":Lcom/android/server/AttributeCache$Package;
    :catchall_41
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 108
    .local v0, "changes":I
    const v1, -0x400000a1    # -1.9999808f

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 114
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    .line 105
    return-void

    .line 106
    .end local v0    # "changes":I
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method
