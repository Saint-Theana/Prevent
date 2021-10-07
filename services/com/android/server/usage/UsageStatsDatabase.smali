.class Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;,
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    }
.end annotation


# static fields
.field static final BACKUP_VERSION:I = 0x1

.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x3

.field private static final DEBUG:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field static final QUERY_FLAG_FETCH_CONFIGURATIONS:I = 0x2

.field static final QUERY_FLAG_FETCH_EVENTS:I = 0x4

.field static final QUERY_FLAG_FETCH_EVERYTHING:I = 0x7

.field static final QUERY_FLAG_FETCH_PACKAGES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private mFirstUpdate:Z

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mNewUpdate:Z

.field private final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    .line 76
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "daily"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "weekly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 78
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "monthly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 79
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "yearly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 75
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 82
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 83
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 74
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .registers 16

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x3

    const/4 v11, 0x0

    .line 241
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "currentFingerprint":Ljava/lang/String;
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 243
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 244
    const/4 v4, 0x0

    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_c
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_18} :catch_b2
    .catchall {:try_start_c .. :try_end_18} :catchall_f5

    .line 245
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_18
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 246
    .local v6, "version":I
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "buildFingerprint":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 248
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 250
    :cond_29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 251
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_32} :catch_fc
    .catchall {:try_start_18 .. :try_end_32} :catchall_f8

    .line 255
    :cond_32
    if-eqz v5, :cond_37

    :try_start_34
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_37} :catch_3b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_3b

    :cond_37
    move-object v9, v11

    :goto_38
    if-eqz v9, :cond_b0

    :try_start_3a
    throw v9
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3b} :catch_3b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3b} :catch_3b

    .line 253
    :catch_3b
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v5

    .line 254
    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "version":I
    :goto_3d
    const/4 v6, 0x0

    .line 257
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "version":I
    :goto_3e
    if-eq v6, v13, :cond_68

    .line 258
    const-string/jumbo v9, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Upgrading from version "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0, v6}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V

    .line 262
    :cond_68
    if-ne v6, v13, :cond_6e

    iget-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v9, :cond_ec

    .line 263
    :cond_6e
    const/4 v7, 0x0

    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_6f
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_7b} :catch_d1
    .catchall {:try_start_6f .. :try_end_7b} :catchall_ed

    .line 264
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    const/4 v9, 0x3

    :try_start_7c
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_95} :catch_f2
    .catchall {:try_start_7c .. :try_end_95} :catchall_ef

    .line 272
    if-eqz v8, :cond_9a

    :try_start_97
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9a} :catch_cf
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9d

    :cond_9a
    :goto_9a
    if-eqz v11, :cond_ec

    :try_start_9c
    throw v11
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9d} :catch_9d

    .line 269
    :catch_9d
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v7, v8

    .line 270
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    :goto_9f
    const-string/jumbo v9, "UsageStatsDatabase"

    const-string/jumbo v10, "Failed to write new version"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 255
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buildFingerprint":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_ae
    move-exception v9

    goto :goto_38

    :cond_b0
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_3e

    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v6    # "version":I
    .local v4, "reader":Ljava/io/BufferedReader;
    :catch_b2
    move-exception v9

    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_b3
    :try_start_b3
    throw v9
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v10

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :goto_b8
    if-eqz v4, :cond_bd

    :try_start_ba
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_bd} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_bd} :catch_c0
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_c0

    :cond_bd
    :goto_bd
    if-eqz v10, :cond_ce

    :try_start_bf
    throw v10

    .line 253
    :catch_c0
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_3d

    .line 255
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_c3
    move-exception v12

    if-nez v10, :cond_c8

    move-object v10, v12

    goto :goto_bd

    :cond_c8
    if-eq v10, v12, :cond_bd

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_bd

    :cond_ce
    throw v9
    :try_end_cf
    .catch Ljava/lang/NumberFormatException; {:try_start_bf .. :try_end_cf} :catch_c0
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_cf} :catch_c0

    .line 272
    .restart local v6    # "version":I
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_cf
    move-exception v11

    goto :goto_9a

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_d1
    move-exception v9

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :goto_d2
    :try_start_d2
    throw v9
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    :catchall_d3
    move-exception v10

    move-object v11, v9

    move-object v9, v10

    :goto_d6
    if-eqz v7, :cond_db

    :try_start_d8
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_db} :catch_e0
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_de

    :cond_db
    :goto_db
    if-eqz v11, :cond_eb

    :try_start_dd
    throw v11

    .line 269
    :catch_de
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_9f

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    :catch_e0
    move-exception v10

    if-nez v11, :cond_e5

    move-object v11, v10

    goto :goto_db

    :cond_e5
    if-eq v11, v10, :cond_db

    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_db

    :cond_eb
    throw v9
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_ec} :catch_de

    .line 238
    :cond_ec
    return-void

    .line 272
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_ed
    move-exception v9

    goto :goto_d6

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catchall_ef
    move-exception v9

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .local v7, "writer":Ljava/io/BufferedWriter;
    goto :goto_d6

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_f2
    move-exception v9

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    goto :goto_d2

    .line 255
    .end local v6    # "version":I
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_f5
    move-exception v9

    move-object v10, v11

    goto :goto_b8

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_f8
    move-exception v9

    move-object v10, v11

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_b8

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_fc
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_b3
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .registers 6
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 753
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 754
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1c

    .line 755
    const/4 v2, 0x0

    array-length v3, v1

    :goto_8
    if-ge v2, v3, :cond_1c

    aget-object v0, v1, v2

    .line 756
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_18

    .line 757
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 755
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 759
    :cond_18
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    goto :goto_15

    .line 763
    .end local v0    # "file":Ljava/io/File;
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 752
    return-void
