.class final Lcom/android/server/tv/TvRemoteProviderWatcher;
.super Ljava/lang/Object;
.source "TvRemoteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteProviderWatcher$1;,
        Lcom/android/server/tv/TvRemoteProviderWatcher$2;,
        Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "TvRemoteProvWatcher"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

.field private final mProviderProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;

.field private final mUnbundledServicePackage:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvRemoteProviderWatcher;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvRemoteProviderWatcher;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->scanPackages()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    const-string/jumbo v0, "TvRemoteProvWatcher"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$1;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$2;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    .line 60
    iput-object p3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    const v0, 0x10400d7

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 191
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 192
    .local v2, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 193
    return v1

    .line 190
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 196
    .end local v2    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_1b
    const/4 v3, -0x1

    return v3
.end method

.method private hasNecessaryPermissions(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_e
    return v2
.end method

.method private scanPackages()V
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 103
    iget-boolean v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v10, :cond_6

    .line 104
    return-void

    .line 107
    :cond_6
    sget-boolean v10, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v10, :cond_13

    const-string/jumbo v10, "TvRemoteProvWatcher"

    const-string/jumbo v11, "scanPackages()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_13
    const/4 v8, 0x0

    .line 111
    .local v8, "targetIndex":I
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 113
    iget v11, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    .line 112
    invoke-virtual {v10, v1, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 114
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 115
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_28

    invoke-direct {p0, v6}, Lcom/android/server/tv/TvRemoteProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 116
    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/server/tv/TvRemoteProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 117
    .local v7, "sourceIndex":I
    if-gez v7, :cond_6f

    .line 119
    new-instance v3, Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    .line 120
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v12, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    iget-object v13, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 119
    invoke-direct {v3, v10, v11, v12, v13}, Lcom/android/server/tv/TvRemoteProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;II)V

    .line 122
    .local v3, "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 123
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "targetIndex":I
    .local v9, "targetIndex":I
    invoke-virtual {v10, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    invoke-interface {v10, v3}, Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;->addProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V

    move v8, v9

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_28

    .line 125
    .end local v3    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_6f
    if-lt v7, v8, :cond_28

    .line 126
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 127
    .local v2, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    invoke-virtual {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 128
    invoke-virtual {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->rebindIfDisconnected()V

    .line 129
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    invoke-static {v10, v7, v8}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v8, v9

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_28

    .line 133
    .end local v2    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "sourceIndex":I
    :cond_88
    sget-boolean v10, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v10, :cond_a6

    const-string/jumbo v10, "TvRemoteProvWatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "scanPackages() targetIndex "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_a6
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_d0

    .line 136
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "i":I
    :goto_b6
    if-lt v0, v8, :cond_d0

    .line 137
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 138
    .restart local v3    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProvider:Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;

    invoke-interface {v10, v3}, Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;->removeProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V

    .line 139
    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    .line 136
    add-int/lit8 v0, v0, -0x1

    goto :goto_b6

    .line 102
    .end local v0    # "i":I
    .end local v3    # "providerProxy":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_d0
    return-void
.end method

.method private verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .registers 6
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 147
    const-string/jumbo v1, "android.permission.BIND_TV_REMOTE_SERVICE"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 159
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 160
    const-string/jumbo v0, "TvRemoteProvWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring atv remote provider service because the package has not been set and/or whitelisted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string/jumbo v2, "/"

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v3

    .line 152
    :cond_44
    const-string/jumbo v0, "TvRemoteProvWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring atv remote provider service because it did not require the BIND_TV_REMOTE_SERVICE permission in its manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, "/"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v3

    .line 166
    :cond_6e
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->hasNecessaryPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 169
    const-string/jumbo v0, "TvRemoteProvWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring atv remote provider service because its package does not have TV_VIRTUAL_REMOTE_CONTROLLER permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v3

    .line 175
    :cond_93
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public start()V
    .registers 7

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "TvRemoteProvWatcher"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_55

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 72
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v2, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_55
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-eqz v1, :cond_2d

    .line 90
    iput-boolean v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 92
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1d
    if-ltz v0, :cond_2d

    .line 97
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    .line 96
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 88
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method
