.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$1;,
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final PERMISSION_MODIFY_OVERLAYS:Ljava/lang/String; = "oms.permission.MODIFY_OVERLAYS"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/om/OverlayManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/om/OverlayManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerSettings;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/om/OverlayManagerService;)Landroid/util/AtomicFile;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService;->isOverlayPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "targetPackageNames"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateSelectedAssets(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 423
    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    .line 221
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService;->mContext:Landroid/content/Context;

    .line 223
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v5, "overlays.xml"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 222
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 224
    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    .line 225
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 226
    new-instance v11, Lcom/android/server/om/IdmapManager;

    invoke-direct {v11, p2}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/pm/Installer;)V

    .line 227
    .local v11, "im":Lcom/android/server/om/IdmapManager;
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 228
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 230
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v3, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$PackageReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 238
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v8, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v6, p0, v4}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$UserReceiver;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 243
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 244
    invoke-virtual {p0, v12}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    .line 247
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    invoke-direct {v1, p0, v4}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->addChangeListener(Lcom/android/server/om/OverlayManagerSettings$ChangeListener;)V

    .line 249
    const-string/jumbo v0, "overlay"

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 250
    const-class v0, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method private getDeadUsers()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 781
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 785
    .local v3, "onlyLiveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 786
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 787
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 788
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "live$iterator":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 789
    .local v1, "live":Landroid/content/pm/UserInfo;
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v7, :cond_22

    .line 790
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 796
    .end local v1    # "live":Landroid/content/pm/UserInfo;
    .end local v2    # "live$iterator":Ljava/util/Iterator;
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_38
    return-object v5
.end method

.method private isOverlayPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 615
    if-eqz p1, :cond_8

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private restoreSettings()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 758
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 759
    :try_start_4
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_62

    move-result v5

    if-nez v5, :cond_12

    monitor-exit v8

    .line 760
    return-void

    .line 762
    :cond_12
    const/4 v3, 0x0

    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_13
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 763
    .local v3, "stream":Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 769
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->getDeadUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "deadUser$iterator":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 770
    .local v0, "deadUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 771
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_3f} :catch_40
    .catchall {:try_start_13 .. :try_end_3f} :catchall_73

    goto :goto_26

    .line 775
    .end local v0    # "deadUser":Landroid/content/pm/UserInfo;
    .end local v1    # "deadUser$iterator":Ljava/util/Iterator;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "userId":I
    :catch_40
    move-exception v5

    :try_start_41
    throw v5
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_46
    if-eqz v3, :cond_4b

    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_67
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_4b} :catch_4e
    .catchall {:try_start_48 .. :try_end_4b} :catchall_62

    :cond_4b
    :goto_4b
    if-eqz v6, :cond_72

    :try_start_4d
    throw v6
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_4e} :catch_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_62

    .line 773
    :catch_4e
    move-exception v2

    .line 774
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4f
    const-string/jumbo v5, "OverlayManager"

    const-string/jumbo v6, "failed to restore overlay state"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_62

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_58
    monitor-exit v8

    .line 757
    return-void

    .line 775
    .restart local v1    # "deadUser$iterator":Ljava/util/Iterator;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :cond_5a
    if-eqz v3, :cond_5f

    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_65
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_5f} :catch_4e
    .catchall {:try_start_5c .. :try_end_5f} :catchall_62

    :cond_5f
    :goto_5f
    if-eqz v6, :cond_58

    :try_start_61
    throw v6
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_62} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_62} :catch_4e
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 758
    .end local v1    # "deadUser$iterator":Ljava/util/Iterator;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_62
    move-exception v5

    monitor-exit v8

    throw v5

    .line 775
    .restart local v1    # "deadUser$iterator":Ljava/util/Iterator;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catch_65
    move-exception v6

    goto :goto_5f

    .end local v1    # "deadUser$iterator":Ljava/util/Iterator;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catch_67
    move-exception v7

    if-nez v6, :cond_6c

    move-object v6, v7

    goto :goto_4b

    :cond_6c
    if-eq v6, v7, :cond_4b

    :try_start_6e
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4b

    :cond_72
    throw v5
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_73} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_73} :catch_4e
    .catchall {:try_start_6e .. :try_end_73} :catchall_62

    :catchall_73
    move-exception v5

    goto :goto_46
.end method

.method private schedulePersistSettings()V
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 735
    return-void

    .line 737
    :cond_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 738
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/OverlayManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/om/OverlayManagerService$2;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .prologue
    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateSelectedAssets(ILjava/util/List;)V

    .line 694
    return-void
.end method

.method private updateSelectedAssets(ILjava/util/List;)V
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v9, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 702
    .local v7, "pm":Landroid/content/pm/PackageManagerInternal;
    const-string/jumbo v9, "android"

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 703
    .local v8, "updateFrameworkRes":Z
    if-eqz v8, :cond_15

    .line 704
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object p2

    .line 707
    :cond_15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v0, v9}, Landroid/util/ArrayMap;-><init>(I)V

    .line 708
    .local v0, "allPaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 709
    :try_start_21
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string/jumbo v11, "android"

    invoke-virtual {v9, v11, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onGetEnabledOverlayPaths(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 710
    .local v3, "frameworkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageName$iterator":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 711
    .local v4, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 713
    const-string/jumbo v9, "android"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    .line 714
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v9, v4, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onGetEnabledOverlayPaths(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 717
    :cond_54
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_62

    const/4 v9, 0x0

    .line 716
    :goto_5b
    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_21 .. :try_end_5e} :catchall_5f

    goto :goto_2e

    .line 708
    .end local v3    # "frameworkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageName$iterator":Ljava/util/Iterator;
    .end local v6    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_5f
    move-exception v9

    monitor-exit v10

    throw v9

    .line 717
    .restart local v3    # "frameworkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName$iterator":Ljava/util/Iterator;
    .restart local v6    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_62
    :try_start_62
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_5f

    goto :goto_5b

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6f
    monitor-exit v10

    .line 721
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 722
    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v7, p1, v4, v9}, Landroid/content/pm/PackageManagerInternal;->setResourceDirs(ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_74

    .line 725
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_8a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 727
    .local v1, "am":Landroid/app/IActivityManager;
    :try_start_8e
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->updateAssets(ILjava/util/List;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_91} :catch_92

    .line 700
    :goto_91
    return-void

    .line 728
    :catch_92
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_91
.end method


# virtual methods
.method public getEnabledOverlayPaths(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_3
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onGetEnabledOverlayPaths(Ljava/lang/String;I)Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 271
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 254
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 5
    .param p1, "newUserId"    # I

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSwitchUser(I)Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    move-result-object v0

    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v2

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateSelectedAssets(ILjava/util/List;)V

    .line 259
    return-void

    .line 263
    .end local v0    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1
.end method
