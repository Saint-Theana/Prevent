.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$1;,
        Lcom/android/server/connectivity/Vpn$2;,
        Lcom/android/server/connectivity/Vpn$Connection;,
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private mAlwaysOn:Z

.field private mBlockedUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mIsPackageIntentReceiverRegistered:Z

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mLockdown:Z

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserHandle:I

.field private mVpnUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Vpn;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/Vpn;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAndSaveAlwaysOnPackage(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Vpn;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 3
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V
    .registers 11
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 137
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 144
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    .line 165
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    .line 171
    new-instance v1, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 1093
    new-instance v1, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 211
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 212
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    .line 213
    iput p4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 214
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    .line 216
    const-string/jumbo v1, "[Legacy VPN]"

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 220
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_65

    .line 225
    :goto_41
    new-instance v1, Landroid/net/NetworkInfo;

    const-string/jumbo v2, "VPN"

    const-string/jumbo v3, ""

    const/16 v4, 0x11

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 227
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 228
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 229
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 210
    return-void

    .line 221
    :catch_65
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Vpn"

    const-string/jumbo v2, "Problem registering observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method

.method private agentConnect()V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 642
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 644
    .local v7, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 645
    :cond_15
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 650
    :goto_1a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    .line 653
    .local v9, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v1, :cond_86

    :cond_30
    :goto_30
    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 657
    .local v10, "token":J
    :try_start_36
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "VPN"

    .line 658
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v8, 0x0

    move-object v1, p0

    .line 657
    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_88

    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 669
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 668
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    .line 670
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v12}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 673
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "agentConnect"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 641
    return-void

    .line 647
    .end local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .end local v10    # "token":J
    :cond_80
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1a

    .restart local v9    # "networkMisc":Landroid/net/NetworkMisc;
    :cond_86
    move v0, v12

    .line 653
    goto :goto_30

    .line 664
    .restart local v10    # "token":J
    :catchall_88
    move-exception v0

    .line 665
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw v0
.end method

.method private agentDisconnect()V
    .registers 3

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 700
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 698
    :cond_12
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 4
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    .line 694
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 695
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 693
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .registers 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    const/4 v1, 0x0

    .line 686
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 687
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    if-eqz p2, :cond_f

    .line 689
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 685
    :cond_f
    return-void
.end method

.method private canHaveRestrictedProfile(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 679
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->canHaveRestrictedProfile(I)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    move-result v2

    .line 681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 679
    return v2

    .line 680
    :catchall_12
    move-exception v2

    .line 681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    throw v2
.end method

.method private enforceControlPermission()V
    .registers 4

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    const-string/jumbo v2, "Unauthorized Caller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method private enforceControlPermissionOrInternalCaller()V
    .registers 4

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONTROL_VPN"

    .line 1132
    const-string/jumbo v2, "Unauthorized Caller"

    .line 1131
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 5
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1264
    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_8

    .line 1265
    return-object v0

    .line 1269
    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 7
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 565
    const-string/jumbo v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 566
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    return v3

    .line 568
    :cond_e
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 571
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_14
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_17} :catch_19

    move-result v2

    .line 575
    .local v2, "result":I
    :goto_18
    return v2

    .line 572
    .end local v2    # "result":I
    :catch_19
    move-exception v0

    .line 573
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_18
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 8
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 834
    .local v3, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 835
    .local v0, "app":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v2

    .line 836
    .local v2, "uid":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 838
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_24
    return-object v3
.end method

