.class Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    }
.end annotation


# instance fields
.field mBrief:Z

.field mComponents:Z

.field final mInterface:Landroid/content/pm/IPackageManager;

.field private final mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mTargetUser:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 80
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 85
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 1138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Missing ABI argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1142
    :cond_f
    const-string/jumbo v2, "-"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1143
    return-object p0

    .line 1146
    :cond_19
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 1147
    .local v1, "supportedAbis":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_1d
    if-ge v2, v3, :cond_2b

    aget-object v0, v1, v2

    .line 1148
    .local v0, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1149
    return-object p0

    .line 1147
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1153
    .end local v0    # "supportedAbi":Ljava/lang/String;
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ABI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not supported on this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doAbandonSession(IZ)I
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1281
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 1283
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    .line 1284
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    .line 1283
    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_24

    .line 1285
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_14
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 1286
    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    if-eqz p2, :cond_1f

    .line 1287
    const-string/jumbo v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_29

    .line 1289
    :cond_1f
    const/4 v3, 0x0

    .line 1291
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1289
    return v3

    .line 1290
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_24
    move-exception v3

    .line 1291
    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_25
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1290
    throw v3

    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_29
    move-exception v3

    move-object v1, v2

    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_25
.end method

.method private doCommitSession(IZ)I
    .registers 11
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1254
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    .line 1256
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v4, Landroid/content/pm/PackageInstaller$Session;

    .line 1257
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v6

    .line 1256
    invoke-direct {v4, v6}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_67

    .line 1259
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_14
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V

    .line 1260
    .local v1, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 1262
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v2

    .line 1263
    .local v2, "result":Landroid/content/Intent;
    const-string/jumbo v6, "android.content.pm.extra.STATUS"

    .line 1264
    const/4 v7, 0x1

    .line 1263
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1265
    .local v5, "status":I
    if-nez v5, :cond_3b

    .line 1266
    if-eqz p2, :cond_37

    .line 1267
    const-string/jumbo v6, "Success"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_61

    .line 1275
    :cond_37
    :goto_37
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1273
    return v5

    .line 1270
    :cond_3b
    :try_start_3b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1271
    const-string/jumbo v7, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1270
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1271
    const-string/jumbo v7, "]"

    .line 1270
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_3b .. :try_end_60} :catchall_61

    goto :goto_37

    .line 1274
    .end local v1    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v2    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    :catchall_61
    move-exception v6

    move-object v3, v4

    .line 1275
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_63
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1274
    throw v6

    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_67
    move-exception v6

    goto :goto_63
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 6
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1163
    const-string/jumbo v1, "runInstallCreate"

    invoke-direct {p0, p3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(ILjava/lang/String;)I

    move-result p3

    .line 1164
    const/4 v1, -0x1

    if-ne p3, v1, :cond_11

    .line 1165
    const/4 p3, 0x0

    .line 1166
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1169
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v0

    .line 1171
    .local v0, "sessionId":I
    return v0
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .registers 26
    .param p2, "groups"    # Z
    .param p3, "labels"    # Z
    .param p4, "summary"    # Z
    .param p5, "startProtectionLevel"    # I
    .param p6, "endProtectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1298
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v14

    .line 1299
    .local v14, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1300
    .local v6, "groupCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    if-ge v8, v6, :cond_2de

    .line 1301
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1302
    .local v7, "groupName":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 1303
    .local v12, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_6c

    .line 1304
    if-lez v8, :cond_22

    .line 1305
    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    :cond_22
    if-eqz v7, :cond_171

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v10

    .line 1310
    .local v10, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_c3

    .line 1311
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 1312
    .local v15, "res":Landroid/content/res/Resources;
    if-eqz v15, :cond_a5

    .line 1313
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v10, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    move/from16 v17, v0

    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    .end local v10    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_69
    :goto_69
    const-string/jumbo v12, "  "

    .line 1338
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v13

    .line 1339
    .local v13, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    .line 1340
    .local v4, "count":I
    const/4 v5, 0x1

    .line 1341
    .local v5, "first":Z
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_90
    if-ge v9, v4, :cond_2d0

    .line 1342
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PermissionInfo;

    .line 1343
    .local v11, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_19b

    if-nez v7, :cond_19b

    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_19b

    .line 1341
    :cond_a2
    :goto_a2
    add-int/lit8 v9, v9, 0x1

    goto :goto_90

    .line 1315
    .end local v4    # "count":I
    .end local v5    # "first":Z
    .end local v9    # "p":I
    .end local v11    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v13    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v10    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .restart local v15    # "res":Landroid/content/res/Resources;
    :cond_a5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_69

    .line 1319
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_c3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_16c

    const-string/jumbo v16, "+ "

    :goto_cd
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "group:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    if-eqz p3, :cond_69

    .line 1321
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  package:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 1323
    .restart local v15    # "res":Landroid/content/res/Resources;
    if-eqz v15, :cond_69

    .line 1324
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  label:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1325
    iget v0, v10, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    move/from16 v17, v0

    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 1324
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  description:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1327
    iget v0, v10, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    move/from16 v17, v0

    .line 1328
    iget-object v0, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 1327
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 1326
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 1319
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_16c
    const-string/jumbo v16, ""

    goto/16 :goto_cd

    .line 1333
    .end local v10    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_171
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_17a

    if-eqz p4, :cond_197

    :cond_17a
    const-string/jumbo v16, ""

    :goto_17d
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ungrouped:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_69

    :cond_197
    const-string/jumbo v16, "+ "

    goto :goto_17d

    .line 1346
    .restart local v4    # "count":I
    .restart local v5    # "first":Z
    .restart local v9    # "p":I
    .restart local v11    # "pi":Landroid/content/pm/PermissionInfo;
    .restart local v13    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_19b
    iget v0, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v16, v0

    and-int/lit8 v3, v16, 0xf

    .line 1347
    .local v3, "base":I
    move/from16 v0, p5

    if-lt v3, v0, :cond_a2

    .line 1348
    move/from16 v0, p6

    if-gt v3, v0, :cond_a2

    .line 1351
    if-eqz p4, :cond_1e3

    .line 1352
    if-eqz v5, :cond_1cf

    .line 1353
    const/4 v5, 0x0

    .line 1357
    :goto_1ae
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 1358
    .restart local v15    # "res":Landroid/content/res/Resources;
    if-eqz v15, :cond_1d8

    .line 1359
    iget v0, v11, Landroid/content/pm/PermissionInfo;->labelRes:I

    move/from16 v16, v0

    .line 1360
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 1359
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 1355
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_1cf
    const-string/jumbo v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1ae

    .line 1362
    .restart local v15    # "res":Landroid/content/res/Resources;
    :cond_1d8
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 1365
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_1e3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p3, :cond_2cb

    const-string/jumbo v16, "+ "

    :goto_1f3
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1366
    const-string/jumbo v17, "permission:"

    .line 1365
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1366
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1365
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    if-eqz p3, :cond_a2

    .line 1368
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  package:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 1370
    .restart local v15    # "res":Landroid/content/res/Resources;
    if-eqz v15, :cond_2a2

    .line 1371
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  label:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1372
    iget v0, v11, Landroid/content/pm/PermissionInfo;->labelRes:I

    move/from16 v17, v0

    .line 1373
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 1372
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 1371
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  description:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1375
    iget v0, v11, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    move/from16 v17, v0

    .line 1376
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 1375
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 1374
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    :cond_2a2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  protectionLevel:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1379
    iget v0, v11, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v17

    .line 1378
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 1365
    .end local v15    # "res":Landroid/content/res/Resources;
    :cond_2cb
    const-string/jumbo v16, ""

    goto/16 :goto_1f3

    .line 1384
    .end local v3    # "base":I
    .end local v11    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2d0
    if-eqz p4, :cond_2da

    .line 1385
    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    :cond_2da
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 1297
    .end local v4    # "count":I
    .end local v5    # "first":Z
    .end local v7    # "groupName":Ljava/lang/String;
    .end local v9    # "p":I
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_2de
    return-void
.end method

.method private doRemoveSplit(ILjava/lang/String;Z)I
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1234
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 1236
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    .line 1237
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v4

    .line 1236
    invoke-direct {v3, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_24
    .catchall {:try_start_5 .. :try_end_14} :catchall_45

    .line 1238
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_14
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    .line 1240
    if-eqz p3, :cond_1f

    .line 1241
    const-string/jumbo v4, "Success"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_4d
    .catchall {:try_start_14 .. :try_end_1f} :catchall_4a

    .line 1243
    :cond_1f
    const/4 v4, 0x0

    .line 1248
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1243
    return v4

    .line 1244
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_24
    move-exception v0

    .line 1245
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v0, "e":Ljava/io/IOException;
    :goto_25
    :try_start_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error: failed to remove split; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_45

    .line 1246
    const/4 v4, 0x1

    .line 1248
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1246
    return v4

    .line 1247
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_45
    move-exception v4

    .line 1248
    :goto_46
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1247
    throw v4

    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_4a
    move-exception v4

    move-object v2, v3

    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_46

    .line 1244
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_4d
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_25
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .registers 26
    .param p1, "sessionId"    # I
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "sizeBytes"    # J
    .param p5, "splitName"    # Ljava/lang/String;
    .param p6, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v16

    .line 1177
    .local v16, "pw":Ljava/io/PrintWriter;
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-gtz v3, :cond_14

    .line 1178
    const-string/jumbo v3, "Error: must specify a APK size"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    const/4 v3, 0x1

    return v3

    .line 1181
    :cond_14
    if-eqz p2, :cond_21

    const-string/jumbo v3, "-"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 1185
    :cond_21
    const/16 p2, 0x0

    .line 1187
    .local p2, "inPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v14

    .line 1189
    .local v14, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/16 v17, 0x0

    .line 1190
    .local v17, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v12, 0x0

    .line 1191
    .local v12, "in":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 1193
    .local v15, "out":Ljava/io/OutputStream;
    :try_start_35
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    .line 1193
    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_48} :catch_fa
    .catchall {:try_start_35 .. :try_end_48} :catchall_e8

    .line 1199
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_48
    new-instance v13, Lcom/android/internal/util/SizedInputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-direct {v13, v3, v0, v1}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_fe
    .catchall {:try_start_48 .. :try_end_53} :catchall_f5

    .line 1201
    .end local v12    # "in":Ljava/io/InputStream;
    .local v13, "in":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    move-object/from16 v3, p5

    move-wide/from16 v6, p3

    :try_start_59
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v15

    .line 1203
    .local v15, "out":Ljava/io/OutputStream;
    const/16 v18, 0x0

    .line 1204
    .local v18, "total":I
    const/high16 v3, 0x10000

    new-array v8, v3, [B

    .line 1206
    .local v8, "buffer":[B
    :cond_63
    :goto_63
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "c":I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_b6

    .line 1207
    add-int v18, v18, v9

    .line 1208
    const/4 v3, 0x0

    invoke-virtual {v15, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 1210
    iget-wide v4, v14, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_63

    .line 1211
    int-to-float v3, v9

    iget-wide v4, v14, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    long-to-float v4, v4

    div-float v11, v3, v4

    .line 1212
    .local v11, "fraction":F
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageInstaller$Session;->addProgress(F)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_81} :catch_82
    .catchall {:try_start_59 .. :try_end_81} :catchall_f7

    goto :goto_63

    .line 1221
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v11    # "fraction":F
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v18    # "total":I
    :catch_82
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    move-object v12, v13

    .line 1222
    .end local v13    # "in":Ljava/io/InputStream;
    :goto_84
    :try_start_84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: failed to write; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_f5

    .line 1223
    const/4 v3, 0x1

    .line 1225
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1226
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1227
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1223
    return v3

    .line 1182
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v14    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local p2, "inPath":Ljava/lang/String;
    :cond_ac
    const-string/jumbo v3, "Error: APK content must be streamed"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    const/4 v3, 0x1

    return v3

    .line 1215
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v8    # "buffer":[B
    .restart local v9    # "c":I
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local v14    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local v15    # "out":Ljava/io/OutputStream;
    .restart local v18    # "total":I
    .local p2, "inPath":Ljava/lang/String;
    :cond_b6
    :try_start_b6
    invoke-virtual {v2, v15}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 1217
    if-eqz p6, :cond_dd

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Success: streamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_dd} :catch_82
    .catchall {:try_start_b6 .. :try_end_dd} :catchall_f7

    .line 1220
    :cond_dd
    const/4 v3, 0x0

    .line 1225
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1226
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1227
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1220
    return v3

    .line 1224
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v18    # "total":I
    .restart local v12    # "in":Ljava/io/InputStream;
    .local v15, "out":Ljava/io/OutputStream;
    .restart local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_e8
    move-exception v3

    move-object/from16 v2, v17

    .line 1225
    .end local v12    # "in":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_eb
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1226
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1227
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1224
    throw v3

    :catchall_f5
    move-exception v3

    goto :goto_eb

    .restart local v13    # "in":Ljava/io/InputStream;
    :catchall_f7
    move-exception v3

    move-object v12, v13

    .end local v13    # "in":Ljava/io/InputStream;
    .local v12, "in":Ljava/io/InputStream;
    goto :goto_eb

    .line 1221
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v12, "in":Ljava/io/InputStream;
    .restart local v15    # "out":Ljava/io/OutputStream;
    .restart local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_fa
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    move-object/from16 v2, v17

    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_84

    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_fe
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_84
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .registers 9
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1408
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    .line 1409
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_f

    return-object v2

    .line 1411
    :cond_f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v6, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1412
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 1413
    .local v1, "am":Landroid/content/res/AssetManager;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 1414
    new-instance v2, Landroid/content/res/Resources;

    .end local v2    # "res":Landroid/content/res/Resources;
    invoke-direct {v2, v1, v5, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1415
    .restart local v2    # "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    return-object v2
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "res"    # I
    .param p3, "nonLocalized"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1392
    if-eqz p3, :cond_8

    .line 1393
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1395
    :cond_8
    if-eqz p2, :cond_16

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1397
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_16

    .line 1399
    :try_start_10
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    .line 1400
    :catch_15
    move-exception v0

    .line 1404
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_16
    return-object v2
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1022
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 1023
    .local v2, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    invoke-direct {v1, v6}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)V

    .line 1024
    .local v1, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iput-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1026
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1b1

    .line 1027
    const-string/jumbo v3, "-l"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1029
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_e

    .line 1027
    :cond_24
    const-string/jumbo v3, "-r"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1032
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_e

    .line 1027
    :cond_34
    const-string/jumbo v3, "-i"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 1036
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 1037
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Missing installer package"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1027
    :cond_50
    const-string/jumbo v3, "-t"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1041
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_e

    .line 1027
    :cond_60
    const-string/jumbo v3, "-s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1044
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_e

    .line 1027
    :cond_70
    const-string/jumbo v3, "-f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 1047
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_e

    .line 1027
    :cond_80
    const-string/jumbo v3, "-d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 1050
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_e

    .line 1027
    :cond_91
    const-string/jumbo v3, "-g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 1053
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_e

    .line 1027
    :cond_a2
    const-string/jumbo v3, "--dont-kill"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 1056
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_e

    .line 1027
    :cond_b3
    const-string/jumbo v3, "--originating-uri"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    goto/16 :goto_e

    .line 1027
    :cond_c8
    const-string/jumbo v3, "--referrer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    goto/16 :goto_e

    .line 1027
    :cond_dd
    const-string/jumbo v3, "-p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 1065
    const/4 v3, 0x2

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1067
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 1068
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Missing inherit package name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1027
    :cond_fc
    const-string/jumbo v3, "-S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 1072
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto/16 :goto_e

    .line 1027
    :cond_112
    const-string/jumbo v3, "--abi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    goto/16 :goto_e

    .line 1027
    :cond_127
    const-string/jumbo v3, "--ephemeral"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 1078
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_e

    .line 1027
    :cond_138
    const-string/jumbo v3, "--user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    goto/16 :goto_e

    .line 1027
    :cond_14d
    const-string/jumbo v3, "--install-location"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_162

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    goto/16 :goto_e

    .line 1027
    :cond_162
    const-string/jumbo v3, "--force-uuid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 1087
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 1089
    const-string/jumbo v3, "internal"

    iget-object v4, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1090
    iput-object v6, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_e

    .line 1027
    :cond_186
    const-string/jumbo v3, "--force-sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_197

    .line 1094
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_e

    .line 1097
    :cond_197
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown option "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1100
    :cond_1b1
    return-object v1
.end method

.method private parseIntentAndUser()Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 839
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 840
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 841
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 842
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v7

    .line 858
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 859
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    move v4, v3

    move-object v6, v5

    .line 858
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 860
    return-object v7
.end method

.method private printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .registers 9
    .param p1, "pr"    # Landroid/util/PrintWriterPrinter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "brief"    # Z
    .param p5, "components"    # Z

    .prologue
    .line 865
    if-nez p4, :cond_4

    if-eqz p5, :cond_b0

    .line 867
    :cond_4
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_87

    .line 868
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :goto_15
    if-eqz v0, :cond_b0

    .line 877
    if-nez p5, :cond_6e

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 879
    const-string/jumbo v2, " preferredOrder="

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 879
    iget v2, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 880
    const-string/jumbo v2, " match=0x"

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 880
    iget v2, p3, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 881
    const-string/jumbo v2, " specificIndex="

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 881
    iget v2, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 882
    const-string/jumbo v2, " isDefault="

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 882
    iget-boolean v2, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 884
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 885
    return-void

    .line 869
    :cond_87
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_9a

    .line 870
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "comp":Landroid/content/ComponentName;
    goto/16 :goto_15

    .line 871
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_9a
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_ad

    .line 872
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "comp":Landroid/content/ComponentName;
    goto/16 :goto_15

    .line 874
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_ad
    const/4 v0, 0x0

    .local v0, "comp":Landroid/content/ComponentName;
    goto/16 :goto_15

    .line 888
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_b0
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method private runCompile()I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v16

    .line 284
    .local v16, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v20, "dalvik.vm.usejitprofiles"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 285
    .local v3, "checkProfiles":Z
    const/4 v9, 0x0

    .line 286
    .local v9, "forceCompilation":Z
    const/4 v2, 0x0

    .line 287
    .local v2, "allPackages":Z
    const/4 v5, 0x0

    .line 288
    .local v5, "clearProfileData":Z
    const/4 v7, 0x0

    .line 289
    .local v7, "compilerFilter":Ljava/lang/String;
    const/4 v6, 0x0

    .line 290
    .local v6, "compilationReason":Ljava/lang/String;
    const/4 v4, 0x0

    .line 293
    .end local v6    # "compilationReason":Ljava/lang/String;
    .end local v7    # "compilerFilter":Ljava/lang/String;
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v12

    .local v12, "opt":Ljava/lang/String;
    if-eqz v12, :cond_a1

    .line 294
    const-string/jumbo v20, "-a"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    .line 296
    const/4 v2, 0x1

    .line 297
    goto :goto_13

    .line 294
    :cond_26
    const-string/jumbo v20, "-c"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_33

    .line 299
    const/4 v5, 0x1

    .line 300
    goto :goto_13

    .line 294
    :cond_33
    const-string/jumbo v20, "-f"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_40

    .line 302
    const/4 v9, 0x1

    .line 303
    goto :goto_13

    .line 294
    :cond_40
    const-string/jumbo v20, "-m"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_50

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .local v7, "compilerFilter":Ljava/lang/String;
    goto :goto_13

    .line 294
    .end local v7    # "compilerFilter":Ljava/lang/String;
    :cond_50
    const-string/jumbo v20, "-r"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_60

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .local v6, "compilationReason":Ljava/lang/String;
    goto :goto_13

    .line 294
    .end local v6    # "compilationReason":Ljava/lang/String;
    :cond_60
    const-string/jumbo v20, "--check-prof"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_70

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .local v4, "checkProfilesRaw":Ljava/lang/String;
    goto :goto_13

    .line 294
    .end local v4    # "checkProfilesRaw":Ljava/lang/String;
    :cond_70
    const-string/jumbo v20, "--reset"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_81

    .line 314
    const/4 v9, 0x1

    .line 315
    const/4 v5, 0x1

    .line 316
    const-string/jumbo v6, "install"

    .restart local v6    # "compilationReason":Ljava/lang/String;
    goto :goto_13

    .line 319
    .end local v6    # "compilationReason":Ljava/lang/String;
    :cond_81
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Error: Unknown option: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    const/16 v20, 0x1

    return v20

    .line 324
    :cond_a1
    if-eqz v4, :cond_af

    .line 325
    const-string/jumbo v20, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c0

    .line 326
    const/4 v3, 0x1

    .line 335
    .end local v3    # "checkProfiles":Z
    :cond_af
    :goto_af
    if-eqz v7, :cond_da

    if-eqz v6, :cond_da

    .line 336
    const-string/jumbo v20, "Cannot use compilation filter (\"-m\") and compilation reason (\"-r\") at the same time"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const/16 v20, 0x1

    return v20

    .line 327
    .restart local v3    # "checkProfiles":Z
    :cond_c0
    const-string/jumbo v20, "false"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_cd

    .line 328
    const/4 v3, 0x0

    .local v3, "checkProfiles":Z
    goto :goto_af

    .line 330
    .local v3, "checkProfiles":Z
    :cond_cd
    const-string/jumbo v20, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    const/16 v20, 0x1

    return v20

    .line 340
    .end local v3    # "checkProfiles":Z
    :cond_da
    if-nez v7, :cond_eb

    if-nez v6, :cond_eb

    .line 341
    const-string/jumbo v20, "Cannot run without any of compilation filter (\"-m\") and compilation reason (\"-r\") at the same time"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    const/16 v20, 0x1

    return v20

    .line 347
    :cond_eb
    if-eqz v7, :cond_15f

    .line 348
    invoke-static {v7}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_11a

    .line 349
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Error: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 350
    const-string/jumbo v21, "\" is not a valid compilation filter."

    .line 349
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const/16 v20, 0x1

    return v20

    .line 353
    :cond_11a
    move-object/from16 v19, v7

    .line 372
    .local v19, "targetCompilerFilter":Ljava/lang/String;
    :goto_11c
    const/4 v15, 0x0

    .line 373
    .local v15, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1ac

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v15

    .line 384
    .local v15, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v8, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "packageName$iterator":Ljava/util/Iterator;
    :cond_132
    :goto_132
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1c5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 386
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_14b

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 390
    :cond_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v13, v3, v1, v9}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v18

    .line 392
    .local v18, "result":Z
    if-nez v18, :cond_132

    .line 393
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_132

    .line 355
    .end local v8    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "packageName$iterator":Ljava/util/Iterator;
    .end local v15    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "result":Z
    .end local v19    # "targetCompilerFilter":Ljava/lang/String;
    :cond_15f
    const/16 v17, -0x1

    .line 356
    .local v17, "reason":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_162
    sget-object v20, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_17b

    .line 357
    sget-object v20, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v20, v20, v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a3

    .line 359
    move/from16 v17, v10

    .line 363
    :cond_17b
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a6

    .line 364
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Error: Unknown compilation reason: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    const/16 v20, 0x1

    return v20

    .line 356
    :cond_1a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_162

    .line 368
    :cond_1a6
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "targetCompilerFilter":Ljava/lang/String;
    goto/16 :goto_11c

    .line 376
    .end local v10    # "i":I
    .end local v17    # "reason":I
    .local v15, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 377
    .restart local v13    # "packageName":Ljava/lang/String;
    if-nez v13, :cond_1bf

    .line 378
    const-string/jumbo v20, "Error: package name not specified"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const/16 v20, 0x1

    return v20

    .line 381
    :cond_1bf
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .local v15, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_129

    .line 397
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v8    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "packageName$iterator":Ljava/util/Iterator;
    :cond_1c5
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1d8

    .line 398
    const-string/jumbo v20, "Success"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    const/16 v20, 0x0

    return v20

    .line 400
    :cond_1d8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_217

    .line 401
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failure: package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " could not be compiled"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    const/16 v20, 0x1

    return v20

    .line 404
    :cond_217
    const-string/jumbo v20, "Failure: the following packages could not be compiled: "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    const/4 v11, 0x1

    .line 406
    .local v11, "is_first":Z
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_226
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_246

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 407
    .restart local v13    # "packageName":Ljava/lang/String;
    if-eqz v11, :cond_23b

    .line 408
    const/4 v11, 0x0

    .line 412
    :goto_235
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_226

    .line 410
    :cond_23b
    const-string/jumbo v20, ", "

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_235

    .line 414
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_246
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    .line 415
    const/16 v20, 0x1

    return v20
.end method

.method private runDumpProfiles()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    .line 422
    const/4 v1, 0x0

    return v1
.end method

.method private runInstall()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v19

    .line 144
    .local v19, "pw":Ljava/io/PrintWriter;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v18

    .line 145
    .local v18, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "inPath":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_88

    const/16 v17, 0x1

    .line 148
    .local v17, "installExternal":Z
    :goto_18
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v8, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gez v3, :cond_55

    if-eqz v16, :cond_55

    .line 149
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 151
    if-eqz v17, :cond_a7

    .line 153
    const/4 v3, 0x0

    :try_start_36
    invoke-static {v14, v3}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v4

    .line 154
    .local v4, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    new-instance v2, Landroid/content/pm/PackageParser$PackageLite;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 155
    .local v2, "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 157
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 156
    const/4 v7, 0x0

    invoke-static {v2, v7, v5}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J

    move-result-wide v8

    .line 155
    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_55
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_36 .. :try_end_55} :catch_8b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_55} :catch_8b

    .line 168
    .end local v2    # "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v4    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v14    # "file":Ljava/io/File;
    :cond_55
    :goto_55
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 169
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 168
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v6

    .line 170
    .local v6, "sessionId":I
    const/4 v12, 0x1

    .line 172
    .local v12, "abandonSession":Z
    if-nez v16, :cond_b5

    :try_start_6a
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v8, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_b5

    .line 173
    const-string/jumbo v3, "Error: must either specify a package size or an APK file"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_6a .. :try_end_7e} :catchall_ff

    .line 174
    const/4 v3, 0x1

    .line 188
    if-eqz v12, :cond_87

    .line 190
    const/4 v5, 0x0

    :try_start_82
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_b3

    .line 174
    :cond_87
    :goto_87
    return v3

    .line 147
    .end local v6    # "sessionId":I
    .end local v12    # "abandonSession":Z
    .end local v17    # "installExternal":Z
    :cond_88
    const/16 v17, 0x0

    .restart local v17    # "installExternal":Z
    goto :goto_18

    .line 158
    .restart local v14    # "file":Ljava/io/File;
    :catch_8b
    move-exception v13

    .line 159
    .local v13, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error: Failed to parse APK file : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    const/4 v3, 0x1

    return v3

    .line 163
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_a7
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto :goto_55

    .line 191
    .end local v14    # "file":Ljava/io/File;
    .restart local v6    # "sessionId":I
    .restart local v12    # "abandonSession":Z
    :catch_b3
    move-exception v15

    .local v15, "ignore":Ljava/lang/Exception;
    goto :goto_87

    .line 176
    .end local v15    # "ignore":Ljava/lang/Exception;
    :cond_b5
    :try_start_b5
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v8, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-string/jumbo v10, "base.apk"

    .line 177
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v16

    .line 176
    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    :try_end_c6
    .catchall {:try_start_b5 .. :try_end_c6} :catchall_ff

    move-result v3

    if-eqz v3, :cond_d5

    .line 178
    const/4 v3, 0x1

    .line 188
    if-eqz v12, :cond_d2

    .line 190
    const/4 v5, 0x0

    :try_start_cd
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d2} :catch_d3

    .line 178
    :cond_d2
    :goto_d2
    return v3

    .line 191
    :catch_d3
    move-exception v15

    .restart local v15    # "ignore":Ljava/lang/Exception;
    goto :goto_d2

    .line 180
    .end local v15    # "ignore":Ljava/lang/Exception;
    :cond_d5
    const/4 v3, 0x0

    :try_start_d6
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I
    :try_end_db
    .catchall {:try_start_d6 .. :try_end_db} :catchall_ff

    move-result v3

    if-eqz v3, :cond_ea

    .line 182
    const/4 v3, 0x1

    .line 188
    if-eqz v12, :cond_e7

    .line 190
    const/4 v5, 0x0

    :try_start_e2
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e7} :catch_e8

    .line 182
    :cond_e7
    :goto_e7
    return v3

    .line 191
    :catch_e8
    move-exception v15

    .restart local v15    # "ignore":Ljava/lang/Exception;
    goto :goto_e7

    .line 184
    .end local v15    # "ignore":Ljava/lang/Exception;
    :cond_ea
    const/4 v12, 0x0

    .line 185
    :try_start_eb
    const-string/jumbo v3, "Success"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_eb .. :try_end_f3} :catchall_ff

    .line 186
    const/4 v3, 0x0

    .line 188
    if-eqz v12, :cond_fc

    .line 190
    const/4 v5, 0x0

    :try_start_f7
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fc} :catch_fd

    .line 186
    :cond_fc
    :goto_fc
    return v3

    .line 191
    :catch_fd
    move-exception v15

    .restart local v15    # "ignore":Ljava/lang/Exception;
    goto :goto_fc

    .line 187
    .end local v15    # "ignore":Ljava/lang/Exception;
    :catchall_ff
    move-exception v3

    .line 188
    if-eqz v12, :cond_108

    .line 190
    const/4 v5, 0x0

    :try_start_103
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_108} :catch_109

    .line 187
    :cond_108
    :goto_108
    throw v3

    .line 191
    :catch_109
    move-exception v15

    .restart local v15    # "ignore":Ljava/lang/Exception;
    goto :goto_108
