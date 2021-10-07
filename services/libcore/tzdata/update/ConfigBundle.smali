.class public final Llibcore/tzdata/update/ConfigBundle;
.super Ljava/lang/Object;
.source "ConfigBundle.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final CHECKSUMS_FILE_NAME:Ljava/lang/String; = "checksums"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field public static final TZ_DATA_VERSION_FILE_NAME:Ljava/lang/String; = "tzdata_version"

.field public static final ZONEINFO_FILE_NAME:Ljava/lang/String; = "tzdata"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    .line 49
    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 18
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static/range {p1 .. p2}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 68
    const/4 v12, 0x0

    const/4 v8, 0x0

    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_5
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_b0
    .catchall {:try_start_5 .. :try_end_a} :catchall_ad

    .line 69
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v9, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v10, 0x2000

    :try_start_c
    new-array v1, v10, [B

    .line 71
    .local v1, "buffer":[B
    :cond_e
    :goto_e
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_96

    .line 74
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Llibcore/tzdata/update/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 79
    .local v4, "entryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_39

    .line 80
    move/from16 v0, p2

    invoke-static {v4, v0}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_29} :catch_2a
    .catchall {:try_start_c .. :try_end_29} :catchall_6e

    goto :goto_e

    .line 102
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catch_2a
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_2c
    :try_start_2c
    throw v10
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_31
    if-eqz v8, :cond_36

    :try_start_33
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_a0

    :cond_36
    :goto_36
    if-eqz v11, :cond_ab

    throw v11

    .line 83
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_39
    :try_start_39
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4c

    .line 85
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 84
    move/from16 v0, p2

    invoke-static {v10, v0}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_4c} :catch_2a
    .catchall {:try_start_39 .. :try_end_4c} :catchall_6e

    .line 88
    :cond_4c
    const/4 v11, 0x0

    const/4 v5, 0x0

    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_4e
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_53} :catch_b8
    .catchall {:try_start_4e .. :try_end_53} :catchall_b3

    .line 90
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :goto_53
    :try_start_53
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_72

    .line 91
    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_5e} :catch_5f
    .catchall {:try_start_53 .. :try_end_5e} :catchall_b5

    goto :goto_53

    .line 95
    .end local v2    # "count":I
    :catch_5f
    move-exception v10

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_61
    :try_start_61
    throw v10
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_66
    if-eqz v5, :cond_6b

    :try_start_68
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_83
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6e

    :cond_6b
    :goto_6b
    if-eqz v11, :cond_8e

    :try_start_6d
    throw v11
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6e} :catch_2a
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 102
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catchall_6e
    move-exception v10

    move-object v11, v12

    move-object v8, v9

    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_31

    .line 94
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_72
    :try_start_72
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_79} :catch_5f
    .catchall {:try_start_72 .. :try_end_79} :catchall_b5

    .line 95
    if-eqz v6, :cond_7e

    :try_start_7b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_81
    .catchall {:try_start_7b .. :try_end_7e} :catchall_6e

    :cond_7e
    :goto_7e
    if-eqz v11, :cond_8f

    :try_start_80
    throw v11

    :catch_81
    move-exception v11

    goto :goto_7e

    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_83
    move-exception v13

    if-nez v11, :cond_88

    move-object v11, v13

    goto :goto_6b

    :cond_88
    if-eq v11, v13, :cond_6b

    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6b

    :cond_8e
    throw v10

    .line 97
    .restart local v2    # "count":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_8f
    if-eqz p2, :cond_e

    .line 98
    invoke-static {v4}, Llibcore/tzdata/update/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_94} :catch_2a
    .catchall {:try_start_80 .. :try_end_94} :catchall_6e

    goto/16 :goto_e

    .line 102
    .end local v2    # "count":I
    .end local v4    # "entryFile":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "name":Ljava/lang/String;
    :cond_96
    if-eqz v9, :cond_9b

    :try_start_98
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9b} :catch_9e

    :cond_9b
    :goto_9b
    if-eqz v12, :cond_ac

    throw v12

    :catch_9e
    move-exception v12

    goto :goto_9b

    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_a0
    move-exception v12

    if-nez v11, :cond_a5

    move-object v11, v12

    goto :goto_36

    :cond_a5
    if-eq v11, v12, :cond_36

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_36

    :cond_ab
    throw v10

    .line 63
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_ac
    return-void

    .line 102
    .end local v1    # "buffer":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v8, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_ad
    move-exception v10

    move-object v11, v12

    goto :goto_31

    :catch_b0
    move-exception v10

    goto/16 :goto_2c

    .line 95
    .end local v8    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "entryFile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_b3
    move-exception v10

    goto :goto_66

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_b5
    move-exception v10

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    goto :goto_66

    .local v5, "fos":Ljava/io/FileOutputStream;
    :catch_b8
    move-exception v10

    goto :goto_61
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    if-ne p0, p1, :cond_5

    .line 108
    return v4

    .line 110
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Llibcore/tzdata/update/ConfigBundle;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    .line 111
    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    .line 114
    check-cast v0, Llibcore/tzdata/update/ConfigBundle;

    .line 116
    .local v0, "that":Llibcore/tzdata/update/ConfigBundle;
    iget-object v1, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    iget-object v2, v0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_20

    .line 117
    return v3

    .line 120
    :cond_20
    return v4
.end method

.method public extractTo(Ljava/io/File;)V
    .registers 4
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Llibcore/tzdata/update/ConfigBundle;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    .line 57
    return-void
.end method

.method public getBundleBytes()[B
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Llibcore/tzdata/update/ConfigBundle;->bytes:[B

    return-object v0
.end method