.end method

.method private static deleteDirectoryContents(Ljava/io/File;)V
    .registers 5
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 746
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 747
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_6
    if-ge v2, v3, :cond_10

    aget-object v0, v1, v2

    .line 748
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 745
    .end local v0    # "file":Ljava/io/File;
    :cond_10
    return-void
.end method

.method private static deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;
    .registers 7
    .param p0, "data"    # [B

    .prologue
    .line 732
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 733
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 734
    .local v1, "in":Ljava/io/DataInputStream;
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 736
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 737
    const/4 v4, 0x7

    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_1a

    .line 742
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :goto_19
    return-object v3

    .line 738
    .restart local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_1a
    move-exception v2

    .line 739
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "UsageStatsDatabase"

    const-string/jumbo v5, "DeSerializing IntervalStats Failed"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    const/4 v3, 0x0

    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    goto :goto_19
.end method

.method private doUpgradeLocked(I)V
    .registers 7
    .param p1, "thisVersion"    # I

    .prologue
    .line 283
    const/4 v3, 0x2

    if-ge p1, v3, :cond_2b

    .line 286
    const-string/jumbo v3, "UsageStatsDatabase"

    const-string/jumbo v4, "Deleting all usage stats files"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v3

    if-ge v2, v3, :cond_2b

    .line 288
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 289
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_28

    .line 290
    const/4 v3, 0x0

    array-length v4, v1

    :goto_1e
    if-ge v3, v4, :cond_28

    aget-object v0, v1, v3

    .line 291
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 287
    .end local v0    # "f":Ljava/io/File;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 282
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .registers 3

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    const-string/jumbo v1, ";"

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntervalStatsBytes(Ljava/io/DataInputStream;)[B
    .registers 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 706
    .local v1, "length":I
    new-array v0, v1, [B

    .line 707
    .local v0, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 708
    return-object v0
.end method

.method private indexFilesLocked()V
    .registers 13

    .prologue
    .line 192
    new-instance v1, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 200
    .local v1, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v6, v6

    if-ge v5, v6, :cond_64

    .line 201
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    if-nez v6, :cond_3d

    .line 202
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    new-instance v7, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v7}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v7, v6, v5

    .line 206
    :goto_1a
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v6, v6, v5

    invoke-virtual {v6, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 207
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_61

    .line 212
    const/4 v6, 0x0

    array-length v7, v4

    :goto_26
    if-ge v6, v7, :cond_61

    aget-object v3, v4, v6

    .line 213
    .local v3, "f":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 215
    .local v0, "af":Landroid/util/AtomicFile;
    :try_start_2f
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v5

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3a} :catch_45

    .line 212
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 204
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    :cond_3d
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->clear()V

    goto :goto_1a

    .line 216
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    :catch_45
    move-exception v2

    .line 217
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "UsageStatsDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to index file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 200
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 191
    .end local v4    # "files":[Ljava/io/File;
    :cond_64
    return-void
.end method

.method private mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .registers 5
    .param p1, "beingRestored"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "onDevice"    # Lcom/android/server/usage/IntervalStats;

    .prologue
    const/4 v0, 0x0

    .line 680
    if-nez p2, :cond_4

    return-object p1

    .line 681
    :cond_4
    if-nez p1, :cond_7

    return-object v0

    .line 682
    :cond_7
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 683
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 684
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 685
    return-object p1
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 14
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .prologue
    const/4 v7, 0x0

    .line 519
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 520
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_46

    .line 521
    array-length v8, v4

    move v6, v7

    :goto_9
    if-ge v6, v8, :cond_46

    aget-object v3, v4, v6

    .line 522
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, "path":Ljava/lang/String;
    const-string/jumbo v9, ".bak"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 524
    new-instance v3, Ljava/io/File;

    .end local v3    # "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const-string/jumbo v10, ".bak"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    .restart local v3    # "f":Ljava/io/File;
    :cond_2f
    :try_start_2f
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_42

    move-result-wide v0

    .line 534
    .local v0, "beginTime":J
    :goto_33
    cmp-long v9, v0, p1

    if-gez v9, :cond_3f

    .line 535
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Landroid/util/AtomicFile;->delete()V

    .line 521
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 530
    .end local v0    # "beginTime":J
    :catch_42
    move-exception v2

    .line 531
    .local v2, "e":Ljava/io/IOException;
    const-wide/16 v0, 0x0

    .restart local v0    # "beginTime":J
    goto :goto_33

    .line 518
    .end local v0    # "beginTime":J
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :cond_46
    return-void
.end method

.method private static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .registers 2
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    .prologue
    const/4 v0, 0x0

    .line 712
    if-nez p0, :cond_4

    return-void

    .line 713
    :cond_4
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 714
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 715
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v0}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 711
    :cond_14
    return-void