.end method

.method private runInstallAbandon()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallCommit()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallCreate()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 242
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    .line 243
    .local v0, "installParams":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 244
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 243
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 247
    .local v2, "sessionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Success: created install session ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const/4 v3, 0x0

    return v3
.end method

.method private runInstallRemove()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 272
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 274
    .local v1, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "splitName":Ljava/lang/String;
    if-nez v2, :cond_1a

    .line 276
    const-string/jumbo v3, "Error: split name not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    return v4

    .line 279
    :cond_1a
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result v3

    return v3
.end method

.method private runInstallWrite()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    const-wide/16 v4, -0x1

    .line 255
    .local v4, "sizeBytes":J
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 256
    const-string/jumbo v1, "-S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 257
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    .line 259
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 264
    .local v2, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "splitName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "path":Ljava/lang/String;
    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method private runList()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 426
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 427
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_12

    .line 429
    const-string/jumbo v2, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    return v4

    .line 432
    :cond_12
    const-string/jumbo v2, "features"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 434
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result v2

    return v2

    .line 432
    :cond_20
    const-string/jumbo v2, "instrumentation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 436
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result v2

    return v2

    .line 432
    :cond_2e
    const-string/jumbo v2, "libraries"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 438
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result v2

    return v2

    .line 432
    :cond_3c
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 441
    :cond_45
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v2

    return v2

    .line 432
    :cond_4b
    const-string/jumbo v2, "packages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string/jumbo v2, "permission-groups"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 443
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result v2

    return v2

    .line 432
    :cond_62
    const-string/jumbo v2, "permissions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 445
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result v2

    return v2

    .line 447
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: unknown list type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    return v4
.end method

