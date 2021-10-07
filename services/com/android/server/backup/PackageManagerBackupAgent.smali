.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_HOME_KEY:Ljava/lang/String; = "@home@"

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field private static final STATE_FILE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PMBA"


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredHome:Landroid/content/ComponentName;

.field private mRestoredHomeInstaller:Ljava/lang/String;

.field private mRestoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mRestoredHomeVersion:J

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredHomeComponent:Landroid/content/ComponentName;

.field private mStoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mStoredHomeVersion:J

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->evaluateStorablePackages()V

    .line 115
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 4
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 111
    return-void
.end method

.method private getPreferredHomeComponent()Landroid/content/ComponentName;
    .registers 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 141
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_c
    if-ltz v1, :cond_22

    .line 142
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 143
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 144
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 147
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_22
    return-object v3
.end method

.method private init(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 4
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    iput-object p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 128
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 121
    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 15
    .param p1, "stateFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v12, 0x0

    .line 496
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 497
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 498
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 499
    iput-object v12, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 500
    iput-object v12, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 501
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 502
    iput-object v12, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 508
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 509
    .local v5, "instream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 510
    .local v4, "inbuffer":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 513
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 514
    .local v2, "ignoreExisting":Z
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 517
    .local v6, "pkg":Ljava/lang/String;
    const-string/jumbo v9, "=state="

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 518
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 519
    .local v7, "stateVersion":I
    const/4 v9, 0x2

    if-le v7, v9, :cond_62

    .line 520
    const-string/jumbo v9, "PMBA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported state file version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 521
    const-string/jumbo v11, ", redoing from start"

    .line 520
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void

    .line 524
    :cond_62
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 536
    .end local v7    # "stateVersion":I
    :goto_66
    const-string/jumbo v9, "@home@"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_89

    .line 538
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 539
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 540
    invoke-static {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 548
    :cond_89
    const-string/jumbo v9, "@meta@"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 549
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 550
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 551
    if-nez v2, :cond_a8

    .line 552
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string/jumbo v10, "@meta@"

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_a8
    :goto_a8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 562
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 564
    .local v8, "versionCode":I
    if-nez v2, :cond_b7

    .line 565
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_b7
    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v10, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v8, v11}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;ILjava/util/ArrayList;)V

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a8

    .line 569
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v8    # "versionCode":I
    :catch_c3
    move-exception v1

    .line 495
    :goto_c4
    return-void

    .line 531
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_c5
    const-string/jumbo v9, "PMBA"

    const-string/jumbo v10, "Older version of saved state - rewriting"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v2, 0x1

    goto :goto_66

    .line 555
    :cond_d0
    const-string/jumbo v9, "PMBA"

    const-string/jumbo v10, "No global metadata in state file!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_d9} :catch_c3
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_d9} :catch_da

    .line 556
    return-void

    .line 571
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_da
    move-exception v0

    .line 573
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v9, "PMBA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to read Package Manager state file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4
.end method

