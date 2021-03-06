.class public Lcom/android/server/backup/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BackupUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashSignature(Landroid/content/pm/Signature;)[B
    .registers 2
    .param p0, "signature"    # Landroid/content/pm/Signature;

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/BackupUtils;->hashSignature([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hashSignature([B)[B
    .registers 5
    .param p0, "signature"    # [B

    .prologue
    .line 96
    :try_start_0
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 97
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    .line 99
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_f
    move-exception v1

    .line 100
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "BackupUtils"

    const-string/jumbo v3, "No SHA-256 algorithm found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x0

    return-object v2
.end method

.method public static hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .local p0, "sigs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .line 122
    if-nez p0, :cond_4

    .line 123
    return-object v3

    .line 126
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v0, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 128
    .local v1, "s":[B
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignature([B)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 130
    .end local v1    # "s":[B
    :cond_25
    return-object v0
.end method

.method public static hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "sigs"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    if-nez p0, :cond_4

    .line 111
    return-object v2

    .line 114
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v0, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_c
    if-ge v2, v3, :cond_1a

    aget-object v1, p0, v2

    .line 116
    .local v1, "s":Landroid/content/pm/Signature;
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignature(Landroid/content/pm/Signature;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 118
    .end local v1    # "s":Landroid/content/pm/Signature;
    :cond_1a
    return-object v0
.end method

.method public static signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z
    .registers 13
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Landroid/content/pm/PackageInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "storedSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 36
    if-nez p1, :cond_5

    .line 37
    return v9

    .line 45
    :cond_5
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_e

    .line 47
    return v10

    .line 52
    :cond_e
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 55
    .local v1, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1e

    .line 56
    :cond_18
    if-eqz v1, :cond_1d

    array-length v8, v1

    if-nez v8, :cond_1e

    .line 57
    :cond_1d
    return v10

    .line 59
    :cond_1e
    if-eqz p0, :cond_22

    if-nez v1, :cond_23

    .line 60
    :cond_22
    return v9

    .line 66
    :cond_23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 67
    .local v6, "nStored":I
    array-length v5, v1

    .line 70
    .local v5, "nDevice":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v0, "deviceHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    if-ge v2, v5, :cond_3c

    .line 72
    aget-object v8, v1, v2

    invoke-static {v8}, Lcom/android/server/backup/BackupUtils;->hashSignature(Landroid/content/pm/Signature;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 76
    :cond_3c
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_3d
    if-ge v4, v6, :cond_5f

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "match":Z
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 79
    .local v7, "storedHash":[B
    const/4 v2, 0x0

    :goto_47
    if-ge v2, v5, :cond_56

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 81
    const/4 v3, 0x1

    .line 86
    :cond_56
    if-nez v3, :cond_5c

    .line 87
    return v9

    .line 79
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 76
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 91
    .end local v3    # "match":Z
    .end local v7    # "storedHash":[B
    :cond_5f
    return v10
.end method