.method private runListFeatures()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 453
    .local v4, "pw":Ljava/io/PrintWriter;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 456
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v5, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 465
    if-eqz v2, :cond_4a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 466
    .local v0, "count":I
    :goto_1d
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1e
    if-ge v3, v0, :cond_6a

    .line 467
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/FeatureInfo;

    .line 468
    .local v1, "fi":Landroid/content/pm/FeatureInfo;
    const-string/jumbo v5, "feature:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    iget-object v5, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_4c

    .line 470
    iget-object v5, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    iget v5, v1, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v5, :cond_44

    .line 472
    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    iget v5, v1, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 475
    :cond_44
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 466
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 465
    .end local v0    # "count":I
    .end local v1    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v3    # "p":I
    :cond_4a
    const/4 v0, 0x0

    .restart local v0    # "count":I
    goto :goto_1d

    .line 477
    .restart local v1    # "fi":Landroid/content/pm/FeatureInfo;
    .restart local v3    # "p":I
    :cond_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reqGlEsVersion=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 478
    iget v6, v1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 477
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_47

    .line 481
    .end local v1    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_6a
    return v7
.end method

.method private runListInstrumentation()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 486
    .local v7, "pw":Ljava/io/PrintWriter;
    const/4 v8, 0x0

    .line 487
    .local v8, "showSourceDir":Z
    const/4 v9, 0x0

    .line 491
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .local v5, "opt":Ljava/lang/String;
    if-eqz v5, :cond_59

    .line 492
    const-string/jumbo v10, "-f"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 494
    const/4 v8, 0x1

    .line 495
    goto :goto_8

    .line 497
    :cond_19
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_24

    .line 498
    move-object v9, v5

    .local v9, "targetPackage":Ljava/lang/String;
    goto :goto_8

    .line 500
    .end local v9    # "targetPackage":Ljava/lang/String;
    :cond_24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error: Unknown option: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_3b} :catch_3c

    .line 501
    return v13

    .line 506
    .end local v5    # "opt":Ljava/lang/String;
    :catch_3c
    move-exception v2

    .line 507
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    return v13

    .line 512
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "opt":Ljava/lang/String;
    :cond_59
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v10, v9, v12}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 515
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v10, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v10, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 521
    if-eqz v4, :cond_b1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 522
    .local v1, "count":I
    :goto_71
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_72
    if-ge v6, v1, :cond_b3

    .line 523
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/InstrumentationInfo;

    .line 524
    .local v3, "ii":Landroid/content/pm/InstrumentationInfo;
    const-string/jumbo v10, "instrumentation:"

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    if-eqz v8, :cond_8d

    .line 526
    iget-object v10, v3, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    const-string/jumbo v10, "="

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    :cond_8d
    new-instance v0, Landroid/content/ComponentName;

    iget-object v10, v3, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    const-string/jumbo v10, " (target="

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    iget-object v10, v3, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    const-string/jumbo v10, ")"

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 521
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "count":I
    .end local v3    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v6    # "p":I
    :cond_b1
    const/4 v1, 0x0

    .restart local v1    # "count":I
    goto :goto_71

    .line 535
    .restart local v6    # "p":I
    :cond_b3
    return v12
