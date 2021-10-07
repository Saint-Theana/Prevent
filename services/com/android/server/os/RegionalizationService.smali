.class public Lcom/android/server/os/RegionalizationService;
.super Lcom/android/internal/os/IRegionalizationService$Stub;
.source "RegionalizationService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionalizationService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/os/IRegionalizationService$Stub;-><init>()V

    return-void
.end method

.method private deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "delDir"    # Z

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "children":[Ljava/lang/String;
    if-nez v0, :cond_d

    return-void

    .line 143
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 144
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/os/RegionalizationService;->deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 146
    :cond_1e
    if-eqz p3, :cond_23

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 138
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_23
    :goto_23
    return-void

    .line 150
    :cond_24
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 151
    :cond_3a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_23
.end method


# virtual methods
.method public checkFileExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 62
    const/4 v1, 0x1

    return v1

    .line 60
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public deleteFilesUnderDir(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "delDir"    # Z

    .prologue
    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 134
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/os/RegionalizationService;->deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V

    .line 130
    return-void

    .line 132
    :cond_11
    return-void
.end method

.method public readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "regularExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 67
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 74
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 76
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1b
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_f3
    .catchall {:try_start_1b .. :try_end_20} :catchall_ee

    .line 77
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_20
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_f6
    .catchall {:try_start_20 .. :try_end_25} :catchall_f0

    .line 78
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 79
    .end local v0    # "br":Ljava/io/BufferedReader;
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_81

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_81

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 81
    invoke-virtual {v7, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 82
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_41} :catch_42
    .catchall {:try_start_26 .. :try_end_41} :catchall_73

    goto :goto_26

    .line 88
    .end local v7    # "line":Ljava/lang/String;
    :catch_42
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 89
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    :goto_45
    :try_start_45
    const-string/jumbo v8, "RegionalizationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Read File error, caused by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_45 .. :try_end_63} :catchall_ee

    .line 92
    if-eqz v0, :cond_68

    :try_start_65
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_68
    if-eqz v5, :cond_6d

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6d} :catch_ae

    .line 99
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    return-object v2

    .line 68
    .end local v2    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6e
    return-object v9

    .line 85
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_6f
    :try_start_6f
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_42
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_26

    .line 90
    .end local v7    # "line":Ljava/lang/String;
    :catchall_73
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 92
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    :goto_76
    if-eqz v0, :cond_7b

    :try_start_78
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_7b
    if-eqz v5, :cond_80

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_80} :catch_ce

    .line 90
    :cond_80
    :goto_80
    throw v8

    .line 92
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_81
    if-eqz v1, :cond_86

    :try_start_83
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_86
    if-eqz v6, :cond_8b

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8b} :catch_8e

    :cond_8b
    :goto_8b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    goto :goto_6d

    .line 94
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_8e
    move-exception v3

    .line 95
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "RegionalizationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Close the reader error, caused by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 94
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v7    # "line":Ljava/lang/String;
    :catch_ae
    move-exception v3

    .line 95
    const-string/jumbo v8, "RegionalizationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Close the reader error, caused by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 94
    .end local v3    # "e":Ljava/io/IOException;
    :catch_ce
    move-exception v3

    .line 95
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "RegionalizationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Close the reader error, caused by: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 90
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_ee
    move-exception v8

    goto :goto_76

    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catchall_f0
    move-exception v8

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_76

    .line 88
    .local v5, "fr":Ljava/io/FileReader;
    :catch_f3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_45

    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_f6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    goto/16 :goto_45
.end method

.method public bridge synthetic readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "regularExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/RegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "append"    # Z

    .prologue
    const/4 v5, 0x0

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    return v5

    .line 105
    :cond_1b
    return v5

    .line 110
    :cond_1c
    const/4 v2, 0x0

    .line 112
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_1d
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_31
    .catchall {:try_start_1d .. :try_end_22} :catchall_40

    .line 113
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_22
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_4f
    .catchall {:try_start_22 .. :try_end_25} :catchall_4c

    .line 118
    if-eqz v3, :cond_2a

    .line 119
    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2c

    .line 126
    :cond_2a
    const/4 v4, 0x1

    return v4

    .line 120
    :catch_2c
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    return v5

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_31
    move-exception v0

    .line 115
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 118
    if-eqz v2, :cond_3a

    .line 119
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 116
    :cond_3a
    return v5

    .line 120
    :catch_3b
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    return v5

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_40
    move-exception v4

    .line 118
    :goto_41
    if-eqz v2, :cond_46

    .line 119
    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 117
    :cond_46
    throw v4

    .line 120
    :catch_47
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    return v5

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catchall_4c
    move-exception v4

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    goto :goto_41

    .line 114
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_4f
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_32
.end method
