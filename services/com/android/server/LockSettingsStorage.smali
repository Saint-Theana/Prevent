.class Lcom/android/server/LockSettingsStorage;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStorage$Cache;,
        Lcom/android/server/LockSettingsStorage$Callback;,
        Lcom/android/server/LockSettingsStorage$CredentialHash;,
        Lcom/android/server/LockSettingsStorage$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final BASE_ZERO_LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.gesture.key"

.field private static final CHILD_PROFILE_LOCK_FILE:Ljava/lang/String; = "gatekeeper.profile.key"

.field private static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DEBUG:Z = false

.field private static final DEFAULT:Ljava/lang/Object;

.field private static final LEGACY_LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LEGACY_LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.pattern.key"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsStorage"


# instance fields
.field private final mCache:Lcom/android/server/LockSettingsStorage$Cache;

.field private final mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private final mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

.field private mStoredCredentialType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "value"

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    .line 59
    sput-object v0, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/LockSettingsStorage$Callback;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsStorage$Cache;-><init>(Lcom/android/server/LockSettingsStorage$Cache;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    .line 106
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:Landroid/util/SparseArray;

    .line 105
    return-void
.end method

.method private clearPasswordHash(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 381
    return-void
.end method

.method private clearPatternHash(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 370
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 353
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 356
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v2

    .line 350
    return-void

    .line 352
    .end local v0    # "file":Ljava/io/File;
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getBaseZeroLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 419
    const-string/jumbo v0, "gatekeeper.gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "basename"    # Ljava/lang/String;

    .prologue
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 430
    const-string/jumbo v2, "/system/"

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_30

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 435
    :cond_30
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 288
    .local v0, "contents":[B
    if-eqz v0, :cond_b

    array-length v2, v0

    if-lez v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v6, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v6

    .line 294
    :try_start_3
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 295
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3f

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 297
    :cond_13
    :try_start_13
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-static {v5}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_3f

    move-result v4

    .local v4, "version":I
    monitor-exit v6

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 303
    .local v3, "stored":[B
    :try_start_1c
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v2, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_5e
    .catchall {:try_start_1c .. :try_end_24} :catchall_9b

    .line 304
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v3, v5, [B

    .line 305
    .local v3, "stored":[B
    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 306
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_33} :catch_c1
    .catchall {:try_start_24 .. :try_end_33} :catchall_be

    .line 310
    if-eqz v2, :cond_38

    .line 312
    :try_start_35
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_42

    :cond_38
    :goto_38
    move-object v1, v2

    .line 318
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    :cond_39
    :goto_39
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/server/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    .line 319
    return-object v3

    .line 293
    .end local v4    # "version":I
    :catchall_3f
    move-exception v5

    monitor-exit v6

    throw v5

    .line 313
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "stored":[B
    .restart local v4    # "version":I
    :catch_42
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "stored":[B
    :catch_5e
    move-exception v0

    .line 308
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5f
    :try_start_5f
    const-string/jumbo v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_9b

    .line 310
    if-eqz v1, :cond_39

    .line 312
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_39

    .line 313
    :catch_7f
    move-exception v0

    .line 314
    const-string/jumbo v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 309
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_9b
    move-exception v5

    .line 310
    :goto_9c
    if-eqz v1, :cond_a1

    .line 312
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    .line 309
    :cond_a1
    :goto_a1
    throw v5

    .line 313
    :catch_a2
    move-exception v0

    .line 314
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "LockSettingsStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error closing file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 309
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_be
    move-exception v5

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    goto :goto_9c

    .line 307
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_c1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5f
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 323
    iget-object v4, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 324
    const/4 v1, 0x0

    .line 327
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_b2
    .catchall {:try_start_4 .. :try_end_c} :catchall_8c

    .line 329
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_11

    :try_start_e
    array-length v3, p2

    if-nez v3, :cond_26

    .line 330
    :cond_11
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 334
    :goto_16
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_2c
    .catchall {:try_start_e .. :try_end_19} :catchall_af

    .line 338
    if-eqz v2, :cond_1e

    .line 340
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_6d
    .catchall {:try_start_1b .. :try_end_1e} :catchall_89

    :cond_1e
    :goto_1e
    move-object v1, v2

    .line 346
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_1f
    :goto_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_6a

    monitor-exit v4

    .line 322
    return-void

    .line 332
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_26
    :try_start_26
    array-length v3, p2

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v5, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_af

    goto :goto_16

    .line 335
    :catch_2c
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 336
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_2e
    :try_start_2e
    const-string/jumbo v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_8c

    .line 338
    if-eqz v1, :cond_1f

    .line 340
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_6a

    goto :goto_1f

    .line 341
    :catch_4e
    move-exception v0

    .line 342
    :try_start_4f
    const-string/jumbo v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_6a

    goto :goto_1f

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6a
    move-exception v3

    :goto_6b
    monitor-exit v4

    throw v3

    .line 341
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_6d
    move-exception v0

    .line 342
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6e
    const-string/jumbo v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_6e .. :try_end_88} :catchall_89

    goto :goto_1e

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_89
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    goto :goto_6b

    .line 337
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catchall_8c
    move-exception v3

    .line 338
    :goto_8d
    if-eqz v1, :cond_92

    .line 340
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93
    .catchall {:try_start_8f .. :try_end_92} :catchall_6a

    .line 337
    :cond_92
    :goto_92
    :try_start_92
    throw v3

    .line 341
    :catch_93
    move-exception v0

    .line 342
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_92 .. :try_end_ae} :catchall_6a

    goto :goto_92

    .line 337
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_af
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_8d

    .line 335
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :catch_b2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_2e
.end method


# virtual methods
.method clearCache()V
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$Cache;->clear()V

    .line 482
    return-void
.end method

.method closeDatabase()V
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->close()V

    .line 477
    return-void
.end method

.method getChildProfileLockFile(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 424
    const-string/jumbo v0, "gatekeeper.profile.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 415
    const-string/jumbo v0, "password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPatternFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 410
    const-string/jumbo v0, "gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPasswordFilename(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 405
    const-string/jumbo v0, "gatekeeper.password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternFilename(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 399
    const-string/jumbo v0, "gatekeeper.pattern.key"

    .line 400
    .local v0, "baseFileName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLockPatternSize(I)B
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 386
    const-string/jumbo v2, "lock_pattern_size"

    const-string/jumbo v3, "-1"

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 387
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    const-wide/16 v2, 0x80

    cmp-long v2, v0, v2

    if-gez v2, :cond_21

    .line 388
    long-to-int v2, v0

    int-to-byte v2, v2

    return v2

    .line 390
    :cond_21
    const/4 v2, 0x3

    return v2
.end method

.method public getStoredCredentialType(I)I
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 189
    iget-object v4, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 190
    .local v0, "cachedStoredCredentialType":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 195
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    .line 196
    .local v2, "pattern":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v2, :cond_28

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 198
    const/4 v3, 0x2

    .line 215
    .local v3, "storedCredentialType":I
    :goto_1c
    iget-object v4, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    return v3

    .line 200
    .end local v3    # "storedCredentialType":I
    :cond_26
    const/4 v3, -0x1

    .restart local v3    # "storedCredentialType":I
    goto :goto_1c

    .line 203
    .end local v3    # "storedCredentialType":I
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v1

    .line 204
    .local v1, "password":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v1, :cond_37

    .line 206
    iget v4, v1, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    .line 207
    const/4 v3, 0x2

    .restart local v3    # "storedCredentialType":I
    goto :goto_1c

    .line 209
    .end local v3    # "storedCredentialType":I
    :cond_35
    const/4 v3, 0x1

    .restart local v3    # "storedCredentialType":I
    goto :goto_1c

    .line 212
    .end local v3    # "storedCredentialType":I
    :cond_37
    const/4 v3, 0x1

    .restart local v3    # "storedCredentialType":I
    goto :goto_1c
.end method

.method public hasChildProfileLock(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    .line 276
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public hasPattern(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 282
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    .line 281
    if-nez v0, :cond_1d

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    .line 281
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public isDefaultSize(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternSize(I)B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public prefetchUser(I)V
    .registers 16
    .param p1, "userId"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 161
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v2

    .line 162
    :try_start_6
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->isFetched(I)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_4e

    move-result v1

    if-eqz v1, :cond_10

    monitor-exit v2

    .line 163
    return-void

    .line 165
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->setFetched(I)V

    .line 166
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_4e

    move-result v11

    .local v11, "version":I
    monitor-exit v2

    .line 170
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 171
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 172
    const-string/jumbo v3, "user=?"

    .line 173
    new-array v4, v13, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    .line 171
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_54

    .line 175
    :goto_3a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 176
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, v9, v10, p1, v11}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    goto :goto_3a

    .line 161
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "version":I
    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1

    .line 180
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "version":I
    :cond_51
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_54
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    .line 159
    return-void
.end method

.method public readChildProfileLock(I)[B
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v2

    .line 137
    :try_start_5
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 138
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_57

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 140
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_57

    move-result v10

    .local v10, "version":I
    monitor-exit v2

    .line 144
    sget-object v9, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 145
    .local v9, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 147
    const-string/jumbo v3, "user=? AND name=?"

    .line 148
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/4 v6, 0x1

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 146
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4d

    .line 150
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 151
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 153
    :cond_4a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_4d
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, v9, p3, v10}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 156
    sget-object v1, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    if-ne v9, v1, :cond_5a

    .end local v9    # "result":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_56
    return-object p2

    .line 136
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "version":I
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catchall_57
    move-exception v1

    monitor-exit v2

    throw v1

    .line 156
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "result":Ljava/lang/Object;
    .restart local v10    # "version":I
    :cond_5a
    check-cast v9, Ljava/lang/String;

    move-object p2, v9

    goto :goto_56
.end method

.method public readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 222
    .local v0, "stored":[B
    if-eqz v0, :cond_16

    array-length v1, v0

    if-lez v1, :cond_16

    .line 223
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-object v1

    .line 226
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 227
    if-eqz v0, :cond_29

    array-length v1, v0

    if-lez v1, :cond_29

    .line 228
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-object v1

    .line 231
    :cond_29
    return-object v3
.end method

.method public readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 236
    .local v0, "stored":[B
    if-eqz v0, :cond_16

    array-length v1, v0

    if-lez v1, :cond_16

    .line 237
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, v0, v4}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-object v1

    .line 240
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 241
    if-eqz v0, :cond_29

    array-length v1, v0

    if-lez v1, :cond_29

    .line 242
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, v0, v4}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BZ)V

    return-object v1

    .line 245
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 246
    if-eqz v0, :cond_3c

    array-length v1, v0

    if-lez v1, :cond_3c

    .line 247
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    return-object v1

    .line 250
    :cond_3c
    return-object v3
.end method

.method public removeChildProfileLock(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->deleteFile(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 253
    :goto_7
    return-void

    .line 258
    :catch_8
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public removeUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 440
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 442
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 443
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 445
    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_7f

    .line 447
    iget-object v6, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v6

    .line 448
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 451
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 452
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 454
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 457
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 458
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_7c

    :cond_4a
    monitor-exit v6

    .line 467
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 468
    const-string/jumbo v5, "locksettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 470
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->removeUser(I)V
    :try_end_78
    .catchall {:try_start_4b .. :try_end_78} :catchall_83

    .line 472
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 439
    return-void

    .line 447
    :catchall_7c
    move-exception v5

    monitor-exit v6

    throw v5

    .line 463
    :cond_7f
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    goto :goto_4b

    .line 471
    :catchall_83
    move-exception v5

    .line 472
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 471
    throw v5
.end method

.method public writeChildProfileLock(I[B)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "lock"    # [B

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 263
    return-void
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 123
    :try_start_1e
    const-string/jumbo v1, "locksettings"

    const-string/jumbo v2, "name=? AND user=?"

    .line 124
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 123
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    const-string/jumbo v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 126
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 127
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_47

    .line 129
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 115
    return-void

    .line 128
    :catchall_47
    move-exception v1

    .line 129
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 128
    throw v1
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    return-void
.end method

.method public writePasswordHash([BI)V
    .registers 5
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:Landroid/util/SparseArray;

    if-nez p1, :cond_17

    const/4 v0, -0x1

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 378
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsStorage;->clearPatternHash(I)V

    .line 374
    return-void

    .line 376
    :cond_17
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public writePatternHash([BI)V
    .registers 5
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:Landroid/util/SparseArray;

    if-nez p1, :cond_1e

    const/4 v0, -0x1

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 366
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 367
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsStorage;->clearPasswordHash(I)V

    .line 361
    return-void

    .line 363
    :cond_1e
    const/4 v0, 0x1

    goto :goto_5
.end method