.end method

.method private runListLibraries()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 540
    .local v5, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, "rawList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v7, v6

    if-ge v1, v7, :cond_1b

    .line 543
    aget-object v7, v6, v1

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 547
    :cond_1b
    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v7, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 556
    if-eqz v3, :cond_3e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 557
    .local v0, "count":I
    :goto_29
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_2a
    if-ge v4, v0, :cond_40

    .line 558
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 559
    .local v2, "lib":Ljava/lang/String;
    const-string/jumbo v7, "library:"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 556
    .end local v0    # "count":I
    .end local v2    # "lib":Ljava/lang/String;
    .end local v4    # "p":I
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "count":I
    goto :goto_29

    .line 562
    .restart local v4    # "p":I
    :cond_40
    const/4 v7, 0x0

    return v7
.end method

.method private runListPackages(Z)I
    .registers 23
    .param p1, "showSourceDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v16

    .line 567
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v5, 0x0

    .line 568
    .local v5, "getFlags":I
    const/4 v8, 0x0

    .local v8, "listDisabled":Z
    const/4 v9, 0x0

    .line 569
    .local v9, "listEnabled":Z
    const/4 v11, 0x0

    .local v11, "listSystem":Z
    const/4 v12, 0x0

    .line 570
    .local v12, "listThirdParty":Z
    const/4 v10, 0x0

    .line 571
    .local v10, "listInstaller":Z
    const/16 v18, 0x0

    .line 574
    .end local p1    # "showSourceDir":Z
    .local v18, "userId":I
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v13

    .local v13, "opt":Ljava/lang/String;
    if-eqz v13, :cond_e0

    .line 575
    const-string/jumbo v19, "-d"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 577
    const/4 v8, 0x1

    .line 578
    goto :goto_c

    .line 575
    :cond_1f
    const-string/jumbo v19, "-e"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 580
    const/4 v9, 0x1

    .line 581
    goto :goto_c

    .line 575
    :cond_2c
    const-string/jumbo v19, "-f"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3a

    .line 583
    const/16 p1, 0x1

    .line 584
    .local p1, "showSourceDir":Z
    goto :goto_c

    .line 575
    .end local p1    # "showSourceDir":Z
    :cond_3a
    const-string/jumbo v19, "-i"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_47

    .line 586
    const/4 v10, 0x1

    .line 587
    goto :goto_c

    .line 575
    :cond_47
    const-string/jumbo v19, "-l"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    const-string/jumbo v19, "-lf"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_60

    .line 592
    const/16 p1, 0x1

    .line 593
    .restart local p1    # "showSourceDir":Z
    goto :goto_c

    .line 575
    .end local p1    # "showSourceDir":Z
    :cond_60
    const-string/jumbo v19, "-s"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6d

    .line 595
    const/4 v11, 0x1

    .line 596
    goto :goto_c

    .line 575
    :cond_6d
    const-string/jumbo v19, "-u"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7b

    .line 598
    or-int/lit16 v5, v5, 0x2000

    .line 599
    goto :goto_c

    .line 575
    :cond_7b
    const-string/jumbo v19, "-3"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_88

    .line 601
    const/4 v12, 0x1

    .line 602
    goto :goto_c

    .line 575
    :cond_88
    const-string/jumbo v19, "--user"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9d

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_c

    .line 607
    :cond_9d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error: Unknown option: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_ba} :catch_bd

    .line 608
    const/16 v19, -0x1

    return v19

    .line 611
    .end local v13    # "opt":Ljava/lang/String;
    :catch_bd
    move-exception v3

    .line 612
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    const/16 v19, -0x1

    return v19

    .line 616
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v13    # "opt":Ljava/lang/String;
    :cond_e0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 620
    .local v4, "filter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v5, v1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v17

    .line 621
    .local v17, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v15

    .line 623
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    .line 624
    .local v2, "count":I
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_fb
    if-ge v14, v2, :cond_1a0

    .line 625
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 626
    .local v6, "info":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_111

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_12e

    .line 630
    :cond_111
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_131

    const/4 v7, 0x1

    .line 631
    .local v7, "isSystem":Z
    :goto_120
    if-eqz v8, :cond_133

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_133

    .line 624
    .end local v7    # "isSystem":Z
    :cond_12e
    :goto_12e
    add-int/lit8 v14, v14, 0x1

    goto :goto_fb

    .line 630
    :cond_131
    const/4 v7, 0x0

    .restart local v7    # "isSystem":Z
    goto :goto_120

    .line 632
    :cond_133
    if-eqz v9, :cond_141

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v19, v0

    .line 631
    if-eqz v19, :cond_12e

    .line 633
    :cond_141
    if-eqz v11, :cond_145

    .line 631
    if-eqz v7, :cond_12e

    .line 634
    :cond_145
    if-eqz v12, :cond_149

    if-nez v7, :cond_12e

    .line 635
    :cond_149
    const-string/jumbo v19, "package:"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    if-eqz p1, :cond_170

    .line 637
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    const-string/jumbo v19, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    :cond_170
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    if-eqz v10, :cond_19c

    .line 642
    const-string/jumbo v19, "  installer="

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    move-object/from16 v19, v0

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    :cond_19c
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->println()V

    goto :goto_12e

    .line 648
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "isSystem":Z
    :cond_1a0
    const/16 v19, 0x0

    return v19
