.class Lcom/android/server/pm/CompilerStats;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "CompilerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CompilerStats$PackageStats;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPILER_STATS_VERSION:I = 0x1

.field private static final COMPILER_STATS_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__COMPILER_STATS__"


# instance fields
.field private final packageStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/CompilerStats$PackageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 124
    const-string/jumbo v0, "package-cstats.list"

    const-string/jumbo v1, "CompilerStats_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    .line 123
    return-void
.end method


# virtual methods
.method public createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v2

    .line 142
    :try_start_3
    new-instance v0, Lcom/android/server/pm/CompilerStats$PackageStats;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "newStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v2

    .line 144
    return-object v0

    .line 141
    .end local v0    # "newStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public deletePackageStats(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v1

    .line 161
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 159
    return-void

    .line 160
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v2

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CompilerStats$PackageStats;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    .line 151
    .local v0, "existingStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-eqz v0, :cond_f

    monitor-exit v2

    .line 152
    return-object v0

    .line 155
    :cond_f
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_15

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 149
    .end local v0    # "existingStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CompilerStats$PackageStats;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method maybeWriteAsync()Z
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->maybeWriteAsync(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method read()V
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->read(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public read(Ljava/io/Reader;)Z
    .registers 16
    .param p1, "r"    # Ljava/io/Reader;

    .prologue
    const/4 v12, 0x1

    .line 201
    iget-object v11, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v11

    .line 204
    :try_start_4
    iget-object v10, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4d

    .line 207
    :try_start_9
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    .local v4, "in":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, "versionLine":Ljava/lang/String;
    if-nez v9, :cond_2a

    .line 212
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "No version line found."

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_4d

    .line 243
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v9    # "versionLine":Ljava/lang/String;
    :catch_1d
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1e
    const-string/jumbo v10, "PackageManager"

    const-string/jumbo v12, "Error parsing compiler stats"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_4d

    .line 245
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 214
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "versionLine":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    const-string/jumbo v10, "PACKAGE_MANAGER__COMPILER_STATS__"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_50

    .line 215
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid version line: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4d} :catch_1d
    .catchall {:try_start_2a .. :try_end_4d} :catchall_4d

    .line 201
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v9    # "versionLine":Ljava/lang/String;
    :catchall_4d
    move-exception v10

    monitor-exit v11

    throw v10

    .line 218
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "versionLine":Ljava/lang/String;
    :cond_50
    :try_start_50
    const-string/jumbo v10, "PACKAGE_MANAGER__COMPILER_STATS__"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 219
    .local v8, "version":I
    if-eq v8, v12, :cond_7b

    .line 221
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unexpected version: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 227
    :cond_7b
    new-instance v2, Lcom/android/server/pm/CompilerStats$PackageStats;

    const-string/jumbo v10, "fake package"

    invoke-direct {v2, v10}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "currentPackage":Lcom/android/server/pm/CompilerStats$PackageStats;
    const/4 v5, 0x0

    .line 230
    :goto_84
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_d0

    .line 231
    const-string/jumbo v10, "-"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 232
    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 233
    .local v1, "colonIndex":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_9e

    if-ne v1, v12, :cond_b8

    .line 234
    :cond_9e
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not parse data "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 236
    :cond_b8
    const/4 v10, 0x1

    invoke-virtual {v5, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "codePath":Ljava/lang/String;
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 238
    .local v6, "time":J
    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    goto :goto_84

    .line 240
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v1    # "colonIndex":I
    .end local v6    # "time":J
    :cond_cb
    invoke-virtual {p0, v5}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_ce} :catch_1d
    .catchall {:try_start_50 .. :try_end_ce} :catchall_4d

    move-result-object v2

    goto :goto_84

    :cond_d0
    monitor-exit v11

    .line 248
    return v12
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 284
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected readInternal(Ljava/lang/Void;)V
    .registers 8
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->getFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 286
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 288
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_13} :catch_1b
    .catchall {:try_start_5 .. :try_end_13} :catchall_20

    .line 289
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_13
    invoke-virtual {p0, v3}, Lcom/android/server/pm/CompilerStats;->read(Ljava/io/Reader;)Z
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_28
    .catchall {:try_start_13 .. :try_end_16} :catchall_25

    .line 292
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    .line 284
    .end local v3    # "in":Ljava/io/BufferedReader;
    :goto_1a
    return-void

    .line 290
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1b
    move-exception v0

    .line 292
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "expected":Ljava/io/FileNotFoundException;
    :goto_1c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1a

    .line 291
    .end local v0    # "expected":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_20
    move-exception v4

    .line 292
    .end local v2    # "in":Ljava/io/BufferedReader;
    :goto_21
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 291
    throw v4

    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_25
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_21

    .line 290
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_28
    move-exception v0

    .restart local v0    # "expected":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1c
.end method

.method public setPackageStats(Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stats"    # Lcom/android/server/pm/CompilerStats$PackageStats;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v1

    .line 136
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 134
    return-void

    .line 135
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write(Ljava/io/Writer;)V
    .registers 11
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 178
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 180
    .local v2, "fpw":Lcom/android/internal/util/FastPrintWriter;
    const-string/jumbo v5, "PACKAGE_MANAGER__COMPILER_STATS__"

    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 181
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 183
    iget-object v6, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v6

    .line 184
    :try_start_12
    iget-object v5, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkg$iterator":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CompilerStats$PackageStats;

    .line 185
    .local v3, "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->-get0(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v7

    monitor-enter v7
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_86

    .line 186
    :try_start_2d
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->-get0(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_89

    .line 187
    invoke-virtual {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->-get0(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_2d .. :try_end_82} :catchall_83

    goto :goto_4a

    .line 185
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_83
    move-exception v5

    :try_start_84
    monitor-exit v7

    throw v5
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_86

    .line 183
    .end local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_86
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v4    # "pkg$iterator":Ljava/util/Iterator;
    :cond_89
    :try_start_89
    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_86

    goto :goto_1c

    .end local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    :cond_8b
    monitor-exit v6

    .line 197
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 176
    return-void
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 261
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/Void;)V
    .registers 8
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->getFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 263
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 266
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 267
    .local v1, "f":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 268
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/CompilerStats;->write(Ljava/io/Writer;)V

    .line 269
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 270
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_18

    .line 261
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    :goto_17
    return-void

    .line 271
    :catch_18
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1e

    .line 273
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 275
    :cond_1e
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Failed to write compiler stats"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method writeNow()V
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->writeNow(Ljava/lang/Object;)V

    .line 252
    return-void
.end method
