.class final Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# static fields
.field static final TYPE_FETCHED:I = 0x2

.field static final TYPE_FILE:I = 0x1

.field static final TYPE_KEY_VALUE:I


# instance fields
.field key:Ljava/lang/String;

.field type:I

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsStorage$Cache$CacheKey;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 653
    instance-of v2, p1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    if-nez v2, :cond_6

    .line 654
    return v1

    :cond_6
    move-object v0, p1

    .line 655
    check-cast v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    .line 656
    .local v0, "o":Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    iget v2, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    iget v3, v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    if-ne v2, v3, :cond_1d

    iget v2, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->type:I

    iget v3, v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->type:I

    if-ne v2, v3, :cond_1d

    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->type:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    .registers 4
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 645
    iput p1, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 646
    iput-object p2, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 647
    iput p3, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 648
    return-object p0
.end method
