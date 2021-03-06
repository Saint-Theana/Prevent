.class Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# instance fields
.field private final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 2
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 46
    return-void
.end method

.method private getIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/data/resource-cache/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, "@idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isDangerous(Ljava/lang/String;)Z
    .registers 13
    .param p1, "idmapPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 107
    const/4 v1, 0x0

    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_4
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_2b
    .catchall {:try_start_4 .. :try_end_e} :catchall_47

    .line 108
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 109
    .local v4, "magic":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 110
    .local v5, "version":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_19} :catch_4c
    .catchall {:try_start_e .. :try_end_19} :catchall_49

    move-result v0

    .line 111
    .local v0, "dangerous":I
    if-eqz v0, :cond_1d

    move v6, v9

    .line 114
    :cond_1d
    if-eqz v2, :cond_22

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_25

    :cond_22
    :goto_22
    if-eqz v7, :cond_2a

    :try_start_24
    throw v7
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_25} :catch_25

    .line 112
    :catch_25
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 113
    .end local v0    # "dangerous":I
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "magic":I
    .end local v5    # "version":I
    :goto_27
    return v9

    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "dangerous":I
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "magic":I
    .restart local v5    # "version":I
    :catch_28
    move-exception v7

    goto :goto_22

    .line 111
    :cond_2a
    return v6

    .line 114
    .end local v0    # "dangerous":I
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "magic":I
    .end local v5    # "version":I
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_2b
    move-exception v6

    .end local v1    # "dis":Ljava/io/DataInputStream;
    :goto_2c
    :try_start_2c
    throw v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_31
    if-eqz v1, :cond_36

    :try_start_33
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_3b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_39

    :cond_36
    :goto_36
    if-eqz v7, :cond_46

    :try_start_38
    throw v7

    .line 112
    :catch_39
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_27

    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3b
    move-exception v8

    if-nez v7, :cond_40

    move-object v7, v8

    goto :goto_36

    :cond_40
    if-eq v7, v8, :cond_36

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_36

    :cond_46
    throw v6
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_47} :catch_39

    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catchall_47
    move-exception v6

    goto :goto_31

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catchall_49
    move-exception v6

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    goto :goto_31

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_4c
    move-exception v6

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_2c
.end method


# virtual methods
.method createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .registers 11
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I

    .prologue
    .line 57
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v2

    .line 58
    .local v2, "sharedGid":I
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "targetPath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "overlayPath":Ljava/lang/String;
    :try_start_14
    iget-object v4, p0, Lcom/android/server/om/IdmapManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/pm/Installer;->idmap(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_19
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 67
    const/4 v4, 0x1

    return v4

    .line 62
    :catch_1b
    move-exception v0

    .line 63
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to generate idmap for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    const-string/jumbo v6, ": "

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v4, 0x0

    return v4
.end method

.method idmapExists(Landroid/content/om/OverlayInfo;)Z
    .registers 4
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .prologue
    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method idmapExists(Landroid/content/pm/PackageInfo;I)Z
    .registers 5
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method isDangerous(Landroid/content/pm/PackageInfo;I)Z
    .registers 4
    .param p1, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .prologue
    .line 96
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/om/IdmapManager;->isDangerous(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .registers 7
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "userId"    # I

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Installer;->removeIdmap(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_7} :catch_9

    .line 81
    const/4 v1, 0x1

    return v1

    .line 77
    :catch_9
    move-exception v0

    .line 78
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to remove idmap for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    return v1
.end method
