.class final Lcom/android/server/AssetAtlasService$2;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssetAtlasService;->computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;
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
        "Lcom/android/server/AssetAtlasService$WorkerResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AssetAtlasService$WorkerResult;Lcom/android/server/AssetAtlasService$WorkerResult;)I
    .registers 7
    .param p1, "r1"    # Lcom/android/server/AssetAtlasService$WorkerResult;
    .param p2, "r2"    # Lcom/android/server/AssetAtlasService$WorkerResult;

    .prologue
    .line 399
    iget v1, p2, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    iget v2, p1, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    sub-int v0, v1, v2

    .line 400
    .local v0, "delta":I
    if-eqz v0, :cond_9

    return v0

    .line 401
    :cond_9
    iget v1, p1, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    iget v2, p1, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    mul-int/2addr v1, v2

    iget v2, p2, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    iget v3, p2, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    .prologue
    .line 398
    check-cast p1, Lcom/android/server/AssetAtlasService$WorkerResult;

    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AssetAtlasService$WorkerResult;

    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AssetAtlasService$2;->compare(Lcom/android/server/AssetAtlasService$WorkerResult;Lcom/android/server/AssetAtlasService$WorkerResult;)I

    move-result v0

    return v0
.end method