.end method

.method private static serializeIntervalStats(Lcom/android/server/usage/IntervalStats;)[B
    .registers 7
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    .prologue
    .line 719
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 720
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 722
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_a
    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 723
    invoke-static {v2, p0}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_17

    .line 728
    :goto_12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 724
    :catch_17
    move-exception v1

    .line 725
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v3, "UsageStatsDatabase"

    const-string/jumbo v4, "Serializing IntervalStats Failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_12
.end method

.method private writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V
    .registers 8
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "statsFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    new-instance v2, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v2}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 692
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v3, 0x7

    :try_start_6
    invoke-static {p2, v2, v3}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_18

    .line 698
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    .line 699
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;)[B

    move-result-object v0

    .line 700
    .local v0, "data":[B
    array-length v3, v0

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 701
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 689
    return-void

    .line 693
    .end local v0    # "data":[B
    :catch_18
    move-exception v1

    .line 694
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "UsageStatsDatabase"

    const-string/jumbo v4, "Failed to read usage stats file"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 696
    return-void
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .prologue
    const/4 v12, 0x1

    .line 613
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 614
    :try_start_4
    const-string/jumbo v10, "usage_stats"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b3

    .line 617
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    .line 619
    .local v1, "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    .line 621
    .local v8, "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    .line 623
    .local v6, "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_c3

    move-result-object v9

    .line 626
    .local v9, "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :try_start_21
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 627
    .local v4, "in":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_b5
    .catchall {:try_start_21 .. :try_end_2e} :catchall_c6

    move-result v0

    .line 630
    .local v0, "backupDataVersion":I
    if-lt v0, v12, :cond_33

    if-le v0, v12, :cond_38

    .line 669
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_c3

    monitor-exit v11

    .line 630
    return-void

    .line 634
    :cond_38
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    :try_start_39
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v10, v10

    if-ge v3, v10, :cond_48

    .line 635
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v10, v10, v3

    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 638
    :cond_48
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 639
    .local v2, "fileCount":I
    const/4 v3, 0x0

    :goto_4d
    if-ge v3, v2, :cond_62

    .line 640
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 641
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v7, v1}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 642
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 645
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_62
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 646
    const/4 v3, 0x0

    :goto_67
    if-ge v3, v2, :cond_7c

    .line 647
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 648
    .restart local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 649
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 652
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_7c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 653
    const/4 v3, 0x0

    :goto_81
    if-ge v3, v2, :cond_96

    .line 654
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 655
    .restart local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v7, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 656
    const/4 v10, 0x2

    invoke-virtual {p0, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 653
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 659
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_96
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 660
    const/4 v3, 0x0

    :goto_9b
    if-ge v3, v2, :cond_b0

    .line 661
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 662
    .restart local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v7, v9}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 663
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_ad} :catch_b5
    .catchall {:try_start_39 .. :try_end_ad} :catchall_c6

    .line 660
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 669
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_b0
    :try_start_b0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_c3

    .end local v0    # "backupDataVersion":I
    .end local v1    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v2    # "fileCount":I
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v9    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :cond_b3
    :goto_b3
    monitor-exit v11

    .line 612
    return-void

    .line 666
    .restart local v1    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v8    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v9    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :catch_b5
    move-exception v5

    .line 667
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_b6
    const-string/jumbo v10, "UsageStatsDatabase"

    const-string/jumbo v12, "Failed to read data from input stream"

    invoke-static {v10, v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_c6

    .line 669
    :try_start_bf
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    goto :goto_b3

    .line 613
    .end local v1    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v9    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :catchall_c3
    move-exception v10

    monitor-exit v11

    throw v10

    .line 668
    .restart local v1    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v8    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v9    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :catchall_c6
    move-exception v10

    .line 669
    :try_start_c7
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 668
    throw v10
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_c3
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .registers 16
    .param p1, "checkinAction"    # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 137
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 139
    :try_start_5
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v11, 0x0

    .line 138
    aget-object v4, v9, v11

    .line 140
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 144
    .local v3, "fileCount":I
    const/4 v6, -0x1

    .line 145
    .local v6, "lastCheckin":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_2f

    .line 146
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "-c"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_d0

    move-result v9

    if-eqz v9, :cond_2c

    .line 147
    move v6, v5

    .line 145
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 151
    :cond_2f
    add-int/lit8 v7, v6, 0x1

    .line 152
    .local v7, "start":I
    add-int/lit8 v9, v3, -0x1

    if-ne v7, v9, :cond_37

    monitor-exit v10

    .line 153
    return v13

    .line 157
    :cond_37
    :try_start_37
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 158
    .local v8, "stats":Lcom/android/server/usage/IntervalStats;
    move v5, v7

    :goto_3d
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_62

    .line 159
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    const/4 v11, 0x7

    invoke-static {v9, v8, v11}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 160
    invoke-interface {p1, v8}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4e} :catch_56
    .catchall {:try_start_37 .. :try_end_4e} :catchall_d0

    move-result v9

    if-nez v9, :cond_53

    monitor-exit v10

    .line 161
    return v12

    .line 158
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 164
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_56
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    :try_start_57
    const-string/jumbo v9, "UsageStatsDatabase"

    const-string/jumbo v11, "Failed to check-in"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_d0

    monitor-exit v10

    .line 166
    return v12

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_62
    move v5, v7

    :goto_63
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_ce

    .line 172
    :try_start_67
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    .line 173
    .local v2, "file":Landroid/util/AtomicFile;
    new-instance v0, Ljava/io/File;

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "-c"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "checkedInFile":Ljava/io/File;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_c3

    .line 178
    const-string/jumbo v9, "UsageStatsDatabase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to mark file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 179
    const-string/jumbo v12, " as checked-in"

    .line 178
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_67 .. :try_end_c1} :catchall_d0

    monitor-exit v10

    .line 180
    return v13

    .line 185
    :cond_c3
    :try_start_c3
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_d0

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .end local v0    # "checkedInFile":Ljava/io/File;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :cond_ce
    monitor-exit v10

    .line 188
    return v13

    .line 137
    .end local v3    # "fileCount":I
    .end local v4    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5    # "i":I
    .end local v6    # "lastCheckin":I
    .end local v7    # "start":I
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catchall_d0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public findBestFitBucket(JJ)I
    .registers 18
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    .prologue
    .line 468
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 469
    const/4 v0, -0x1

    .line 470
    .local v0, "bestBucket":I
    const-wide v6, 0x7fffffffffffffffL

    .line 471
    .local v6, "smallestDiff":J
    :try_start_9
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_3a

    .line 472
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v4

    .line 473
    .local v4, "index":I
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    .line 474
    .local v5, "size":I
    if-ltz v4, :cond_37

    if-ge v4, v5, :cond_37

    .line 476
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v10

    sub-long/2addr v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_3c

    move-result-wide v2

    .line 477
    .local v2, "diff":J
    cmp-long v8, v2, v6

    if-gez v8, :cond_37

    .line 478
    move-wide v6, v2

    .line 479
    move v0, v1

    .line 471
    .end local v2    # "diff":J
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .end local v4    # "index":I
    .end local v5    # "size":I
    :cond_3a
    monitor-exit v9

    .line 483
    return v0

    .line 468
    .end local v1    # "i":I
    :catchall_3c
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 566
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 567
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 568
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v4, "usage_stats"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 570
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_d8

    .line 572
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v4, 0x1

    :try_start_1e
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 574
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 578
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;

    .line 577
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 581
    :cond_4a
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 582
    const/4 v1, 0x0

    :goto_57
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_73

    .line 585
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;

    .line 584
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 588
    :cond_73
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 589
    const/4 v1, 0x0

    :goto_80
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_9c

    .line 592
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;

    .line 591
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 595
    :cond_9c
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 596
    const/4 v1, 0x0

    :goto_a9
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_d2

    .line 599
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;

    .line 598
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_c2} :catch_c5
    .catchall {:try_start_1e .. :try_end_c2} :catchall_d8

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 602
    .end local v1    # "i":I
    :catch_c5
    move-exception v2

    .line 603
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_c6
    const-string/jumbo v4, "UsageStatsDatabase"

    const-string/jumbo v6, "Failed to write data to output stream"

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 607
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_d2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_d5
    .catchall {:try_start_c6 .. :try_end_d5} :catchall_d8

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 566
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_d8
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 10
    .param p1, "intervalType"    # I

    .prologue
    const/4 v7, 0x0

    .line 349
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 350
    if-ltz p1, :cond_b

    :try_start_6
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v4

    if-lt p1, v4, :cond_28

    .line 351
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad interval type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_25

    .line 349
    :catchall_25
    move-exception v4

    monitor-exit v5

    throw v4

    .line 354
    :cond_28
    :try_start_28
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    move-result v2

    .line 355
    .local v2, "fileCount":I
    if-nez v2, :cond_34

    monitor-exit v5

    .line 356
    return-object v7

    .line 360
    :cond_34
    :try_start_34
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, p1

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4, v6}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 361
    .local v1, "f":Landroid/util/AtomicFile;
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 362
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v4, 0x7

    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_49} :catch_4b
    .catchall {:try_start_34 .. :try_end_49} :catchall_25

    monitor-exit v5

    .line 363
    return-object v3

    .line 364
    .end local v1    # "f":Landroid/util/AtomicFile;
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_4b
    move-exception v0

    .line 365
    .local v0, "e":Ljava/io/IOException;
    :try_start_4c
    const-string/jumbo v4, "UsageStatsDatabase"

    const-string/jumbo v6, "Failed to read usage stats file"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_25

    monitor-exit v5

    .line 368
    return-object v7