.method private static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 12
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 451
    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_4} :catch_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_1b

    move-result v5

    .line 461
    .local v5, "num":I
    const/16 v8, 0x14

    if-le v5, v8, :cond_31

    .line 462
    :try_start_9
    const-string/jumbo v8, "PMBA"

    const-string/jumbo v9, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Bad restore state"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_1b

    .line 488
    .end local v5    # "num":I
    :catch_1b
    move-exception v1

    .line 489
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "PMBA"

    const-string/jumbo v9, "Unable to read signatures"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-object v10

    .line 452
    .end local v1    # "e":Ljava/io/IOException;
    :catch_26
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/EOFException;
    :try_start_27
    const-string/jumbo v8, "PMBA"

    const-string/jumbo v9, "Read empty signature block"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-object v10

    .line 470
    .end local v0    # "e":Ljava/io/EOFException;
    .restart local v5    # "num":I
    :cond_31
    const/4 v4, 0x0

    .line 471
    .local v4, "nonHashFound":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    .local v7, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v5, :cond_4e

    .line 473
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 474
    .local v3, "len":I
    new-array v6, v3, [B

    .line 475
    .local v6, "readHash":[B
    invoke-virtual {p0, v6}, Ljava/io/DataInputStream;->read([B)I

    .line 476
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const/16 v8, 0x20

    if-eq v3, v8, :cond_4b

    .line 478
    const/4 v4, 0x1

    .line 472
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 482
    .end local v3    # "len":I
    .end local v6    # "readHash":[B
    :cond_4e
    if-eqz v4, :cond_54

    .line 484
    invoke-static {v7}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_53} :catch_1b

    move-result-object v7

    .line 487
    :cond_54
    return-object v7
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .registers 4
    .param p0, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 354
    array-length v0, p2

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 352
    return-void
.end method

.method private static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 441
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "buffer$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 442
    .local v0, "buffer":[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 443
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_b

    .line 436
    .end local v0    # "buffer":[B
    :cond_1f
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V
    .registers 16
    .param p2, "preferredHome"    # Landroid/content/ComponentName;
    .param p3, "homeVersion"    # J
    .param p6, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local p5, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 585
    .local v3, "outstream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 586
    .local v2, "outbuf":Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 591
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_13
    const-string/jumbo v6, "=state="

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 592
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 595
    if-eqz p2, :cond_32

    .line 596
    const-string/jumbo v6, "@home@"

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v1, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 599
    invoke-static {v1, p5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 603
    :cond_32
    const-string/jumbo v6, "@meta@"

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 604
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 605
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 608
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "pkg$iterator":Ljava/util/Iterator;
    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 609
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 610
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_5c} :catch_5d

    goto :goto_46

    .line 614
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    :catch_5d
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "PMBA"

    const-string/jumbo v7, "Unable to write package manager state file!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v0    # "e":Ljava/io/IOException;
    :goto_67
    return-void

    .line 613
    .restart local v5    # "pkg$iterator":Ljava/util/Iterator;
    :cond_68
    :try_start_68
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_5d

    goto :goto_67
.end method


# virtual methods
.method public evaluateStorablePackages()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 133
    return-void
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_f

    .line 156
    const-string/jumbo v0, "PMBA"

    const-string/jumbo v1, "getRestoredMetadata() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v2

    .line 160
    :cond_f
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    return-object v0
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_f

    .line 165
    const-string/jumbo v0, "PMBA"

    const-string/jumbo v1, "getRestoredPackages() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v2

    .line 174
    :cond_f
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasMetadata()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 26
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 183
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v15, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    .local v16, "outputBufferStream":Ljava/io/DataOutputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    if-eqz v3, :cond_155

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_155

    .line 197
    :goto_21
    const-wide/16 v6, 0x0

    .line 198
    .local v6, "homeVersion":J
    const/4 v8, 0x0

    .line 199
    .local v8, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v11, 0x0

    .line 200
    .local v11, "homeInfo":Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    .line 201
    .local v12, "homeInstaller":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getPreferredHomeComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 202
    .local v5, "home":Landroid/content/ComponentName;
    if-eqz v5, :cond_4f

    .line 204
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 205
    const/16 v9, 0x40

    .line 204
    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 206
    .local v11, "homeInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 207
    .local v12, "homeInstaller":Ljava/lang/String;
    iget v3, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v3

    .line 208
    iget-object v3, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_4e} :catch_190

    move-result-object v8

    .line 222
    .end local v5    # "home":Landroid/content/ComponentName;
    .end local v8    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "homeInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "homeInstaller":Ljava/lang/String;
    :cond_4f
    :goto_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    move-wide/from16 v20, v0

    cmp-long v3, v6, v20

    if-nez v3, :cond_19d

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 224
    if-eqz v5, :cond_1a3

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    invoke-static {v3, v11}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1a0

    const/4 v14, 0x0

    .line 226
    .local v14, "needHomeBackup":Z
    :goto_70
    if-eqz v14, :cond_9a

    .line 230
    if-eqz v5, :cond_1ab

    .line 231
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 233
    if-eqz v12, :cond_1a6

    :goto_84
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 235
    const-string/jumbo v3, "@home@"

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 250
    :cond_9a
    :goto_9a
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string/jumbo v4, "@meta@"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b6

    .line 253
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 254
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v3, "@meta@"

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 264
    :goto_c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "pkg$iterator":Ljava/util/Iterator;
    :cond_cc
    :goto_cc
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageInfo;

    .line 265
    .local v18, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 266
    .local v17, "packName":Ljava/lang/String;
    const-string/jumbo v3, "@meta@"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_e6} :catch_14a

    move-result v3

    if-nez v3, :cond_cc

    .line 270
    const/4 v13, 0x0

    .line 272
    .local v13, "info":Landroid/content/pm/PackageInfo;
    :try_start_ea
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 273
    const/16 v4, 0x40

    .line 272
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ea .. :try_end_f5} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f5} :catch_14a

    move-result-object v13

    .line 281
    .local v13, "info":Landroid/content/pm/PackageInfo;
    :try_start_f6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 288
    iget v4, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    iget v3, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    if-eq v4, v3, :cond_cc

    .line 293
    :cond_11d
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_126

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-nez v3, :cond_1ce

    .line 295
    :cond_126
    const-string/jumbo v3, "PMBA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not backing up package "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 296
    const-string/jumbo v9, " since it appears to have no signatures."

    .line 295
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_149} :catch_14a

    goto :goto_cc

    .line 341
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v14    # "needHomeBackup":Z
    .end local v17    # "packName":Ljava/lang/String;
    .end local v18    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v19    # "pkg$iterator":Ljava/util/Iterator;
    :catch_14a
    move-exception v10

    .line 343
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v3, "PMBA"

    const-string/jumbo v4, "Unable to write package backup data file!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 192
    .end local v6    # "homeVersion":J
    .end local v10    # "e":Ljava/io/IOException;
    :cond_155
    const-string/jumbo v3, "PMBA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Previous metadata "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, " mismatch vs "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 192
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    const-string/jumbo v9, " - rewriting"

    .line 192
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_21

    .line 209
    .restart local v5    # "home":Landroid/content/ComponentName;
    .restart local v6    # "homeVersion":J
    .restart local v8    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_190
    move-exception v2

    .line 210
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "PMBA"

    const-string/jumbo v4, "Can\'t access preferred home info"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v5, 0x0

    .local v5, "home":Landroid/content/ComponentName;
    goto/16 :goto_4f

    .line 222
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "home":Landroid/content/ComponentName;
    .end local v8    # "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_19d
    const/4 v14, 0x1

    .restart local v14    # "needHomeBackup":Z
    goto/16 :goto_70

    .line 225
    .end local v14    # "needHomeBackup":Z
    :cond_1a0
    const/4 v14, 0x1

    .restart local v14    # "needHomeBackup":Z
    goto/16 :goto_70

    .line 224
    .end local v14    # "needHomeBackup":Z
    :cond_1a3
    const/4 v14, 0x0

    .restart local v14    # "needHomeBackup":Z
    goto/16 :goto_70

    .line 233
    :cond_1a6
    :try_start_1a6
    const-string/jumbo v12, ""

    goto/16 :goto_84

    .line 237
    :cond_1ab
    const-string/jumbo v3, "@home@"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    goto/16 :goto_9a

    .line 259
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const-string/jumbo v4, "@meta@"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    .line 274
    .local v13, "info":Landroid/content/pm/PackageInfo;
    .restart local v17    # "packName":Ljava/lang/String;
    .restart local v18    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v19    # "pkg$iterator":Ljava/util/Iterator;
    :catch_1c2
    move-exception v2

    .line 277
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_cc

    .line 309
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v13, "info":Landroid/content/pm/PackageInfo;
    :cond_1ce
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 310
    iget v3, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 312
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v3

    .line 311
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 321
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1ee} :catch_14a

    goto/16 :goto_cc

    .line 348
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "packName":Ljava/lang/String;
    .end local v18    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    move-object/from16 v3, p0

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V

    .line 180
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 21
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v9, "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v10, "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;>;"
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v14

    if-eqz v14, :cond_cf

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 374
    .local v4, "dataSize":I
    new-array v7, v4, [B

    .line 375
    .local v7, "inputBytes":[B
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 376
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 377
    .local v5, "inputBuffer":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 379
    .local v6, "inputBufferStream":Ljava/io/DataInputStream;
    const-string/jumbo v14, "@meta@"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_58

    .line 380
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 382
    .local v12, "storedSdkVersion":I
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 365
    const/4 v15, -0x1

    .line 382
    if-le v15, v14, :cond_46

    .line 384
    const-string/jumbo v14, "PMBA"

    const-string/jumbo v15, "Restore set was from a later version of Android; not restoring"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 387
    :cond_46
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 388
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 389
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    goto :goto_a

    .line 396
    .end local v12    # "storedSdkVersion":I
    :cond_58
    const-string/jumbo v14, "@home@"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_86

    .line 397
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "cn":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHome:Landroid/content/ComponentName;

    .line 399
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeVersion:J

    .line 400
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeInstaller:Ljava/lang/String;

    .line 401
    invoke-static {v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeSigHashes:Ljava/util/ArrayList;

    goto :goto_a

    .line 410
    .end local v3    # "cn":Ljava/lang/String;
    :cond_86
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 411
    .local v13, "versionCode":I
    invoke-static {v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v11

    .line 418
    .local v11, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v11, :cond_96

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_b9

    .line 419
    :cond_96
    const-string/jumbo v14, "PMBA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Not restoring package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 420
    const-string/jumbo v16, " since it appears to have no signatures."

    .line 419
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 424
    :cond_b9
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 425
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iput-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 426
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v14, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13, v11}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;ILjava/util/ArrayList;)V

    invoke-virtual {v10, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 432
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "dataSize":I
    .end local v5    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .end local v6    # "inputBufferStream":Ljava/io/DataInputStream;
    .end local v7    # "inputBytes":[B
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v13    # "versionCode":I
    :cond_cf
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 361
    return-void
.end method
