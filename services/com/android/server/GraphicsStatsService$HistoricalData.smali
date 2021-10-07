.class final Lcom/android/server/GraphicsStatsService$HistoricalData;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HistoricalData"
.end annotation


# instance fields
.field final mBuffer:[B

.field mPackageName:Ljava/lang/String;

.field mUid:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/16 v0, 0x1d0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GraphicsStatsService$HistoricalData;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService$HistoricalData;-><init>()V

    return-void
.end method


# virtual methods
.method update(Ljava/lang/String;ILandroid/os/MemoryFile;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "file"    # Landroid/os/MemoryFile;

    .prologue
    .line 237
    iput p2, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mUid:I

    .line 238
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    .line 240
    :try_start_4
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1d0

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/os/MemoryFile;->readBytes([BIII)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    .line 236
    :goto_d
    return-void

    .line 241
    :catch_e
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_d
.end method
