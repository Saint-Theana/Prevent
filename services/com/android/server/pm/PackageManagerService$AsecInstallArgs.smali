.class Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsecInstallArgs"
.end annotation


# static fields
.field static final PUBLIC_RES_FILE_NAME:Ljava/lang/String; = "res.zip"

.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field resourcePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .registers 18
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    .line 13804
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13805
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13806
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 13807
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 13808
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 13809
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceMethod:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceCookie:I

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->certificates:[[Ljava/security/cert/Certificate;

    .line 13807
    const/4 v9, 0x0

    move-object v1, p0

    .line 13805
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[[Ljava/security/cert/Certificate;)V

    .line 13804
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 20
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isForwardLocked"    # Z

    .prologue
    .line 13831
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13832
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x8

    move v3, v1

    .line 13833
    :goto_11
    if-eqz p4, :cond_35

    const/4 v1, 0x1

    .line 13832
    :goto_14
    or-int v5, v3, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 13833
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13834
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v9, p3

    .line 13832
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[[Ljava/security/cert/Certificate;)V

    .line 13835
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 13836
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 13831
    return-void

    .line 13832
    :cond_32
    const/4 v1, 0x0

    move v3, v1

    goto :goto_11

    .line 13833
    :cond_35
    const/4 v1, 0x0

    goto :goto_14
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .registers 25
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "fullCodePath"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isExternal"    # Z
    .param p5, "isForwardLocked"    # Z

    .prologue
    .line 13813
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13815
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v3

    if-eqz p4, :cond_6f

    const/16 v2, 0x8

    move v4, v2

    .line 13816
    :goto_f
    if-eqz p5, :cond_72

    const/4 v2, 0x1

    .line 13815
    :goto_12
    or-int v6, v4, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13816
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 13817
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v10, p3

    .line 13815
    invoke-direct/range {v2 .. v15}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[[Ljava/security/cert/Certificate;)V

    .line 13819
    const-string/jumbo v2, "pkg.apk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 13820
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "pkg.apk"

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 13824
    :cond_3e
    const-string/jumbo v2, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 13825
    .local v16, "eidx":I
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 13826
    .local v18, "subStr1":Ljava/lang/String;
    const-string/jumbo v2, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 13827
    .local v17, "sidx":I
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 13828
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 13814
    return-void

    .line 13815
    .end local v16    # "eidx":I
    .end local v17    # "sidx":I
    .end local v18    # "subStr1":Ljava/lang/String;
    :cond_6f
    const/4 v2, 0x0

    move v4, v2

    goto :goto_f

    .line 13816
    :cond_72
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private cleanUp()V
    .registers 2

    .prologue
    .line 14016
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 14012
    return-void
.end method

.method private cleanUpResourcesLI(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14038
    .local p1, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    .line 14039
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->instructionSets:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;[Ljava/lang/String;)V

    .line 14037
    return-void
.end method

.method private getAllCodePaths()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14020
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14021
    .local v0, "codeFile":Ljava/io/File;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 14023
    const/4 v3, 0x0

    :try_start_12
    invoke-static {v0, v3}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    .line 14024
    .local v2, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;
    :try_end_19
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_12 .. :try_end_19} :catch_1b

    move-result-object v3

    return-object v3

    .line 14025
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_1b
    move-exception v1

    .line 14029
    :cond_1c
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v3
.end method

.method private setMountPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "mountPath"    # Ljava/lang/String;

    .prologue
    .line 13967
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13969
    .local v1, "mountFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "pkg.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13970
    .local v0, "monolithicFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 13971
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 13972
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 13973
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "res.zip"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    .line 13966
    :goto_2d
    return-void

    .line 13975
    :cond_2e
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    goto :goto_2d

    .line 13978
    :cond_33
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 13979
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    goto :goto_2d
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .registers 2

    .prologue
    .line 14034
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    .line 14032
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .registers 12
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 13844
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 13846
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 13847
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 13848
    return v8

    .line 13851
    :cond_1e
    if-eqz p2, :cond_4a

    .line 13852
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->createCopyFile()V

    .line 13862
    :goto_23
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternalAsec()Z

    move-result v4

    .line 13863
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->abiOverride:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap15(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    .line 13861
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IMediaContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13865
    .local v7, "newMountPath":Ljava/lang/String;
    if-eqz v7, :cond_50

    .line 13866
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 13867
    return v8

    .line 13858
    .end local v7    # "newMountPath":Ljava/lang/String;
    :cond_4a
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_23

    .line 13869
    .restart local v7    # "newMountPath":Ljava/lang/String;
    :cond_50
    const/16 v0, -0x12

    return v0
.end method

.method createCopyFile()V
    .registers 2

    .prologue
    .line 13840
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->allocateExternalStageCidLegacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 13839
    return-void
.end method

.method doPostCopy(I)I
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 14076
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 14077
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1b

    .line 14078
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    .line 14079
    const-string/jumbo v2, "pkg.apk"

    .line 14078
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 14086
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 14080
    :cond_1b
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to finalize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14081
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 14082
    const/16 v0, -0x12

    return v0
.end method

.method doPostDeleteLI(Z)Z
    .registers 5
    .param p1, "delete"    # Z

    .prologue
    .line 14048
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 14049
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 14050
    .local v1, "mounted":Z
    if-eqz v1, :cond_15

    .line 14052
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 14053
    const/4 v1, 0x0

    .line 14056
    .end local v1    # "mounted":Z
    :cond_15
    if-nez v1, :cond_1c

    if-eqz p1, :cond_1c

    .line 14057
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    .line 14059
    :cond_1c
    if-eqz v1, :cond_20

    const/4 v2, 0x0

    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x1

    goto :goto_1f
.end method

.method doPostInstall(II)I
    .registers 9
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 13984
    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    .line 13985
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    .line 14009
    :cond_6
    :goto_6
    return p1

    .line 13989
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 13990
    invoke-static {p2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 13991
    .local v0, "groupOwner":I
    const-string/jumbo v2, "pkg.apk"

    .line 13997
    :goto_14
    const/16 v3, 0x2710

    if-lt p2, v3, :cond_39

    .line 13998
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 14004
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 14005
    .local v1, "mounted":Z
    if-nez v1, :cond_6

    .line 14006
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_6

    .line 13993
    .end local v0    # "groupOwner":I
    .end local v1    # "mounted":Z
    :cond_36
    const/4 v0, -0x1

    .line 13994
    .restart local v0    # "groupOwner":I
    const/4 v2, 0x0

    .local v2, "protectedFile":Ljava/lang/String;
    goto :goto_14

    .line 13999
    .end local v2    # "protectedFile":Ljava/lang/String;
    :cond_39
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to finalize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14000
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 14001
    const/16 v3, -0x12

    return v3
.end method

.method doPreCopy()I
    .registers 6

    .prologue
    .line 14064
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 14065
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "com.android.defcontainer"

    .line 14066
    const/high16 v3, 0x100000

    const/4 v4, 0x0

    .line 14065
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 14066
    const-string/jumbo v2, "pkg.apk"

    .line 14065
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 14067
    const/16 v0, -0x12

    return v0

    .line 14071
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method doPreInstall(I)I
    .registers 7
    .param p1, "status"    # I

    .prologue
    .line 13884
    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    .line 13886
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 13899
    :cond_8
    :goto_8
    return p1

    .line 13888
    :cond_9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 13889
    .local v0, "mounted":Z
    if-nez v0, :cond_8

    .line 13890
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    .line 13891
    const/16 v4, 0x3e8

    .line 13890
    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 13892
    .local v1, "newMountPath":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 13893
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    goto :goto_8

    .line 13895
    :cond_23
    const/16 v2, -0x12

    return v2
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 12
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 13903
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "/pkg.apk"

    invoke-static {p3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap16(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13904
    .local v2, "newCacheId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 13905
    .local v3, "newMountPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 13907
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 13908
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to unmount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " before renaming"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13909
    return v7

    .line 13912
    :cond_3f
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cd

    .line 13913
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 13914
    const-string/jumbo v6, " which might be stale. Will try to clean up."

    .line 13913
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13916
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 13917
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Very strange. Cannot clean up stale container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13918
    return v7

    .line 13921
    :cond_96
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cd

    .line 13922
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 13923
    const-string/jumbo v6, " inspite of cleaning it up."

    .line 13922
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13924
    return v7

    .line 13927
    :cond_cd
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_114

    .line 13928
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Mounting container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13930
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e8

    .line 13929
    invoke-static {v2, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 13934
    .local v3, "newMountPath":Ljava/lang/String;
    :goto_f7
    if-nez v3, :cond_119

    .line 13935
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get cache path for  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13936
    return v7

    .line 13932
    .local v3, "newMountPath":Ljava/lang/String;
    :cond_114
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "newMountPath":Ljava/lang/String;
    goto :goto_f7

    .line 13938
    :cond_119
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Succesfully renamed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 13939
    const-string/jumbo v6, " to "

    .line 13938
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 13940
    const-string/jumbo v6, " at new path: "

    .line 13938
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13941
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 13943
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13944
    .local v1, "beforeCodeFile":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    .line 13945
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13948
    .local v0, "afterCodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 13950
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 13949
    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 13952
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 13951
    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setSplitCodePaths([Ljava/lang/String;)V

    .line 13955
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 13956
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoCodePath(Ljava/lang/String;)V

    .line 13957
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseCodePath(Ljava/lang/String;)V

    .line 13958
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitCodePaths([Ljava/lang/String;)V

    .line 13959
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoResourcePath(Ljava/lang/String;)V

    .line 13960
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseResourcePath(Ljava/lang/String;)V

    .line 13961
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V

    .line 13963
    const/4 v4, 0x1

    return v4
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13875
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14043
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13880
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    return-object v0
.end method