.method private isCallerEstablishedOwnerLocked()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 828
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isCurrentPreparedPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 474
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isNullOrLegacyVpn(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 292
    if-eqz p0, :cond_a

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private isRunningLocked()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 822
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 560
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 19

    .prologue
    .line 587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v4, v14, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 588
    .local v4, "allowIPv4":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v5, v14, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 590
    .local v5, "allowIPv6":Z
    new-instance v11, Landroid/net/LinkProperties;

    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    .line 592
    .local v11, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v14, :cond_48

    .line 595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "address$iterator":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 596
    .local v1, "address":Landroid/net/LinkAddress;
    invoke-virtual {v11, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 597
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    .line 598
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    instance-of v14, v14, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_2a

    .line 602
    .end local v1    # "address":Landroid/net/LinkAddress;
    .end local v3    # "address$iterator":Ljava/util/Iterator;
    :cond_48
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v14, :cond_78

    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "route$iterator":Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_78

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/RouteInfo;

    .line 604
    .local v12, "route":Landroid/net/RouteInfo;
    invoke-virtual {v11, v12}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 605
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 606
    .local v2, "address":Ljava/net/InetAddress;
    instance-of v14, v2, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    .line 607
    instance-of v14, v2, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_5a

    .line 611
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v12    # "route":Landroid/net/RouteInfo;
    .end local v13    # "route$iterator":Ljava/util/Iterator;
    :cond_78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v14, :cond_a4

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "dnsServer$iterator":Ljava/util/Iterator;
    :goto_8a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 613
    .local v7, "dnsServer":Ljava/lang/String;
    invoke-static {v7}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 614
    .restart local v2    # "address":Ljava/net/InetAddress;
    invoke-virtual {v11, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 615
    instance-of v14, v2, Ljava/net/Inet4Address;

    or-int/2addr v4, v14

    .line 616
    instance-of v14, v2, Ljava/net/Inet6Address;

    or-int/2addr v5, v14

    goto :goto_8a

    .line 620
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v7    # "dnsServer":Ljava/lang/String;
    .end local v8    # "dnsServer$iterator":Ljava/util/Iterator;
    :cond_a4
    if-nez v4, :cond_b9

    .line 621
    new-instance v14, Landroid/net/RouteInfo;

    new-instance v15, Landroid/net/IpPrefix;

    sget-object v16, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v16, 0x7

    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 623
    :cond_b9
    if-nez v5, :cond_ce

    .line 624
    new-instance v14, Landroid/net/RouteInfo;

    new-instance v15, Landroid/net/IpPrefix;

    sget-object v16, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v16, 0x7

    invoke-direct/range {v14 .. v16}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 628
    :cond_ce
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v6, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v14, :cond_fb

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v14, v14, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "domain$iterator":Ljava/util/Iterator;
    :goto_e5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_fb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 631
    .local v9, "domain":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 634
    .end local v9    # "domain":Ljava/lang/String;
    .end local v10    # "domain$iterator":Ljava/util/Iterator;
    :cond_fb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 638
    return-object v11
.end method

.method private maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    .line 307
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->isNullOrLegacyVpn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 310
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 317
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object v5, v4

    .line 316
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_36
    return-void
.end method

.method private prepareInternal(Ljava/lang/String;)V
    .registers 10
    .param p1, "newPackage"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 482
    .local v2, "token":J
    :try_start_4
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 483
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 484
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 485
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 486
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 487
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    .line 491
    :cond_19
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_94

    if-eqz v1, :cond_87

    .line 493
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$Connection;->-get0(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v1

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 493
    const v5, 0xffffff

    .line 494
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 493
    invoke-interface {v1, v5, v4, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2f} :catch_ec
    .catchall {:try_start_1d .. :try_end_2f} :catchall_94

    .line 498
    :goto_2f
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_94

    .line 506
    :cond_39
    :goto_39
    :try_start_39
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v1, v4}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_99
    .catchall {:try_start_39 .. :try_end_40} :catchall_94

    .line 511
    :goto_40
    :try_start_40
    const-string/jumbo v1, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Switched from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 513
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I
    :try_end_71
    .catchall {:try_start_40 .. :try_end_71} :catchall_94

    .line 515
    :try_start_71
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-interface {v1, v4}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_78} :catch_c3
    .catchall {:try_start_71 .. :try_end_78} :catchall_94

    .line 519
    :goto_78
    const/4 v1, 0x0

    :try_start_79
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 521
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v4, "prepare"

    invoke-direct {p0, v1, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_94

    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    return-void

    .line 500
    :cond_87
    :try_start_87
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v1, :cond_39

    .line 501
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_93
    .catchall {:try_start_87 .. :try_end_93} :catchall_94

    goto :goto_39

    .line 522
    :catchall_94
    move-exception v1

    .line 523
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw v1

    .line 507
    :catch_99
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9a
    const-string/jumbo v1, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to disallow UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to call protect() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 516
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_c3
    move-exception v0

    .line 517
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to allow UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to call protect() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catchall {:try_start_9a .. :try_end_eb} :catchall_94

    goto :goto_78

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ec
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_2f
.end method

.method private prepareStatusIntent()V
    .registers 4

    .prologue
    .line 1150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1152
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 1154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1149
    return-void

    .line 1153
    :catchall_10
    move-exception v2

    .line 1154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 944
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    if-nez v1, :cond_d

    .line 945
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 947
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v0

    .line 948
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_26

    .line 949
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    .line 951
    :cond_26
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 943
    return-void
.end method

.method private setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z
    .registers 9
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/UidRange;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "ranges":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/UidRange;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1057
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 1058
    return v3

    .line 1060
    :cond_9
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    .line 1062
    .local v1, "rangesArray":[Landroid/net/UidRange;
    :try_start_15
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1a} :catch_22

    .line 1068
    if-eqz p1, :cond_58

    .line 1069
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1073
    :goto_21
    return v3

    .line 1063
    :catch_22
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updating blocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1065
    const-string/jumbo v4, " for UIDs "

    .line 1064
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1065
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1064
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1065
    const-string/jumbo v4, " failed"

    .line 1064
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    return v5

    .line 1071
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_58
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_21
.end method

.method private declared-synchronized setAndSaveAlwaysOnPackage(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    .prologue
    monitor-enter p0

    .line 356
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 357
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->saveAlwaysOnPackage()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 358
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 360
    :cond_d
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVpnForcedLocked(Z)V
    .registers 8
    .param p1, "enforce"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1029
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1030
    .local v1, "removedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-eqz p1, :cond_27

    .line 1031
    iget v2, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 1033
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1032
    const/4 v4, 0x0

    .line 1031
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/connectivity/Vpn;->createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 1035
    .local v0, "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1036
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1038
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1039
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    .line 1028
    .end local v0    # "addedRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_26
    return-void

    .line 1041
    :cond_27
    invoke-direct {p0, v5, v1}, Lcom/android/server/connectivity/Vpn;->setAllowOnlyVpnForUids(ZLjava/util/Collection;)Z

    goto :goto_26
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1406
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 1409
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 1410
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1413
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1414
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    .line 1405
    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uidRangesForUser(I)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v3

    .line 934
    .local v3, "userRange":Landroid/net/UidRange;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "range$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    .line 936
    .local v0, "range":Landroid/net/UidRange;
    invoke-virtual {v3, v0}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 937
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 940
    .end local v0    # "range":Landroid/net/UidRange;
    :cond_25
    return-object v2
.end method

.method private unregisterPackageChangeReceiverLocked()V
    .registers 3

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    if-eqz v0, :cond_e

    .line 298
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mIsPackageIntentReceiverRegistered:Z

    .line 295
    :cond_e
    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 7
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 245
    const-string/jumbo v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_36

    .line 248
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 244
    :cond_36
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    monitor-enter p0

    .line 1159
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    move-result v1

    if-nez v1, :cond_a

    .line 1160
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1162
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1163
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    monitor-exit p0

    .line 1164
    return v0

    .end local v0    # "success":Z
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V
    .registers 12
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p3, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 898
    if-eqz p3, :cond_3b

    .line 900
    const/4 v0, -0x1

    .local v0, "start":I
    const/4 v1, -0x1

    .line 901
    .local v1, "stop":I
    invoke-direct {p0, p3, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "uid$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 902
    .local v2, "uid":I
    if-ne v0, v6, :cond_22

    .line 903
    move v0, v2

    .line 908
    :cond_20
    :goto_20
    move v1, v2

    goto :goto_d

    .line 904
    :cond_22
    add-int/lit8 v5, v1, 0x1

    if-eq v2, v5, :cond_20

    .line 905
    new-instance v5, Landroid/net/UidRange;

    invoke-direct {v5, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 906
    move v0, v2

    goto :goto_20

    .line 910
    .end local v2    # "uid":I
    :cond_30
    if-eq v0, v6, :cond_3a

    new-instance v5, Landroid/net/UidRange;

    invoke-direct {v5, v0, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v0    # "start":I
    .end local v1    # "stop":I
    .end local v3    # "uid$iterator":Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    return-void

    .line 911
    :cond_3b
    if-eqz p4, :cond_7c

    .line 913
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v4

    .line 914
    .local v4, "userRange":Landroid/net/UidRange;
    iget v0, v4, Landroid/net/UidRange;->start:I

    .line 915
    .restart local v0    # "start":I
    invoke-direct {p0, p4, p2}, Lcom/android/server/connectivity/Vpn;->getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "uid$iterator":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 916
    .restart local v2    # "uid":I
    if-ne v2, v0, :cond_60

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 919
    :cond_60
    new-instance v5, Landroid/net/UidRange;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v5, v0, v6}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    add-int/lit8 v0, v2, 0x1

    goto :goto_4b

    .line 923
    .end local v2    # "uid":I
    :cond_6d
    iget v5, v4, Landroid/net/UidRange;->stop:I

    if-gt v0, v5, :cond_3a

    new-instance v5, Landroid/net/UidRange;

    iget v6, v4, Landroid/net/UidRange;->stop:I

    invoke-direct {v5, v0, v6}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 926
    .end local v0    # "start":I
    .end local v3    # "uid$iterator":Ljava/util/Iterator;
    .end local v4    # "userRange":Landroid/net/UidRange;
    :cond_7c
    invoke-static {p2}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method

.method public declared-synchronized appliesToUid(I)Z
    .registers 6
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 1218
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_27

    move-result v2

    if-nez v2, :cond_a

    monitor-exit p0

    .line 1219
    return v3

    .line 1221
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uidRange$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    .line 1222
    .local v0, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_27

    move-result v2

    if-eqz v2, :cond_10

    .line 1223
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .end local v0    # "uidRange":Landroid/net/UidRange;
    :cond_25
    monitor-exit p0

    .line 1226
    return v3

    .end local v1    # "uidRange$iterator":Ljava/util/Iterator;
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method createUserAndRestrictedProfilesRanges(ILjava/util/List;Ljava/util/List;)Ljava/util/Set;
    .registers 12
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    .local p2, "allowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "disallowedApplications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 861
    .local v0, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 864
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->canHaveRestrictedProfile(I)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 868
    .local v2, "token":J
    :try_start_12
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_40

    move-result-object v5

    .line 870
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 872
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "user$iterator":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 873
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_24

    iget v6, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, p1, :cond_24

    .line 874
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v6, p2, p3}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    goto :goto_24

    .line 869
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "user$iterator":Ljava/util/Iterator;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_40
    move-exception v6

    .line 870
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 869
    throw v6

    .line 878
    .end local v2    # "token":J
    :cond_45
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 30
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    monitor-enter p0

    .line 715
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    .line 716
    .local v14, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    move/from16 v25, v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_95

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1f

    .line 717
    const/16 v24, 0x0

    monitor-exit p0

    return-object v24

    .line 720
    :cond_1f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_95

    move-result v24

    if-nez v24, :cond_33

    .line 721
    const/16 v24, 0x0

    monitor-exit p0

    return-object v24

    .line 724
    :cond_33
    :try_start_33
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v24, "android.net.VpnService"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_95

    move-result-wide v20

    .line 729
    .local v20, "token":J
    :try_start_54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v23

    .line 730
    .local v23, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v24

    if-eqz v24, :cond_98

    .line 731
    new-instance v24, Ljava/lang/SecurityException;

    const-string/jumbo v25, "Restricted users cannot establish VPNs"

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_6f} :catch_6f
    .catchall {:try_start_54 .. :try_end_6f} :catchall_90

    .line 742
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    :catch_6f
    move-exception v8

    .line 743
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_70
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_90
    .catchall {:try_start_70 .. :try_end_90} :catchall_90

    .line 744
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_90
    move-exception v24

    .line 745
    :try_start_91
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    throw v24
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_95

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "mgr":Landroid/os/UserManager;
    .end local v20    # "token":J
    :catchall_95
    move-exception v24

    monitor-exit p0

    throw v24

    .line 734
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "token":J
    .restart local v23    # "user":Landroid/content/pm/UserInfo;
    :cond_98
    :try_start_98
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 734
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v25

    invoke-interface {v0, v12, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 736
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_d4

    .line 737
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 739
    :cond_d4
    const-string/jumbo v24, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10e

    .line 740
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " does not require "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_10e} :catch_6f
    .catchall {:try_start_98 .. :try_end_10e} :catchall_90

    .line 745
    :cond_10e
    :try_start_10e
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 749
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 750
    .local v15, "oldConfig":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 751
    .local v17, "oldInterface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v16, v0

    .line 752
    .local v16, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v18, v0

    .line 753
    .local v18, "oldNetworkAgent":Landroid/net/NetworkAgent;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    move-object/from16 v19, v0

    .line 757
    .local v19, "oldUsers":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_146
    .catchall {:try_start_10e .. :try_end_146} :catchall_95

    move-result-object v22

    .line 759
    .local v22, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_147
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v25, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v13

    .line 763
    .local v13, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "address$iterator":Ljava/util/Iterator;
    :goto_170
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1af

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 765
    .local v4, "address":Landroid/net/LinkAddress;
    const-string/jumbo v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_18a
    .catch Ljava/lang/RuntimeException; {:try_start_147 .. :try_end_18a} :catch_18b
    .catchall {:try_start_147 .. :try_end_18a} :catchall_95

    goto :goto_170

    .line 806
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v5    # "address$iterator":Ljava/util/Iterator;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v13    # "interfaze":Ljava/lang/String;
    :catch_18b
    move-exception v10

    .line 807
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_18c
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V

    .line 810
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 811
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 812
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    .line 813
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 814
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 815
    throw v10
    :try_end_1af
    .catchall {:try_start_18c .. :try_end_1af} :catchall_95

    .line 767
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "address$iterator":Ljava/util/Iterator;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v13    # "interfaze":Ljava/lang/String;
    :cond_1af
    :try_start_1af
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v13, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1cc

    .line 768
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v25, "At least one address must be specified"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 770
    :cond_1cc
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)V

    .line 771
    .local v7, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 773
    new-instance v25, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    .line 772
    const v26, 0x4000001

    .line 771
    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v12, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v24

    if-nez v24, :cond_217

    .line 774
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot bind "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 777
    :cond_217
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 778
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 784
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 787
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->agentConnect()V

    .line 789
    if-eqz v16, :cond_259

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 795
    :cond_259
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 796
    if-eqz v17, :cond_26a

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_267
    .catch Ljava/lang/RuntimeException; {:try_start_1af .. :try_end_267} :catch_18b
    .catchall {:try_start_1af .. :try_end_267} :catchall_95

    move-result v24

    if-eqz v24, :cond_2aa

    .line 801
    :cond_26a
    :goto_26a
    :try_start_26a
    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_277
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_277} :catch_2b2
    .catch Ljava/lang/RuntimeException; {:try_start_26a .. :try_end_277} :catch_18b
    .catchall {:try_start_26a .. :try_end_277} :catchall_95

    .line 817
    :try_start_277
    const-string/jumbo v24, "Vpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Established by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " on "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a8
    .catchall {:try_start_277 .. :try_end_2a8} :catchall_95

    monitor-exit p0

    .line 818
    return-object v22

    .line 797
    :cond_2aa
    :try_start_2aa
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    goto :goto_26a

    .line 802
    :catch_2b2
    move-exception v9

    .line 803
    .local v9, "e":Ljava/io/IOException;
    new-instance v24, Ljava/lang/IllegalStateException;

    .line 804
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 803
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_2d7
    .catch Ljava/lang/RuntimeException; {:try_start_2aa .. :try_end_2d7} :catch_18b
    .catchall {:try_start_2aa .. :try_end_2d7} :catchall_95
.end method

.method public declared-synchronized getAlwaysOnPackage()Ljava/lang/String;
    .registers 2

    .prologue
    monitor-enter p0

    .line 328
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 329
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1456
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_8

    .line 1457
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0

    .line 1459
    :cond_8
    return-object v1
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    .prologue
    monitor-enter p0

    .line 1435
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1444
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_29

    if-nez v1, :cond_8

    monitor-exit p0

    return-object v2

    .line 1446
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1447
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1448
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1449
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1450
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit p0

    .line 1452
    return-object v0

    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNetId()I
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget v0, v0, Landroid/net/NetworkAgent;->netId:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public declared-synchronized getUnderlyingNetworks()[Landroid/net/Network;
    .registers 2

    .prologue
    monitor-enter p0

    .line 1196
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    move-result v0

    if-nez v0, :cond_a

    .line 1197
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1199
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1081
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized getVpnInfo()Lcom/android/internal/net/VpnInfo;
    .registers 3

    .prologue
    monitor-enter p0

    .line 1207
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result v1

    if-nez v1, :cond_a

    .line 1208
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 1211
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/net/VpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/VpnInfo;-><init>()V

    .line 1212
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    iput v1, v0, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    .line 1213
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_19

    monitor-exit p0

    .line 1214
    return-object v0

    .end local v0    # "info":Lcom/android/internal/net/VpnInfo;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    monitor-enter p0

    .line 1087
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    :goto_6
    monitor-exit p0

    .line 1085
    return-void

    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1088
    :catch_b
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_6
.end method

.method public declared-synchronized isBlockingUid(I)Z
    .registers 7
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 1237
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_37

    if-nez v4, :cond_9

    monitor-exit p0

    .line 1238
    return v2

    .line 1241
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1242
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_37

    move-result v4

    if-eqz v4, :cond_19

    :goto_17
    monitor-exit p0

    return v2

    :cond_19
    move v2, v3

    goto :goto_17

    .line 1244
    :cond_1b
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mBlockedUsers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uidRange$iterator":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UidRange;

    .line 1245
    .local v0, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v0, p1}, Landroid/net/UidRange;->contains(I)Z
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_37

    move-result v4

    if-eqz v4, :cond_21

    monitor-exit p0

    .line 1246
    return v3

    .end local v0    # "uidRange":Landroid/net/UidRange;
    :cond_35
    monitor-exit p0

    .line 1249
    return v2

    .end local v1    # "uidRange$iterator":Ljava/util/Iterator;
    :catchall_37
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onUserAdded(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 956
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 957
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v3, v4, :cond_4b

    .line 958
    monitor-enter p0

    .line 959
    :try_start_17
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_57

    if-eqz v3, :cond_41

    .line 961
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    .line 962
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    .line 961
    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/android/server/connectivity/Vpn;->addUserToRanges(Ljava/util/Set;ILjava/util/List;Ljava/util/List;)V

    .line 963
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v3, :cond_41

    .line 964
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->uidRangesForUser(I)Ljava/util/List;

    move-result-object v1

    .line 965
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/UidRange;

    invoke-virtual {v4, v3}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_41} :catch_4c
    .catchall {:try_start_1b .. :try_end_41} :catchall_57

    .line 971
    .end local v1    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :cond_41
    :goto_41
    :try_start_41
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v3, :cond_4a

    .line 972
    iget-boolean v3, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_57

    :cond_4a
    monitor-exit p0

    .line 954
    :cond_4b
    return-void

    .line 967
    :catch_4c
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4d
    const-string/jumbo v3, "Vpn"

    const-string/jumbo v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_57

    goto :goto_41

    .line 958
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_57
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onUserRemoved(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 980
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 981
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_28

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v3, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    if-ne v2, v3, :cond_28

    .line 982
    monitor-enter p0

    .line 983
    :try_start_17
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/Set;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_34

    if-eqz v2, :cond_1e

    .line 985
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_29
    .catchall {:try_start_1b .. :try_end_1e} :catchall_34

    .line 990
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v2, :cond_27

    .line 991
    iget-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_34

    :cond_27
    monitor-exit p0

    .line 978
    :cond_28
    return-void

    .line 986
    :catch_29
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string/jumbo v2, "Vpn"

    const-string/jumbo v3, "Failed to remove restricted user to owner"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_1e

    .line 982
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_34
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUserStopped()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 1002
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V

    .line 1003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 1005
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->unregisterPackageChangeReceiverLocked()V

    .line 1007
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    monitor-exit p0

    .line 1000
    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 430
    if-eqz p1, :cond_3c

    .line 432
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 437
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 440
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 441
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_6b

    monitor-exit p0

    .line 442
    return v2

    :cond_29
    monitor-exit p0

    .line 433
    return v1

    :cond_2b
    monitor-exit p0

    .line 444
    return v1

    .line 445
    :cond_2d
    :try_start_2d
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 454
    :cond_3c
    if-eqz p2, :cond_4d

    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 455
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_6b

    move-result v0

    .line 454
    if-eqz v0, :cond_57

    :cond_4d
    monitor-exit p0

    .line 456
    return v2

    .line 448
    :cond_4f
    :try_start_4f
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_6b

    monitor-exit p0

    .line 449
    return v1

    .line 460
    :cond_57
    :try_start_57
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 463
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v0, :cond_64

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 467
    :cond_64
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_6b

    monitor-exit p0

    .line 468
    return v2

    :cond_69
    monitor-exit p0

    .line 464
    return v1

    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    monitor-enter p0

    .line 1168
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    move-result v1

    if-nez v1, :cond_a

    .line 1169
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1171
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1172
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    monitor-exit p0

    .line 1173
    return v0

    .end local v0    # "success":Z
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized saveAlwaysOnPackage()V
    .registers 7

    .prologue
    monitor-enter p0

    .line 336
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result-wide v2

    .line 338
    .local v2, "token":J
    :try_start_5
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 339
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "always_on_vpn_app"

    .line 340
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 339
    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 341
    const-string/jumbo v4, "always_on_vpn_lockdown"

    .line 342
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    :goto_1f
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    .line 341
    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2b

    .line 344
    :try_start_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_30

    monitor-exit p0

    .line 335
    return-void

    .line 342
    :cond_29
    const/4 v1, 0x0

    goto :goto_1f

    .line 343
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_2b
    move-exception v1

    .line 344
    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    throw v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    .end local v2    # "token":J
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlwaysOnPackage(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lockdown"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    .line 265
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 266
    const-string/jumbo v1, "[Legacy VPN]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 267
    const-string/jumbo v1, "Vpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not setting legacy VPN \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" as always-on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_60

    monitor-exit p0

    .line 268
    return v0

    .line 271
    :cond_32
    if-eqz p1, :cond_59

    .line 273
    const/4 v1, 0x1

    :try_start_35
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_60

    move-result v1

    if-nez v1, :cond_3d

    monitor-exit p0

    .line 274
    return v0

    .line 276
    :cond_3d
    const/4 v1, 0x1

    :try_start_3e
    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    .line 282
    :goto_40
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z

    if-eqz v1, :cond_63

    .end local p2    # "lockdown":Z
    :goto_44
    iput-boolean p2, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentPreparedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->prepareInternal(Ljava/lang/String;)V

    .line 286
    :cond_4f
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->maybeRegisterPackageChangeReceiverLocked(Ljava/lang/String;)V

    .line 287
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->setVpnForcedLocked(Z)V
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_60

    monitor-exit p0

    .line 288
    return v2

    .line 278
    .restart local p2    # "lockdown":Z
    :cond_59
    :try_start_59
    const-string/jumbo p1, "[Legacy VPN]"

    .line 279
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->mAlwaysOn:Z
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_60

    goto :goto_40

    .end local p2    # "lockdown":Z
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local p2    # "lockdown":Z
    :cond_63
    move p2, v0

    .line 282
    goto :goto_44
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 237
    return-void
.end method

.method public setPackageAuthorization(Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authorized"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 532
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermissionOrInternalCaller()V

    .line 534
    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-direct {p0, p1, v5}, Lcom/android/server/connectivity/Vpn;->getAppUid(Ljava/lang/String;I)I

    move-result v4

    .line 535
    .local v4, "uid":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 537
    :cond_17
    return v6

    .line 540
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 543
    .local v2, "token":J
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "appops"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 545
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz p2, :cond_33

    move v5, v6

    .line 544
    :goto_2a
    const/16 v8, 0x2f

    invoke-virtual {v0, v8, v4, p1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_35
    .catchall {:try_start_1c .. :try_end_2f} :catchall_5f

    .line 550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 546
    return v7

    :cond_33
    move v5, v7

    .line 545
    goto :goto_2a

    .line 547
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :catch_35
    move-exception v1

    .line 548
    .local v1, "e":Ljava/lang/Exception;
    :try_start_36
    const-string/jumbo v5, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to set app ops for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_5f

    .line 550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    return v6

    .line 549
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v5

    .line 550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    throw v5
.end method

.method public declared-synchronized setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 6
    .param p1, "networks"    # [Landroid/net/Network;

    .prologue
    monitor-enter p0

    .line 1177
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isCallerEstablishedOwnerLocked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3d

    move-result v1

    if-nez v1, :cond_a

    .line 1178
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1180
    :cond_a
    if-nez p1, :cond_14

    .line 1181
    :try_start_c
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_3d

    .line 1192
    :cond_11
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 1183
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    array-length v2, p1

    new-array v2, v2, [Landroid/net/Network;

    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    .line 1184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 1185
    aget-object v1, p1, v0

    if-nez v1, :cond_2d

    .line 1186
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1184
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1188
    :cond_2d
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    new-instance v2, Landroid/net/Network;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    aput-object v2, v1, v0
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_3d

    goto :goto_2a

    .end local v0    # "i":I
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startAlwaysOnVpn()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 370
    monitor-enter p0

    .line 371
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_32

    move-result-object v0

    .line 373
    .local v0, "alwaysOnPackage":Ljava/lang/String;
    if-nez v0, :cond_b

    monitor-exit p0

    .line 374
    return v3

    .line 379
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_32

    move-result v5

    if-eqz v5, :cond_17

    monitor-exit p0

    .line 380
    return v3

    :cond_17
    monitor-exit p0

    .line 385
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.net.VpnService"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    :try_start_23
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2e} :catch_37

    move-result-object v5

    if-eqz v5, :cond_35

    :goto_31
    return v3

    .line 370
    .end local v0    # "alwaysOnPackage":Ljava/lang/String;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :catchall_32
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "alwaysOnPackage":Ljava/lang/String;
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_35
    move v3, v4

    .line 388
    goto :goto_31

    .line 389
    :catch_37
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "VpnService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    return v4
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1284
    .local v0, "token":J
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 1286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1280
    return-void

    .line 1285
    :catchall_e
    move-exception v2

    .line 1286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1285
    throw v2
.end method

.method public startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 21
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    .line 1299
    .local v6, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    invoke-virtual {v6, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 1300
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v14

    if-nez v14, :cond_2a

    const-string/jumbo v14, "no_config_vpn"

    .line 1301
    new-instance v15, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserHandle:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    .line 1300
    invoke-virtual {v6, v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v14

    if-eqz v14, :cond_33

    .line 1302
    :cond_2a
    new-instance v14, Ljava/lang/SecurityException;

    const-string/jumbo v15, "Restricted users cannot establish VPNs"

    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1305
    :cond_33
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 1306
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 1307
    .local v3, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v4

    .line 1310
    .local v4, "iface":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 1311
    .local v8, "privateKey":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 1312
    .local v12, "userCert":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 1313
    .local v1, "caCert":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 1314
    .local v10, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_92

    .line 1315
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "USRPKEY_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1316
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "USRCERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v13

    .line 1317
    .local v13, "value":[B
    if-nez v13, :cond_f5

    const/4 v12, 0x0

    .line 1319
    .end local v12    # "userCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_92
    :goto_92
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_bd

    .line 1320
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "CACERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v13

    .line 1321
    .restart local v13    # "value":[B
    if-nez v13, :cond_fd

    const/4 v1, 0x0

    .line 1323
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_bd
    :goto_bd
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e8

    .line 1324
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "USRCERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v13

    .line 1325
    .restart local v13    # "value":[B
    if-nez v13, :cond_105

    const/4 v10, 0x0

    .line 1327
    .end local v10    # "serverCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_e8
    :goto_e8
    if-eqz v8, :cond_ec

    if-nez v12, :cond_10d

    .line 1328
    :cond_ec
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "Cannot load credentials"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1317
    .restart local v1    # "caCert":Ljava/lang/String;
    .restart local v10    # "serverCert":Ljava/lang/String;
    .restart local v12    # "userCert":Ljava/lang/String;
    .restart local v13    # "value":[B
    :cond_f5
    new-instance v12, Ljava/lang/String;

    .end local v12    # "userCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v12    # "userCert":Ljava/lang/String;
    goto :goto_92

    .line 1321
    .end local v12    # "userCert":Ljava/lang/String;
    :cond_fd
    new-instance v1, Ljava/lang/String;

    .end local v1    # "caCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v1    # "caCert":Ljava/lang/String;
    goto :goto_bd

    .line 1325
    .end local v1    # "caCert":Ljava/lang/String;
    :cond_105
    new-instance v10, Ljava/lang/String;

    .end local v10    # "serverCert":Ljava/lang/String;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v10    # "serverCert":Ljava/lang/String;
    goto :goto_e8

    .line 1327
    .end local v10    # "serverCert":Ljava/lang/String;
    .end local v13    # "value":[B
    :cond_10d
    if-eqz v1, :cond_ec

    if-eqz v10, :cond_ec

    .line 1332
    const/4 v9, 0x0

    .line 1333
    .local v9, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v14, :pswitch_data_396

    .line 1367
    .end local v9    # "racoon":[Ljava/lang/String;
    :goto_119
    const/4 v7, 0x0

    .line 1368
    .local v7, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v14, :pswitch_data_3a4

    .line 1389
    .end local v7    # "mtpd":[Ljava/lang/String;
    :goto_121
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1390
    .local v2, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1391
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1392
    iput-object v4, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1393
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1395
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1396
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_159

    .line 1397
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1399
    :cond_159
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_174

    .line 1400
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string/jumbo v15, " +"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1402
    :cond_174
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v7}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1297
    return-void

    .line 1335
    .end local v2    # "config":Lcom/android/internal/net/VpnConfig;
    .restart local v9    # "racoon":[Ljava/lang/String;
    :pswitch_17a
    const/4 v14, 0x6

    new-array v9, v14, [Ljava/lang/String;

    .line 1336
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "udppsk"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v15, 0x3

    aput-object v14, v9, v15

    .line 1337
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v9, v15

    const-string/jumbo v14, "1701"

    const/4 v15, 0x5

    aput-object v14, v9, v15

    .line 1339
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_119

    .line 1341
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_1a3
    const/16 v14, 0x8

    new-array v9, v14, [Ljava/lang/String;

    .line 1342
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "udprsa"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    const/4 v14, 0x3

    aput-object v8, v9, v14

    const/4 v14, 0x4

    aput-object v12, v9, v14

    .line 1343
    const/4 v14, 0x5

    aput-object v1, v9, v14

    const/4 v14, 0x6

    aput-object v10, v9, v14

    const-string/jumbo v14, "1701"

    const/4 v15, 0x7

    aput-object v14, v9, v15

    .line 1345
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_119

    .line 1347
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_1cb
    const/16 v14, 0x9

    new-array v9, v14, [Ljava/lang/String;

    .line 1348
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "xauthpsk"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/4 v15, 0x3

    aput-object v14, v9, v15

    .line 1349
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v9, v15

    const-string/jumbo v14, ""

    const/4 v15, 0x7

    aput-object v14, v9, v15

    const/16 v14, 0x8

    aput-object v3, v9, v14

    .line 1351
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_119

    .line 1353
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_207
    const/16 v14, 0xb

    new-array v9, v14, [Ljava/lang/String;

    .line 1354
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "xauthrsa"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    const/4 v14, 0x3

    aput-object v8, v9, v14

    const/4 v14, 0x4

    aput-object v12, v9, v14

    .line 1355
    const/4 v14, 0x5

    aput-object v1, v9, v14

    const/4 v14, 0x6

    aput-object v10, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x7

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v14, v9, v15

    const-string/jumbo v14, ""

    const/16 v15, 0x9

    aput-object v14, v9, v15

    const/16 v14, 0xa

    aput-object v3, v9, v14

    .line 1357
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_119

    .line 1359
    .local v9, "racoon":[Ljava/lang/String;
    :pswitch_243
    const/16 v14, 0x9

    new-array v9, v14, [Ljava/lang/String;

    .line 1360
    .end local v9    # "racoon":[Ljava/lang/String;
    const/4 v14, 0x0

    aput-object v4, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const-string/jumbo v14, "hybridrsa"

    const/4 v15, 0x2

    aput-object v14, v9, v15

    .line 1361
    const/4 v14, 0x3

    aput-object v1, v9, v14

    const/4 v14, 0x4

    aput-object v10, v9, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v14, v9, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v9, v15

    const-string/jumbo v14, ""

    const/4 v15, 0x7

    aput-object v14, v9, v15

    const/16 v14, 0x8

    aput-object v3, v9, v14

    .line 1363
    .local v9, "racoon":[Ljava/lang/String;
    goto/16 :goto_119

    .line 1370
    .end local v9    # "racoon":[Ljava/lang/String;
    .restart local v7    # "mtpd":[Ljava/lang/String;
    :pswitch_277
    const/16 v14, 0x14

    new-array v7, v14, [Ljava/lang/String;

    .line 1371
    .end local v7    # "mtpd":[Ljava/lang/String;
    const/4 v14, 0x0

    aput-object v4, v7, v14

    const-string/jumbo v14, "pptp"

    const/4 v15, 0x1

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v14, v7, v15

    const-string/jumbo v14, "1723"

    const/4 v15, 0x3

    aput-object v14, v7, v15

    .line 1372
    const-string/jumbo v14, "name"

    const/4 v15, 0x4

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x5

    aput-object v14, v7, v15

    const-string/jumbo v14, "password"

    const/4 v15, 0x6

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v15, 0x7

    aput-object v14, v7, v15

    .line 1373
    const-string/jumbo v14, "linkname"

    const/16 v15, 0x8

    aput-object v14, v7, v15

    const-string/jumbo v14, "vpn"

    const/16 v15, 0x9

    aput-object v14, v7, v15

    const-string/jumbo v14, "refuse-eap"

    const/16 v15, 0xa

    aput-object v14, v7, v15

    const-string/jumbo v14, "nodefaultroute"

    const/16 v15, 0xb

    aput-object v14, v7, v15

    .line 1374
    const-string/jumbo v14, "usepeerdns"

    const/16 v15, 0xc

    aput-object v14, v7, v15

    const-string/jumbo v14, "idle"

    const/16 v15, 0xd

    aput-object v14, v7, v15

    const-string/jumbo v14, "1800"

    const/16 v15, 0xe

    aput-object v14, v7, v15

    const-string/jumbo v14, "mtu"

    const/16 v15, 0xf

    aput-object v14, v7, v15

    const-string/jumbo v14, "1400"

    const/16 v15, 0x10

    aput-object v14, v7, v15

    const-string/jumbo v14, "mru"

    const/16 v15, 0x11

    aput-object v14, v7, v15

    const-string/jumbo v14, "1400"

    const/16 v15, 0x12

    aput-object v14, v7, v15

    .line 1375
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v14, :cond_307

    const-string/jumbo v14, "+mppe"

    :goto_301
    const/16 v15, 0x13

    aput-object v14, v7, v15

    .line 1377
    .local v7, "mtpd":[Ljava/lang/String;
    goto/16 :goto_121

    .line 1375
    .end local v7    # "mtpd":[Ljava/lang/String;
    :cond_307
    const-string/jumbo v14, "nomppe"

    goto :goto_301

    .line 1380
    .local v7, "mtpd":[Ljava/lang/String;
    :pswitch_30b
    const/16 v14, 0x14

    new-array v7, v14, [Ljava/lang/String;

    .line 1381
    .end local v7    # "mtpd":[Ljava/lang/String;
    const/4 v14, 0x0

    aput-object v4, v7, v14

    const-string/jumbo v14, "l2tp"

    const/4 v15, 0x1

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v15, 0x2

    aput-object v14, v7, v15

    const-string/jumbo v14, "1701"

    const/4 v15, 0x3

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v7, v15

    .line 1382
    const-string/jumbo v14, "name"

    const/4 v15, 0x5

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v14, v7, v15

    const-string/jumbo v14, "password"

    const/4 v15, 0x7

    aput-object v14, v7, v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v14, v7, v15

    .line 1383
    const-string/jumbo v14, "linkname"

    const/16 v15, 0x9

    aput-object v14, v7, v15

    const-string/jumbo v14, "vpn"

    const/16 v15, 0xa

    aput-object v14, v7, v15

    const-string/jumbo v14, "refuse-eap"

    const/16 v15, 0xb

    aput-object v14, v7, v15

    const-string/jumbo v14, "nodefaultroute"

    const/16 v15, 0xc

    aput-object v14, v7, v15

    .line 1384
    const-string/jumbo v14, "usepeerdns"

    const/16 v15, 0xd

    aput-object v14, v7, v15

    const-string/jumbo v14, "idle"

    const/16 v15, 0xe

    aput-object v14, v7, v15

    const-string/jumbo v14, "1800"

    const/16 v15, 0xf

    aput-object v14, v7, v15

    const-string/jumbo v14, "mtu"

    const/16 v15, 0x10

    aput-object v14, v7, v15

    const-string/jumbo v14, "1400"

    const/16 v15, 0x11

    aput-object v14, v7, v15

    const-string/jumbo v14, "mru"

    const/16 v15, 0x12

    aput-object v14, v7, v15

    const-string/jumbo v14, "1400"

    const/16 v15, 0x13

    aput-object v14, v7, v15

    .line 1386
    .local v7, "mtpd":[Ljava/lang/String;
    goto/16 :goto_121

    .line 1333
    :pswitch_data_396
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_1a3
        :pswitch_1cb
        :pswitch_207
        :pswitch_243
    .end packed-switch

    .line 1368
    :pswitch_data_3a4
    .packed-switch 0x0
        :pswitch_277
        :pswitch_30b
        :pswitch_30b
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpnPrivileged()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 1419
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_12

    .line 1420
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1423
    const-string/jumbo v0, "LegacyVpnRunner"

    monitor-enter v0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    .line 1418
    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