.end method

.method private runListPermissionGroups()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 653
    .local v4, "pw":Ljava/io/PrintWriter;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 655
    .local v3, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 656
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_14
    if-ge v1, v0, :cond_2a

    .line 657
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PermissionGroupInfo;

    .line 658
    .local v2, "pgi":Landroid/content/pm/PermissionGroupInfo;
    const-string/jumbo v5, "permission group:"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget-object v5, v2, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 661
    .end local v2    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_2a
    return v6
.end method

.method private runListPermissions()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v13

    .line 666
    .local v13, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    .line 667
    .local v3, "labels":Z
    const/4 v2, 0x0

    .line 668
    .local v2, "groups":Z
    const/4 v14, 0x0

    .line 669
    .local v14, "userOnly":Z
    const/4 v4, 0x0

    .line 670
    .local v4, "summary":Z
    const/4 v8, 0x0

    .line 672
    .local v8, "dangerousOnly":Z
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v12

    .local v12, "opt":Ljava/lang/String;
    if-eqz v12, :cond_61

    .line 673
    const-string/jumbo v0, "-d"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 675
    const/4 v8, 0x1

    .line 676
    goto :goto_9

    .line 673
    :cond_1a
    const-string/jumbo v0, "-f"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 678
    const/4 v3, 0x1

    .line 679
    goto :goto_9

    .line 673
    :cond_25
    const-string/jumbo v0, "-g"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 681
    const/4 v2, 0x1

    .line 682
    goto :goto_9

    .line 673
    :cond_30
    const-string/jumbo v0, "-s"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 684
    const/4 v2, 0x1

    .line 685
    const/4 v3, 0x1

    .line 686
    const/4 v4, 0x1

    .line 687
    goto :goto_9

    .line 673
    :cond_3d
    const-string/jumbo v0, "-u"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 689
    const/4 v14, 0x1

    .line 690
    goto :goto_9

    .line 692
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error: Unknown option: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    const/4 v0, 0x1

    return v0

    .line 697
    :cond_61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_b6

    .line 700
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v11

    .line 701
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 702
    .local v7, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_78
    if-ge v10, v7, :cond_88

    .line 703
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    add-int/lit8 v10, v10, 0x1

    goto :goto_78

    .line 705
    :cond_88
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .end local v7    # "count":I
    .end local v10    # "i":I
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :goto_8c
    if-eqz v8, :cond_be

    .line 712
    const-string/jumbo v0, "Dangerous Permissions:"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v0, ""

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    const/4 v5, 0x1

    .line 716
    const/4 v6, 0x1

    move-object v0, p0

    .line 714
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 717
    if-eqz v14, :cond_b4

    .line 718
    const-string/jumbo v0, "Normal Permissions:"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    const-string/jumbo v0, ""

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    const/4 v5, 0x0

    .line 722
    const/4 v6, 0x0

    move-object v0, p0

    .line 720
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 736
    :cond_b4
    :goto_b4
    const/4 v0, 0x0

    return v0

    .line 707
    :cond_b6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, "grp":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 724
    .end local v9    # "grp":Ljava/lang/String;
    :cond_be
    if-eqz v14, :cond_d3

    .line 725
    const-string/jumbo v0, "Dangerous and Normal Permissions:"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    const-string/jumbo v0, ""

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    const/4 v5, 0x0

    .line 729
    const/4 v6, 0x1

    move-object v0, p0

    .line 727
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_b4

    .line 731
    :cond_d3
    const-string/jumbo v0, "All Permissions:"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    const-string/jumbo v0, ""

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    const/16 v5, -0x2710

    const/16 v6, 0x2710

    move-object v0, p0

    .line 733
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_b4
.end method