.end method

.method public init(J)V
    .registers 14
    .param p1, "currentTimeMillis"    # J

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 91
    :try_start_4
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v9, v8

    move v6, v5

    :goto_8
    if-ge v6, v9, :cond_39

    aget-object v0, v8, v6

    .line 92
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_36

    .line 94
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to create directory "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 94
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_33

    .line 90
    .end local v0    # "f":Ljava/io/File;
    :catchall_33
    move-exception v5

    monitor-exit v7

    throw v5

    .line 91
    .restart local v0    # "f":Ljava/io/File;
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 99
    .end local v0    # "f":Ljava/io/File;
    :cond_39
    :try_start_39
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 100
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 103
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v9, v8

    move v6, v5

    :goto_43
    if-ge v6, v9, :cond_6d

    aget-object v2, v8, v6

    .line 104
    .local v2, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v4

    .line 105
    .local v4, "startIndex":I
    if-gez v4, :cond_51

    .line 103
    :cond_4d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_43

    .line 109
    :cond_51
    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 110
    .local v1, "fileCount":I
    move v3, v4

    .local v3, "i":I
    :goto_56
    if-ge v3, v1, :cond_64

    .line 111
    invoke-virtual {v2, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 116
    :cond_64
    move v3, v4

    :goto_65
    if-ge v3, v1, :cond_4d

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V
    :try_end_6a
    .catchall {:try_start_39 .. :try_end_6a} :catchall_33

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .end local v1    # "fileCount":I
    .end local v2    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v3    # "i":I
    .end local v4    # "startIndex":I
    :cond_6d
    monitor-exit v7

    .line 89
    return-void
.end method

.method isFirstUpdate()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    return v0
.end method

.method isNewUpdate()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return v0
.end method

.method public onTimeChanged(J)V
    .registers 24
    .param p1, "timeDiffMillis"    # J

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 300
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v9, "logBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "Time changed by "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 303
    const-string/jumbo v14, "."

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const/4 v6, 0x0

    .line 306
    .local v6, "filesDeleted":I
    const/4 v7, 0x0

    .line 308
    .local v7, "filesMoved":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    move-object/from16 v16, v0

    const/4 v14, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_29
    move/from16 v0, v17

    if-ge v14, v0, :cond_a6

    aget-object v5, v16, v14

    .line 309
    .local v5, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    .line 310
    .local v4, "fileCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_34
    if-ge v8, v4, :cond_a0

    .line 311
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 312
    .local v3, "file":Landroid/util/AtomicFile;
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v18

    add-long v12, v18, p1

    .line 313
    .local v12, "newTime":J
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-gez v18, :cond_50

    .line 314
    add-int/lit8 v6, v6, 0x1

    .line 315
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_9d

    .line 310
    :goto_4d
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 318
    :cond_50
    :try_start_50
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_57} :catch_cb
    .catchall {:try_start_50 .. :try_end_57} :catchall_9d

    .line 323
    :goto_57
    :try_start_57
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 324
    .local v11, "newName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "-c"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_82

    .line 325
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "-c"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 328
    :cond_82
    new-instance v10, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .local v10, "newFile":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    .line 330
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9c
    .catchall {:try_start_57 .. :try_end_9c} :catchall_9d

    goto :goto_4d

    .line 299
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "fileCount":I
    .end local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v6    # "filesDeleted":I
    .end local v7    # "filesMoved":I
    .end local v8    # "i":I
    .end local v9    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "newFile":Ljava/io/File;
    .end local v11    # "newName":Ljava/lang/String;
    .end local v12    # "newTime":J
    :catchall_9d
    move-exception v14

    monitor-exit v15

    throw v14

    .line 333
    .restart local v4    # "fileCount":I
    .restart local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v6    # "filesDeleted":I
    .restart local v7    # "filesMoved":I
    .restart local v8    # "i":I
    .restart local v9    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_a0
    :try_start_a0
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 308
    add-int/lit8 v14, v14, 0x1

    goto :goto_29

    .line 336
    .end local v4    # "fileCount":I
    .end local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v8    # "i":I
    :cond_a6
    const-string/jumbo v14, " files deleted: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    const-string/jumbo v14, " files moved: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    const-string/jumbo v14, "UsageStatsDatabase"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_c9
    .catchall {:try_start_a0 .. :try_end_c9} :catchall_9d

    monitor-exit v15

    .line 298
    return-void

    .line 319
    .restart local v3    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "fileCount":I
    .restart local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v8    # "i":I
    .restart local v12    # "newTime":J
    :catch_cb
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_57
.end method