.method private runQueryIntentActivities()I
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 916
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_4} :catch_26

    move-result-object v9

    .line 921
    .local v9, "intent":Landroid/content/Intent;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 922
    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 921
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v9, v3, v4, v2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v11

    .line 923
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 924
    .local v10, "pw":Ljava/io/PrintWriter;
    if-eqz v11, :cond_1f

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_31

    .line 925
    :cond_1f
    const-string/jumbo v0, "No activities found"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_91

    .line 944
    :cond_25
    return v12

    .line 917
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_26
    move-exception v7

    .line 918
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 927
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_31
    :try_start_31
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v0, :cond_71

    .line 928
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " activities found:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 930
    .local v1, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_48
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_25

    .line 931
    const-string/jumbo v0, "  Activity #"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    const-string/jumbo v2, "    "

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 930
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 935
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    :cond_71
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 936
    .restart local v1    # "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_77
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_25

    .line 937
    const-string/jumbo v2, ""

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_8e} :catch_91

    .line 936
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 941
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_91
    move-exception v6

    .line 942
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed calling service"

    invoke-direct {v0, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private runQueryIntentReceivers()I
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 984
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_4} :catch_26

    move-result-object v9

    .line 989
    .local v9, "intent":Landroid/content/Intent;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 990
    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 989
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v9, v3, v4, v2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v11

    .line 991
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 992
    .local v10, "pw":Ljava/io/PrintWriter;
    if-eqz v11, :cond_1f

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_31

    .line 993
    :cond_1f
    const-string/jumbo v0, "No receivers found"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_91

    .line 1012
    :cond_25
    return v12

    .line 985
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_26
    move-exception v7

    .line 986
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 995
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_31
    :try_start_31
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v0, :cond_71

    .line 996
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " receivers found:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 998
    .local v1, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_48
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_25

    .line 999
    const-string/jumbo v0, "  Receiver #"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    const-string/jumbo v2, "    "

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 998
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 1003
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    :cond_71
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1004
    .restart local v1    # "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_77
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_25

    .line 1005
    const-string/jumbo v2, ""

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_8e} :catch_91

    .line 1004
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 1009
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_91
    move-exception v6

    .line 1010
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed calling service"

    invoke-direct {v0, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private runQueryIntentServices()I
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 950
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_4} :catch_26

    move-result-object v9

    .line 955
    .local v9, "intent":Landroid/content/Intent;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 956
    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 955
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v9, v3, v4, v2}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v11

    .line 957
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 958
    .local v10, "pw":Ljava/io/PrintWriter;
    if-eqz v11, :cond_1f

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_31

    .line 959
    :cond_1f
    const-string/jumbo v0, "No services found"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_91

    .line 978
    :cond_25
    return v12

    .line 951
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_26
    move-exception v7

    .line 952
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 961
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_31
    :try_start_31
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v0, :cond_71

    .line 962
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " services found:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 964
    .local v1, "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_48
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_25

    .line 965
    const-string/jumbo v0, "  Service #"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    const-string/jumbo v2, "    "

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 964
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 969
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    :cond_71
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v10}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 970
    .restart local v1    # "pr":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_77
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_25

    .line 971
    const-string/jumbo v2, ""

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_8e} :catch_91

    .line 970
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 975
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v8    # "i":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_91
    move-exception v6

    .line 976
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed calling service"

    invoke-direct {v0, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 810
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 811
    .local v4, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 812
    iput-object p1, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 814
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v3

    .line 815
    .local v3, "sessionId":I
    const/4 v0, 0x1

    .line 817
    .local v0, "abandonSession":Z
    const/4 v5, 0x0

    :try_start_1c
    invoke-direct {p0, v3, p2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4b

    move-result v5

    if-eqz v5, :cond_2b

    .line 829
    if-eqz v0, :cond_28

    .line 831
    const/4 v5, 0x0

    :try_start_25
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 819
    :cond_28
    :goto_28
    return v8

    .line 832
    :catch_29
    move-exception v1

    .local v1, "ignore":Ljava/lang/Exception;
    goto :goto_28

    .line 821
    .end local v1    # "ignore":Ljava/lang/Exception;
    :cond_2b
    const/4 v5, 0x0

    :try_start_2c
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4b

    move-result v5

    if-eqz v5, :cond_3b

    .line 829
    if-eqz v0, :cond_38

    .line 831
    const/4 v5, 0x0

    :try_start_35
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 823
    :cond_38
    :goto_38
    return v8

    .line 832
    :catch_39
    move-exception v1

    .restart local v1    # "ignore":Ljava/lang/Exception;
    goto :goto_38

    .line 825
    .end local v1    # "ignore":Ljava/lang/Exception;
    :cond_3b
    const/4 v0, 0x0

    .line 826
    :try_start_3c
    const-string/jumbo v5, "Success"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_4b

    .line 829
    if-eqz v0, :cond_48

    .line 831
    const/4 v5, 0x0

    :try_start_45
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    .line 827
    :cond_48
    :goto_48
    return v7

    .line 832
    :catch_49
    move-exception v1

    .restart local v1    # "ignore":Ljava/lang/Exception;
    goto :goto_48

    .line 828
    .end local v1    # "ignore":Ljava/lang/Exception;
    :catchall_4b
    move-exception v5

    .line 829
    if-eqz v0, :cond_52

    .line 831
    const/4 v6, 0x0

    :try_start_4f
    invoke-direct {p0, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    .line 828
    :cond_52
    :goto_52
    throw v5

    .line 832
    :catch_53
    move-exception v1

    .restart local v1    # "ignore":Ljava/lang/Exception;
    goto :goto_52
.end method

.method private runResolveActivity()I
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 894
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_4} :catch_1c

    move-result-object v8

    .line 899
    .local v8, "intent":Landroid/content/Intent;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v8, v4, v5, v2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 900
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 901
    .local v9, "pw":Ljava/io/PrintWriter;
    if-nez v3, :cond_27

    .line 902
    const-string/jumbo v0, "No activity found"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_38

    .line 910
    :goto_1b
    return v10

    .line 895
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "pw":Ljava/io/PrintWriter;
    :catch_1c
    move-exception v7

    .line 896
    .local v7, "e":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 904
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    :cond_27
    :try_start_27
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v9}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 905
    .local v1, "pr":Landroid/util/PrintWriterPrinter;
    const-string/jumbo v2, ""

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_37} :catch_38

    goto :goto_1b

    .line 907
    .end local v1    # "pr":Landroid/util/PrintWriterPrinter;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "pw":Ljava/io/PrintWriter;
    :catch_38
    move-exception v6

    .line 908
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed calling service"

    invoke-direct {v0, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private runSetHomeActivity()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 1105
    .local v4, "pw":Ljava/io/PrintWriter;
    const/4 v5, 0x0

    .line 1107
    .local v5, "userId":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_37

    .line 1108
    const-string/jumbo v6, "--user"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_7

    .line 1113
    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error: Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    return v8

    .line 1118
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "component":Ljava/lang/String;
    if-eqz v0, :cond_41

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1122
    .local v1, "componentName":Landroid/content/ComponentName;
    :cond_41
    if-nez v1, :cond_4a

    .line 1123
    const-string/jumbo v6, "Error: component name not specified or invalid"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    return v8

    .line 1128
    :cond_4a
    :try_start_4a
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v5}, Landroid/content/pm/IPackageManager;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 1129
    const-string/jumbo v6, "Success"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_55} :catch_57

    .line 1130
    const/4 v6, 0x0

    return v6

    .line 1131
    :catch_57
    move-exception v2

    .line 1132
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    return v8
.end method

.method private runSuspend(Z)I
    .registers 12
    .param p1, "suspendedState"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 199
    .local v3, "pw":Ljava/io/PrintWriter;
    const/4 v4, 0x0

    .line 201
    .local v4, "userId":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_37

    .line 202
    const-string/jumbo v5, "--user"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 204
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    .line 207
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return v8

    .line 212
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_44

    .line 214
    const-string/jumbo v5, "Error: package name not specified"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    return v8

    .line 219
    :cond_44
    :try_start_44
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v5, v6, p1, v4}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " new suspended state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 222
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v2, v4}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v6

    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_77} :catch_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_77} :catch_78

    .line 223
    return v9

    .line 224
    :catch_78
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    return v8
.end method

.method private runUninstall()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 741
    .local v9, "pw":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    .line 742
    .local v3, "flags":I
    const/4 v5, -0x1

    .line 745
    .local v5, "userId":I
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    .local v8, "opt":Ljava/lang/String;
    if-eqz v8, :cond_43

    .line 746
    const-string/jumbo v0, "-k"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 748
    or-int/lit8 v3, v3, 0x1

    .line 749
    goto :goto_6

    .line 746
    :cond_18
    const-string/jumbo v0, "--user"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 751
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_6

    .line 754
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    const/4 v0, 0x1

    return v0

    .line 759
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_51

    .line 761
    const-string/jumbo v0, "Error: package name not specified"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x1

    return v0

    .line 766
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 767
    .local v12, "splitName":Ljava/lang/String;
    if-eqz v12, :cond_5c

    .line 768
    invoke-direct {p0, v1, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 771
    :cond_5c
    const-string/jumbo v0, "runUninstall"

    invoke-direct {p0, v5, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(ILjava/lang/String;)I

    move-result v5

    .line 772
    const/4 v0, -0x1

    if-ne v5, v0, :cond_93

    .line 773
    const/4 v5, 0x0

    .line 774
    or-int/lit8 v3, v3, 0x2

    .line 791
    :cond_69
    :goto_69
    new-instance v10, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V

    .line 792
    .local v10, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 793
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    .line 792
    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller;->uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 795
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v11

    .line 796
    .local v11, "result":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    .line 797
    const/4 v2, 0x1

    .line 796
    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 798
    .local v13, "status":I
    if-nez v13, :cond_cc

    .line 799
    const-string/jumbo v0, "Success"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x0

    return v0

    .line 776
    .end local v10    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v11    # "result":Landroid/content/Intent;
    .end local v13    # "status":I
    :cond_93
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 777
    .local v6, "info":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_bc

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failure [not installed for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x1

    return v0

    .line 782
    :cond_bc
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_ca

    const/4 v7, 0x1

    .line 786
    .local v7, "isSystem":Z
    :goto_c5
    if-eqz v7, :cond_69

    .line 787
    or-int/lit8 v3, v3, 0x4

    goto :goto_69

    .line 782
    .end local v7    # "isSystem":Z
    :cond_ca
    const/4 v7, 0x0

    goto :goto_c5

    .line 802
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .restart local v10    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .restart local v11    # "result":Landroid/content/Intent;
    .restart local v13    # "status":I
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failure ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 803
    const-string/jumbo v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 803
    const-string/jumbo v2, "]"

    .line 802
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x1

    return v0
.end method

.method private translateUserId(ILjava/lang/String;)I
    .registers 10
    .param p1, "userId"    # I
    .param p2, "logContext"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1157
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1158
    const-string/jumbo v6, "pm command"

    move v2, p1

    move v4, v3

    move-object v5, p2

    .line 1157
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p1, :cond_7

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 97
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_b
    const-string/jumbo v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 99
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result v2

    return v2

    .line 97
    :cond_19
    const-string/jumbo v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 102
    :cond_22
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result v2

    return v2

    .line 97
    :cond_27
    const-string/jumbo v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 104
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result v2

    return v2

    .line 97
    :cond_3e
    const-string/jumbo v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 106
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result v2

    return v2

    .line 97
    :cond_4c
    const-string/jumbo v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 108
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result v2

    return v2

    .line 97
    :cond_5a
    const-string/jumbo v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 110
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result v2

    return v2

    .line 97
    :cond_68
    const-string/jumbo v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 112
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result v2

    return v2

    .line 97
    :cond_76
    const-string/jumbo v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 114
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result v2

    return v2

    .line 97
    :cond_84
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 116
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result v2

    return v2

    .line 97
    :cond_92
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 118
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result v2

    return v2

    .line 97
    :cond_a0
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 120
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result v2

    return v2

    .line 97
    :cond_ae
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 122
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result v2

    return v2

    .line 97
    :cond_bc
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 124
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result v2

    return v2

    .line 97
    :cond_ca
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 126
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result v2

    return v2

    .line 97
    :cond_d8
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 128
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v2

    return v2

    .line 97
    :cond_e7
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 130
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v2

    return v2

    .line 97
    :cond_f6
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 132
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result v2

    return v2

    .line 134
    :cond_104
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_107} :catch_109

    move-result v2

    return v2

    .line 136
    :catch_109
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const/4 v2, -0x1

    return v2
.end method

.method public onHelp()V
    .registers 5

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1422
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "Package manager (package) commands:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    const-string/jumbo v2, "  help"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    const-string/jumbo v2, "    Print this help text."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    const-string/jumbo v2, "  compile [-m MODE | -r REASON] [-f] [-c]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    const-string/jumbo v2, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    const-string/jumbo v2, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\"."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    const-string/jumbo v2, "    Options:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    const-string/jumbo v2, "      -a: compile all packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    const-string/jumbo v2, "      -c: clear profile data before compiling"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    const-string/jumbo v2, "      -f: force compilation even if not needed"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    const-string/jumbo v2, "      -m: select compilation mode"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    const-string/jumbo v2, "          MODE is one of the dex2oat compiler filters:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    const-string/jumbo v2, "            verify-none"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    const-string/jumbo v2, "            verify-at-runtime"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    const-string/jumbo v2, "            verify-profile"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    const-string/jumbo v2, "            interpret-only"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    const-string/jumbo v2, "            space-profile"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    const-string/jumbo v2, "            space"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    const-string/jumbo v2, "            speed-profile"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    const-string/jumbo v2, "            speed"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    const-string/jumbo v2, "            everything"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    const-string/jumbo v2, "      -r: select compilation reason"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    const-string/jumbo v2, "          REASON is one of:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_95
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_b8

    .line 1447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "            "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 1449
    :cond_b8
    const-string/jumbo v2, "      --reset: restore package to its post-install state"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    const-string/jumbo v2, "      --check-prof (true | false): look at profiles when doing dexopt?"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    const-string/jumbo v2, "  list features"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    const-string/jumbo v2, "    Prints all features of the system."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    const-string/jumbo v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    const-string/jumbo v2, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v2, "    Options:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    const-string/jumbo v2, "      -f: dump the name of the .apk file containing the test package"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    const-string/jumbo v2, "  list libraries"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    const-string/jumbo v2, "    Prints all system libraries."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    const-string/jumbo v2, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-u] [--user USER_ID] [FILTER]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    const-string/jumbo v2, "    Prints all packages; optionally only those whose name contains"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    const-string/jumbo v2, "    the text in FILTER."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    const-string/jumbo v2, "    Options:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    const-string/jumbo v2, "      -f: see their associated file"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    const-string/jumbo v2, "      -d: filter to only show disabled packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    const-string/jumbo v2, "      -e: filter to only show enabled packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    const-string/jumbo v2, "      -s: filter to only show system packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    const-string/jumbo v2, "      -3: filter to only show third party packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    const-string/jumbo v2, "      -i: see the installer for the packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    const-string/jumbo v2, "      -u: also include uninstalled packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    const-string/jumbo v2, "  list permission-groups"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    const-string/jumbo v2, "    Prints all known permission groups."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    const-string/jumbo v2, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    const-string/jumbo v2, "    Prints all known permissions; optionally only those in GROUP."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    const-string/jumbo v2, "    Options:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    const-string/jumbo v2, "      -g: organize by group"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    const-string/jumbo v2, "      -f: print all information"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    const-string/jumbo v2, "      -s: short summary"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    const-string/jumbo v2, "      -d: only list dangerous permissions"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    const-string/jumbo v2, "      -u: list only the permissions users will see"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    const-string/jumbo v2, "  dump-profiles TARGET-PACKAGE"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    const-string/jumbo v2, "    Dumps method/class profile files to"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    const-string/jumbo v2, "    /data/misc/profman/TARGET-PACKAGE.txt"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    const-string/jumbo v2, "  resolve-activity [--brief] [--components] [--user USER_ID] INTENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    const-string/jumbo v2, "    Prints the activity that resolves to the given Intent."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    const-string/jumbo v2, "  query-activities [--brief] [--components] [--user USER_ID] INTENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    const-string/jumbo v2, "    Prints all activities that can handle the given Intent."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    const-string/jumbo v2, "  query-services [--brief] [--components] [--user USER_ID] INTENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    const-string/jumbo v2, "    Prints all services that can handle the given Intent."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    const-string/jumbo v2, "  query-receivers [--brief] [--components] [--user USER_ID] INTENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    const-string/jumbo v2, "    Prints all broadcast receivers that can handle the given Intent."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    const-string/jumbo v2, "  suspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    const-string/jumbo v2, "    Suspends the specified package (as user)."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    const-string/jumbo v2, "  unsuspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const-string/jumbo v2, "    Unsuspends the specified package (as user)."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    const-string/jumbo v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    const-string/jumbo v2, "    set the default home activity (aka launcher)."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1498
    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1420
    return-void
.end method