.method public prune(J)V
    .registers 8
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 493
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 494
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    .line 495
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 494
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 497
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 498
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 499
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 500
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 499
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 502
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 503
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 504
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 505
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 504
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 507
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 508
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x7

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 509
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 510
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 509
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 514
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_6c

    monitor-exit v1

    .line 490
    return-void

    .line 491
    :catchall_6c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 9
    .param p1, "intervalType"    # I
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    if-nez p2, :cond_3

    return-void

    .line 546
    :cond_3
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 547
    if-ltz p1, :cond_d

    :try_start_8
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-lt p1, v1, :cond_2a

    .line 548
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad interval type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_27

    .line 546
    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1

    .line 551
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    .line 552
    .local v0, "f":Landroid/util/AtomicFile;
    if-nez v0, :cond_55

    .line 553
    new-instance v0, Landroid/util/AtomicFile;

    .end local v0    # "f":Landroid/util/AtomicFile;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, p1

    .line 554
    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 555
    .restart local v0    # "f":Landroid/util/AtomicFile;
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 558
    :cond_55
    invoke-static {v0, p2}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 559
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_5e
    .catchall {:try_start_2a .. :try_end_5e} :catchall_27

    monitor-exit v2

    .line 544
    return-void
.end method

.method public queryUsageStats(IJJILcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 22
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJI",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 396
    .local p7, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 397
    if-ltz p1, :cond_a

    :try_start_5
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v10, v10

    if-lt p1, v10, :cond_27

    .line 398
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bad interval type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_24

    .line 396
    :catchall_24
    move-exception v10

    monitor-exit v11

    throw v10

    .line 401
    :cond_27
    :try_start_27
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v10, p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_24

    .line 403
    .local v6, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v10, p4, p2

    if-gtz v10, :cond_32

    .line 407
    const/4 v10, 0x0

    monitor-exit v11

    return-object v10

    .line 410
    :cond_32
    :try_start_32
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v8

    .line 411
    .local v8, "startIndex":I
    if-gez v8, :cond_3b

    .line 414
    const/4 v8, 0x0

    .line 417
    :cond_3b
    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_24

    move-result v3

    .line 418
    .local v3, "endIndex":I
    if-gez v3, :cond_46

    .line 423
    const/4 v10, 0x0

    monitor-exit v11

    return-object v10

    .line 426
    :cond_46
    :try_start_46
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_24

    move-result-wide v12

    cmp-long v10, v12, p4

    if-nez v10, :cond_55

    .line 428
    add-int/lit8 v3, v3, -0x1

    .line 429
    if-gez v3, :cond_55

    .line 434
    const/4 v10, 0x0

    monitor-exit v11

    return-object v10

    .line 438
    :cond_55
    :try_start_55
    new-instance v9, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v9}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 439
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v5, v8

    .local v5, "i":I
    :goto_60
    if-gt v5, v3, :cond_87

    .line 441
    invoke-virtual {v6, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;
    :try_end_68
    .catchall {:try_start_55 .. :try_end_68} :catchall_24

    .line 448
    .local v4, "f":Landroid/util/AtomicFile;
    :try_start_68
    move/from16 v0, p6

    invoke-static {v4, v9, v0}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    .line 449
    iget-wide v12, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v10, p2, v12

    if-gez v10, :cond_79

    .line 450
    const/4 v10, 0x0

    move-object/from16 v0, p7

    invoke-interface {v0, v9, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_79} :catch_7c
    .catchall {:try_start_68 .. :try_end_79} :catchall_24

    .line 440
    :cond_79
    :goto_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 452
    :catch_7c
    move-exception v2

    .line 453
    .local v2, "e":Ljava/io/IOException;
    :try_start_7d
    const-string/jumbo v10, "UsageStatsDatabase"

    const-string/jumbo v12, "Failed to read usage stats file"

    invoke-static {v10, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_24

    goto :goto_79

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "f":Landroid/util/AtomicFile;
    :cond_87
    monitor-exit v11

    .line 458
    return-object v7
.end method
