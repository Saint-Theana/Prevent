.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"

# interfaces
.implements Lcom/android/server/connectivity/tethering/IControlsTethering;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$1;,
        Lcom/android/server/connectivity/Tethering$DnsmasqThread;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherState;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNSMASQ_POLLING_INTERVAL:I = 0x3e8

.field private static final DNSMASQ_POLLING_MAX_TIMES:I = 0xa

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;

.field private static final VDBG:Z = false

.field private static final dhcpLocation:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.leases"

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIface:Ljava/lang/String;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private final mDisableWifiApRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mL2ConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNotificationId:I

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPreferredUpstreamMobileApn:I

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

.field private mUsbTetherRequested:Z

.field private mWiFiApInactivityTimeout:J

.field private mWifiTetherRequested:Z


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Tethering;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiDevice;)Z
    .registers 3
    .param p1, "device"    # Landroid/net/wifi/WifiDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .registers 3
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->maybeLogMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/Tethering;I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/Tethering;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .registers 3
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/connectivity/Tethering;ZI)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "interfaceType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-array v0, v5, [Ljava/lang/Class;

    .line 123
    const-class v1, Lcom/android/server/connectivity/Tethering;

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    aput-object v1, v0, v3

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    aput-object v1, v0, v4

    .line 122
    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 126
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    .line 125
    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 138
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 139
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 166
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    const v1, 0x104009a

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    .line 176
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 177
    const-string/jumbo v1, "192.168.42.2"

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.42.254"

    aput-object v1, v0, v3

    const-string/jumbo v1, "192.168.43.2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "192.168.43.254"

    aput-object v1, v0, v5

    .line 178
    const-string/jumbo v1, "192.168.44.2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "192.168.44.254"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.45.2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.45.254"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "192.168.46.2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.46.254"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.47.2"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.47.254"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 180
    const-string/jumbo v1, "192.168.48.2"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.48.254"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.2"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.254"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 176
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 143
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    .line 202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    .line 1262
    new-instance v1, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDisableWifiApRunnable:Ljava/lang/Runnable;

    .line 217
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 218
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 219
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 220
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 222
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 224
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    .line 227
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 228
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string/jumbo v2, "TetherMaster"

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 229
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->start()V

    .line 231
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    .line 233
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    .line 235
    new-instance v1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 252
    const v2, 0x107001d

    .line 251
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_c7

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_cb

    .line 254
    :cond_c7
    sget-object v1, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 258
    :cond_cb
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 261
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string/jumbo v2, "8.8.8.8"

    aput-object v2, v1, v4

    .line 263
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string/jumbo v2, "8.8.4.4"

    aput-object v2, v1, v5

    .line 216
    return-void
.end method

.method private cancelInactivityTimeout()V
    .registers 3

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDisableWifiApRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1280
    return-void
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 640
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 641
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraRemTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 645
    .local v0, "ident":J
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_29

    .line 647
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_28
    return-void

    .line 646
    .restart local v0    # "ident":J
    .restart local v2    # "intent":Landroid/content/Intent;
    :catchall_29
    move-exception v3

    .line 647
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    throw v3
.end method

.method private checkDunRequired()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    .line 1203
    const/4 v2, 0x2

    .line 1204
    .local v2, "secureSetting":I
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1205
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_13

    .line 1206
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    move-result v2

    .line 1209
    :cond_13
    const-string/jumbo v4, "persist.sys.dun.override"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1210
    .local v0, "prop":I
    const/4 v4, 0x3

    if-ge v0, v4, :cond_21

    if-ltz v0, :cond_21

    move v2, v0

    .line 1212
    :cond_21
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 1214
    const/4 v4, 0x2

    if-eq v2, v4, :cond_67

    .line 1215
    const/4 v4, 0x1

    if-ne v2, v4, :cond_42

    .line 1216
    const/4 v1, 0x4

    .line 1218
    .local v1, "requiredApn":I
    :goto_2b
    if-ne v1, v6, :cond_76

    .line 1219
    :goto_2d
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1220
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3f

    goto :goto_2d

    .line 1212
    .end local v1    # "requiredApn":I
    :catchall_3f
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1217
    :cond_42
    const/4 v1, 0x5

    .restart local v1    # "requiredApn":I
    goto :goto_2b

    .line 1222
    :cond_44
    :goto_44
    :try_start_44
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1223
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1225
    :cond_56
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 1226
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1240
    .end local v1    # "requiredApn":I
    :cond_67
    :goto_67
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 1241
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_74
    .catchall {:try_start_44 .. :try_end_74} :catchall_3f

    :goto_74
    monitor-exit v5

    .line 1202
    return-void

    .line 1229
    .restart local v1    # "requiredApn":I
    :cond_76
    :goto_76
    :try_start_76
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1230
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_76

    .line 1232
    :cond_88
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    .line 1233
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_99
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 1236
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v6, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 1243
    .end local v1    # "requiredApn":I
    :cond_ab
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_ae
    .catchall {:try_start_76 .. :try_end_ae} :catchall_3f

    goto :goto_74
.end method

.method private clearTetheredNotification()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1028
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1029
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1c

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_1c

    .line 1030
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1031
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1030
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1032
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1026
    :cond_1c
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 484
    if-eqz p2, :cond_17

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    .line 486
    :goto_6
    packed-switch p1, :pswitch_data_3c

    .line 505
    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "Invalid tether type."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 483
    :goto_16
    return-void

    .line 484
    :cond_17
    const/4 v0, 0x0

    .local v0, "isProvisioningRequired":Z
    goto :goto_6

    .line 488
    .end local v0    # "isProvisioningRequired":Z
    :pswitch_19
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    move-result v1

    .line 489
    .local v1, "result":I
    if-eqz v0, :cond_24

    if-nez v1, :cond_24

    .line 490
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    .line 492
    :cond_24
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_16

    .line 495
    .end local v1    # "result":I
    :pswitch_28
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v1

    .line 496
    .restart local v1    # "result":I
    if-eqz v0, :cond_33

    if-nez v1, :cond_33

    .line 497
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    .line 499
    :cond_33
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_16

    .line 502
    .end local v1    # "result":I
    :pswitch_37
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    goto :goto_16

    .line 486
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_28
        :pswitch_37
    .end packed-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 8
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 584
    new-instance v2, Lcom/android/server/connectivity/Tethering$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/connectivity/Tethering$3;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    .line 598
    .local v2, "rr":Landroid/os/ResultReceiver;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 600
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 601
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 602
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    return-object v1
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 386
    const/4 v0, 0x0

    return v0

    .line 387
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 388
    const/4 v0, 0x1

    return v0

    .line 389
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 390
    const/4 v0, 0x2

    return v0

    .line 392
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method private isBluetooth(Ljava/lang/String;)Z
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 377
    :try_start_4
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_8
    if-ge v1, v5, :cond_18

    aget-object v0, v4, v1

    .line 378
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1a

    move-result v6

    if-eqz v6, :cond_15

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 377
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v0    # "regex":Ljava/lang/String;
    :cond_18
    monitor-exit v3

    .line 380
    return v2

    .line 376
    :catchall_1a
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private isIpv6TetheringEnabled()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 274
    const-string/jumbo v4, "enable_aosp_v6_tethering"

    .line 273
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, "ipv6TetheringEnable":I
    if-ne v0, v1, :cond_12

    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method private isTetherProvisioningRequired()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 458
    const v5, 0x107001e

    .line 457
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "provisionApp":[Ljava/lang/String;
    const-string/jumbo v4, "net.tethering.noprovisioning"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_19

    .line 460
    if-nez v2, :cond_1a

    .line 461
    :cond_19
    return v3

    .line 465
    :cond_1a
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 466
    const-string/jumbo v5, "carrier_config"

    .line 465
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 467
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 469
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 470
    const-string/jumbo v5, "require_entitlement_checks_bool"

    .line 469
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 471
    .local v1, "isEntitlementCheckRequired":Z
    if-nez v1, :cond_3b

    .line 472
    return v3

    .line 475
    .end local v1    # "isEntitlementCheckRequired":Z
    :cond_3b
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40

    const/4 v3, 0x1

    :cond_40
    return v3
.end method

.method private isUsb(Ljava/lang/String;)Z
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 359
    :try_start_4
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_8
    if-ge v1, v5, :cond_18

    aget-object v0, v4, v1

    .line 360
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1a

    move-result v6

    if-eqz v6, :cond_15

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 359
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v0    # "regex":Ljava/lang/String;
    :cond_18
    monitor-exit v3

    .line 362
    return v2

    .line 358
    :catchall_1a
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private isWifi(Ljava/lang/String;)Z
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 368
    :try_start_4
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_8
    if-ge v1, v5, :cond_18

    aget-object v0, v4, v1

    .line 369
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1a

    move-result v6

    if-eqz v6, :cond_15

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 368
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v0    # "regex":Ljava/lang/String;
    :cond_18
    monitor-exit v3

    .line 371
    return v2

    .line 367
    :catchall_1a
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private maybeLogMessage(Lcom/android/internal/util/State;I)V
    .registers 3
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .prologue
    .line 1315
    return-void
.end method

.method private readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z
    .registers 15
    .param p1, "device"    # Landroid/net/wifi/WifiDevice;

    .prologue
    const/4 v11, 0x3

    .line 684
    const/4 v9, 0x0

    .line 685
    .local v9, "result":Z
    const/4 v4, 0x0

    .line 689
    .local v4, "fstream":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v10, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_4a
    .catchall {:try_start_3 .. :try_end_b} :catchall_6d

    .line 690
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .local v5, "fstream":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 691
    .local v6, "in":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 693
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_41

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_41

    .line 694
    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, "fields":[Ljava/lang/String;
    array-length v10, v3

    if-le v10, v11, :cond_1a

    .line 698
    const/4 v10, 0x1

    aget-object v0, v3, v10

    .line 699
    .local v0, "addr":Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v8, v3, v10

    .line 701
    .local v8, "name":Ljava/lang/String;
    iget-object v10, p1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 702
    iput-object v8, p1, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_40} :catch_79
    .catchall {:try_start_b .. :try_end_40} :catchall_76

    .line 703
    const/4 v9, 0x1

    .line 711
    .end local v0    # "addr":Ljava/lang/String;
    .end local v3    # "fields":[Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    :cond_41
    if-eqz v5, :cond_46

    .line 713
    :try_start_43
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_48

    :cond_46
    :goto_46
    move-object v4, v5

    .line 718
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "line":Ljava/lang/String;
    :cond_47
    :goto_47
    return v9

    .line 714
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "line":Ljava/lang/String;
    :catch_48
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    goto :goto_46

    .line 708
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "line":Ljava/lang/String;
    .restart local v4    # "fstream":Ljava/io/FileInputStream;
    :catch_4a
    move-exception v2

    .line 709
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "ex":Ljava/io/IOException;
    :goto_4b
    :try_start_4b
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readDeviceNameFromDnsmasq: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_6d

    .line 711
    if-eqz v4, :cond_47

    .line 713
    :try_start_67
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_47

    .line 714
    :catch_6b
    move-exception v2

    goto :goto_47

    .line 710
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_6d
    move-exception v10

    .line 711
    :goto_6e
    if-eqz v4, :cond_73

    .line 713
    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 710
    :cond_73
    :goto_73
    throw v10

    .line 714
    :catch_74
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_73

    .line 710
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    :catchall_76
    move-exception v10

    move-object v4, v5

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .local v4, "fstream":Ljava/io/FileInputStream;
    goto :goto_6e

    .line 708
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    :catch_79
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "fstream":Ljava/io/FileInputStream;
    goto :goto_4b
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 620
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 621
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    .line 619
    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 559
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 560
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    .line 558
    return-void
.end method

.method private scheduleInactivityTimeout()V
    .registers 5

    .prologue
    .line 1273
    iget-wide v0, p0, Lcom/android/server/connectivity/Tethering;->mWiFiApInactivityTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 1275
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDisableWifiApRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDisableWifiApRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/connectivity/Tethering;->mWiFiApInactivityTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1272
    :cond_18
    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 607
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 608
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    const-string/jumbo v3, "extraSetAlarm"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 610
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 613
    .local v0, "ident":J
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 606
    return-void

    .line 614
    :catchall_26
    move-exception v3

    .line 615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    throw v3
.end method

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 625
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 626
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const-string/jumbo v3, "extraRunProvision"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    const-string/jumbo v3, "extraProvisionCallback"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 629
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 632
    .local v0, "ident":J
    :try_start_21
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    .line 634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    return-void

    .line 633
    :catchall_2c
    move-exception v3

    .line 634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    throw v3
.end method

.method private sendTetherConnectStateChangedBroadcast()V
    .registers 4

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 674
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "broadcast":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 678
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 680
    const v1, 0x10807cd

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 671
    return-void
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .registers 4
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 511
    if-eqz p1, :cond_6

    .line 512
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 510
    :cond_6
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .registers 15

    .prologue
    const v13, 0x10807cb

    .line 877
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v10

    if-nez v10, :cond_e

    return-void

    .line 879
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v1, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v0, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v4, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 884
    .local v9, "wifiTethered":Z
    const/4 v8, 0x0

    .line 885
    .local v8, "usbTethered":Z
    const/4 v2, 0x0

    .line 887
    .local v2, "bluetoothTethered":Z
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v11

    .line 888
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    :try_start_24
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_72

    .line 889
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 890
    .local v7, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 891
    .local v6, "iface":Ljava/lang/String;
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    if-eqz v10, :cond_46

    .line 892
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 893
    :cond_46
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_52

    .line 894
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_4f

    goto :goto_43

    .line 887
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_4f
    move-exception v10

    monitor-exit v11

    throw v10

    .line 895
    .restart local v6    # "iface":Ljava/lang/String;
    .restart local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_52
    :try_start_52
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_43

    .line 896
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 897
    const/4 v8, 0x1

    .line 903
    :cond_5e
    :goto_5e
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 898
    :cond_62
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 899
    const/4 v9, 0x1

    goto :goto_5e

    .line 900
    :cond_6a
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_4f

    move-result v10

    if-eqz v10, :cond_5e

    .line 901
    const/4 v2, 0x1

    goto :goto_5e

    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_72
    monitor-exit v11

    .line 907
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 908
    .local v3, "broadcast":Landroid/content/Intent;
    const/high16 v10, 0x24000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 910
    const-string/jumbo v10, "availableArray"

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 912
    const-string/jumbo v10, "activeArray"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 913
    const-string/jumbo v10, "erroredArray"

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 915
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 924
    if-eqz v8, :cond_aa

    .line 925
    if-nez v9, :cond_9f

    if-eqz v2, :cond_a3

    .line 926
    :cond_9f
    invoke-direct {p0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 876
    :cond_a2
    :goto_a2
    return-void

    .line 928
    :cond_a3
    const v10, 0x10807cc

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_a2

    .line 930
    :cond_aa
    if-eqz v9, :cond_cb

    .line 931
    if-eqz v2, :cond_b2

    .line 932
    invoke-direct {p0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_a2

    .line 935
    :cond_b2
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 936
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 937
    const v11, 0x11200cb

    .line 936
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 939
    const v10, 0x10807cd

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_a2

    .line 942
    :cond_cb
    if-eqz v2, :cond_d4

    .line 943
    const v10, 0x10807ca

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_a2

    .line 945
    :cond_d4
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto :goto_a2
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 564
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    const-string/jumbo v3, "extraProvisionCallback"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 567
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 569
    .local v0, "ident":J
    :try_start_18
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_23

    .line 571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    return-void

    .line 570
    :catchall_23
    move-exception v3

    .line 571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    throw v3
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 529
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 530
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 537
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    .line 555
    const/4 v3, 0x5

    .line 537
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 528
    return-void

    .line 531
    :cond_18
    const-string/jumbo v2, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    if-nez v0, :cond_3a

    const/4 v1, 0x1

    .line 531
    :goto_2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 534
    return-void

    .line 532
    :cond_3a
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method private setWifiTethering(Z)I
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 517
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 518
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 520
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 521
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1d

    move-result v1

    if-eqz v1, :cond_1a

    .line 522
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 524
    :cond_1a
    const/4 v1, 0x5

    monitor-exit v2

    return v1

    .line 517
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private showTetheredNotification(I)V
    .registers 14
    .param p1, "icon"    # I

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 952
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_e

    .line 953
    return-void

    .line 956
    :cond_e
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v0, :cond_36

    .line 957
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-ne v0, p1, :cond_2b

    .line 958
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 959
    const v1, 0x112000a

    .line 958
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 960
    const v0, 0x10807cd

    if-eq p1, v0, :cond_2b

    .line 962
    :cond_2a
    return-void

    .line 965
    :cond_2b
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 966
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 965
    const/4 v3, 0x0

    invoke-virtual {v7, v3, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 970
    :cond_36
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 971
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 974
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 975
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 974
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 975
    const/4 v4, 0x0

    .line 974
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 977
    .local v8, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 978
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x1040524

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 981
    .local v11, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v10

    .line 983
    .local v10, "size":I
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 984
    const v0, 0x10807cd

    if-ne p1, v0, :cond_130

    .line 985
    if-nez v10, :cond_f7

    .line 986
    const v0, 0x1040077

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 998
    .local v6, "message":Ljava/lang/CharSequence;
    :goto_82
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_b4

    .line 999
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1000
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1001
    const/4 v1, 0x1

    .line 1000
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1002
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 1003
    const v3, 0x106005c

    .line 1002
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 1000
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1004
    const/4 v1, 0x1

    .line 1000
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1005
    const-string/jumbo v1, "status"

    .line 1000
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1007
    :cond_b4
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1011
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 1012
    const v0, 0x10807cd

    if-ne p1, v0, :cond_139

    .line 1013
    if-lez v10, :cond_139

    .line 1014
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1015
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1019
    :goto_e6
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1021
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 1022
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1021
    const/4 v4, 0x0

    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 949
    return-void

    .line 987
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_f7
    const/4 v0, 0x1

    if-ne v10, v0, :cond_115

    .line 988
    const v0, 0x1040078

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 989
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 988
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_82

    .line 991
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_115
    const v0, 0x1040079

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 992
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 991
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_82

    .line 995
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_130
    const v0, 0x1040525

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_82

    .line 1017
    :cond_139
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_e6
.end method

.method private tetherMatchingInterfaces(ZI)V
    .registers 11
    .param p1, "enable"    # Z
    .param p2, "interfaceType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1115
    const/4 v3, 0x0

    .line 1117
    .local v3, "ifaces":[Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_34

    move-result-object v3

    .line 1122
    .local v3, "ifaces":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1123
    .local v0, "chosenIface":Ljava/lang/String;
    if-eqz v3, :cond_17

    .line 1124
    array-length v6, v3

    :goto_c
    if-ge v5, v6, :cond_17

    aget-object v2, v3, v5

    .line 1125
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v7

    if-ne v7, p2, :cond_3f

    .line 1126
    move-object v0, v2

    .line 1131
    .end local v0    # "chosenIface":Ljava/lang/String;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_17
    if-nez v0, :cond_42

    .line 1132
    const-string/jumbo v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not find iface of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return-void

    .line 1118
    .local v3, "ifaces":[Ljava/lang/String;
    :catch_34
    move-exception v1

    .line 1119
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Tethering"

    const-string/jumbo v6, "Error listing Interfaces"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1120
    return-void

    .line 1124
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chosenIface":Ljava/lang/String;
    .restart local v2    # "iface":Ljava/lang/String;
    .local v3, "ifaces":[Ljava/lang/String;
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1136
    .end local v0    # "chosenIface":Ljava/lang/String;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_42
    if-eqz p1, :cond_65

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v4

    .line 1137
    .local v4, "result":I
    :goto_48
    if-eqz v4, :cond_6a

    .line 1138
    const-string/jumbo v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable start or stop tethering on iface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void

    .line 1136
    .end local v4    # "result":I
    :cond_65
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v4

    goto :goto_48

    .line 1112
    .restart local v4    # "result":I
    :cond_6a
    return-void
.end method

.method private trackNewTetherableInterface(Ljava/lang/String;I)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "interfaceType"    # I

    .prologue
    .line 2248
    new-instance v8, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 2249
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6TetheringEnabled()Z

    move-result v7

    move-object v1, p1

    move v3, p2

    move-object v6, p0

    .line 2248
    invoke-direct/range {v0 .. v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Z)V

    invoke-direct {v8, v0}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 2250
    .local v8, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    iget-object v0, v8, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->start()V

    .line 2246
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2155
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v6, "  "

    invoke-direct {v4, p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2156
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 2157
    const-string/jumbo v7, "android.permission.DUMP"

    .line 2156
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3e

    .line 2158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2159
    const-string/jumbo v7, ", uid="

    .line 2158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    return-void

    .line 2164
    :cond_3e
    const-string/jumbo v6, "Tethering:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2166
    const-string/jumbo v6, "mUpstreamIfaceTypes:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2167
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v7

    .line 2168
    :try_start_50
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "netType$iterator":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2169
    .local v2, "netType":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_50 .. :try_end_81} :catchall_82

    goto :goto_56

    .line 2167
    .end local v2    # "netType":Ljava/lang/Integer;
    .end local v3    # "netType$iterator":Ljava/util/Iterator;
    :catchall_82
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2171
    .restart local v3    # "netType$iterator":Ljava/util/Iterator;
    :cond_85
    :try_start_85
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2173
    const-string/jumbo v6, "Tether state:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_92
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v0, v6, :cond_fd

    .line 2176
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2177
    .local v1, "iface":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2178
    .local v5, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2180
    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    packed-switch v6, :pswitch_data_106

    .line 2191
    const-string/jumbo v6, "UnknownState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    :goto_cc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " - lastError = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2175
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 2182
    :pswitch_e8
    const-string/jumbo v6, "UnavailableState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_cc

    .line 2185
    :pswitch_ef
    const-string/jumbo v6, "AvailableState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_cc

    .line 2188
    :pswitch_f6
    const-string/jumbo v6, "TetheredState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_cc

    .line 2196
    .end local v1    # "iface":Ljava/lang/String;
    .end local v5    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_fd
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_100
    .catchall {:try_start_85 .. :try_end_100} :catchall_82

    monitor-exit v7

    .line 2198
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2152
    return-void

    .line 2180
    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_ef
        :pswitch_f6
    .end packed-switch
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 1303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 1306
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1307
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    if-eqz v3, :cond_28

    .line 1308
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_39

    .line 1305
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_2b
    monitor-exit v4

    .line 1312
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1304
    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 865
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 866
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 867
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_31

    .line 868
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 869
    const-string/jumbo v4, ", ignoring"

    .line 868
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_35

    .line 870
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 872
    :cond_31
    :try_start_31
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_35

    monitor-exit v2

    return v1

    .line 865
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getTetherConnectedSta()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v0, "TetherConnectedStaList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 657
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 658
    .local v2, "it":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 659
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 660
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiDevice;

    .line 664
    .local v1, "device":Landroid/net/wifi/WifiDevice;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 668
    .end local v1    # "device":Landroid/net/wifi/WifiDevice;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_36
    return-object v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 1289
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1290
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_29

    .line 1291
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_3a

    .line 1288
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_2c
    monitor-exit v4

    .line 1295
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1287
    :catchall_3a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 1253
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1254
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_29

    .line 1255
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_3a

    .line 1252
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_2c
    monitor-exit v4

    .line 1259
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1251
    :catchall_3a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUpstreamIfaceTypes()[I
    .registers 6

    .prologue
    .line 1191
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1192
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1193
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1194
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1195
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 1196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2e

    .line 1195
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2c
    monitor-exit v4

    .line 1199
    return-object v2

    .line 1191
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_2e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 399
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b

    move-result v0

    .line 400
    .local v0, "interfaceType":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    monitor-exit v3

    .line 402
    return-void

    .line 405
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 406
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_19

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->trackNewTetherableInterface(Ljava/lang/String;I)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v3

    .line 396
    return-void

    .line 398
    .end local v0    # "interfaceType":I
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 353
    return-void
.end method

.method public interfaceMessageRecevied(Ljava/lang/String;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 779
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 780
    return-void

    .line 786
    :cond_10
    :try_start_10
    new-instance v0, Landroid/net/wifi/WifiDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiDevice;-><init>(Ljava/lang/String;)V

    .line 788
    .local v0, "device":Landroid/net/wifi/WifiDevice;
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5e

    .line 789
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 797
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V

    .line 804
    :goto_31
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->cancelInactivityTimeout()V

    .line 777
    .end local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_34
    :goto_34
    return-void

    .line 801
    .restart local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_35
    new-instance v2, Lcom/android/server/connectivity/Tethering$DnsmasqThread;

    .line 802
    const/16 v3, 0x3e8

    const/16 v4, 0xa

    .line 801
    invoke-direct {v2, p0, v0, v3, v4}, Lcom/android/server/connectivity/Tethering$DnsmasqThread;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiDevice;II)V

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->start()V
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_41} :catch_42

    goto :goto_31

    .line 816
    .end local v0    # "device":Landroid/net/wifi/WifiDevice;
    :catch_42
    move-exception v1

    .line 817
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiDevice IllegalArgument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 805
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_5e
    :try_start_5e
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-nez v2, :cond_34

    .line 806
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V

    .line 811
    iget-wide v2, p0, Lcom/android/server/connectivity/Tethering;->mWiFiApInactivityTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_34

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_34

    .line 812
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->scheduleInactivityTimeout()V
    :try_end_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_86} :catch_42

    goto :goto_34
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    .line 419
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_f

    monitor-exit v2

    .line 423
    return-void

    .line 425
    :cond_f
    :try_start_f
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50068

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 426
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1e

    monitor-exit v2

    .line 415
    return-void

    .line 417
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 316
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 317
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_4c

    move-result v1

    .line 318
    .local v1, "interfaceType":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_e

    monitor-exit v8

    .line 319
    return-void

    .line 322
    :cond_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 323
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz p2, :cond_51

    .line 324
    if-nez v2, :cond_1f

    .line 325
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/Tethering;->trackNewTetherableInterface(Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_4c

    :cond_1d
    :goto_1d
    monitor-exit v8

    .line 312
    return-void

    .line 326
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 330
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 331
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 333
    .local v0, "apConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_4f

    iget-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->wifiApInactivityTimeout:J

    .line 332
    :goto_38
    iput-wide v4, p0, Lcom/android/server/connectivity/Tethering;->mWiFiApInactivityTimeout:J

    .line 334
    iget-wide v4, p0, Lcom/android/server/connectivity/Tethering;->mWiFiApInactivityTimeout:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1d

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_1d

    .line 335
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->scheduleInactivityTimeout()V
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_4c

    goto :goto_1d

    .line 316
    .end local v0    # "apConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "interfaceType":I
    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .end local v3    # "wm":Landroid/net/wifi/WifiManager;
    :catchall_4c
    move-exception v4

    monitor-exit v8

    throw v4

    .restart local v0    # "apConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "interfaceType":I
    .restart local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .restart local v3    # "wm":Landroid/net/wifi/WifiManager;
    :cond_4f
    move-wide v4, v6

    .line 333
    goto :goto_38

    .line 339
    .end local v0    # "apConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "wm":Landroid/net/wifi/WifiManager;
    :cond_51
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1d

    .line 340
    :try_start_54
    iget-object v4, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 341
    const v5, 0x50068

    .line 340
    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 342
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 344
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->cancelInactivityTimeout()V

    .line 346
    :cond_6a
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_54 .. :try_end_6f} :catchall_4c

    goto :goto_1d
.end method

.method public notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p3, "state"    # I
    .param p4, "error"    # I

    .prologue
    .line 2204
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2205
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 2206
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2207
    iput p3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    .line 2208
    iput p4, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_35

    :cond_19
    monitor-exit v3

    .line 2223
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    const/4 v2, 0x2

    if-ne p3, v2, :cond_38

    const/4 v2, 0x1

    :goto_20
    invoke-interface {v3, p1, v2}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_4c

    .line 2231
    :goto_23
    const/4 v2, 0x5

    if-ne p4, v2, :cond_2e

    .line 2232
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50006

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2234
    :cond_2e
    packed-switch p3, :pswitch_data_4e

    .line 2243
    :goto_31
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 2203
    return-void

    .line 2204
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_35
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2223
    .restart local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_38
    const/4 v2, 0x0

    goto :goto_20

    .line 2237
    :pswitch_3a
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50002

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_31

    .line 2240
    :pswitch_43
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50001

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_31

    .line 2224
    :catch_4c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_23

    .line 2234
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_3a
        :pswitch_43
    .end packed-switch
.end method

.method pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .registers 5
    .param p1, "ns"    # Landroid/net/NetworkState;

    .prologue
    .line 1501
    if-eqz p1, :cond_2a

    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 1502
    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ifname$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1503
    .local v0, "ifname":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1504
    const/4 v2, 0x1

    return v2

    .line 1508
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "ifname$iterator":Ljava/util/Iterator;
    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method public setUsbTethering(Z)I
    .registers 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1158
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1160
    .local v2, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1161
    if-eqz p1, :cond_36

    .line 1162
    :try_start_11
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v3, :cond_2b

    .line 1163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_28

    move-result-wide v0

    .line 1165
    .local v0, "ident":J
    const/4 v3, 0x1

    const/4 v5, 0x1

    :try_start_1b
    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_23

    .line 1167
    :try_start_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_28

    .end local v0    # "ident":J
    :goto_21
    monitor-exit v4

    .line 1186
    return v6

    .line 1166
    .restart local v0    # "ident":J
    :catchall_23
    move-exception v3

    .line 1167
    :try_start_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1166
    throw v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 1160
    .end local v0    # "ident":J
    :catchall_28
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1170
    :cond_2b
    const/4 v3, 0x1

    :try_start_2c
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 1171
    const-string/jumbo v3, "rndis"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_21

    .line 1174
    :cond_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_28

    move-result-wide v0

    .line 1176
    .restart local v0    # "ident":J
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_3c
    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4f

    .line 1178
    :try_start_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1180
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v3, :cond_4b

    .line 1181
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1183
    :cond_4b
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    goto :goto_21

    .line 1177
    :catchall_4f
    move-exception v3

    .line 1178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    throw v3
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_28
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-nez v0, :cond_b

    .line 433
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 434
    return-void

    .line 437
    :cond_b
    if-eqz p3, :cond_11

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    .line 431
    :goto_10
    return-void

    .line 440
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    goto :goto_10
.end method

.method public stopTethering(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 445
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 446
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    .line 444
    :cond_e
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 823
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 824
    :try_start_4
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 825
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_31

    .line 826
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Tether an unknown iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_64

    monitor-exit v2

    .line 827
    return v5

    .line 831
    :cond_31
    :try_start_31
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    if-eq v1, v5, :cond_59

    .line 832
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Tether an unavailable iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_31 .. :try_end_56} :catchall_64

    .line 833
    const/4 v1, 0x4

    monitor-exit v2

    return v1

    .line 835
    :cond_59
    :try_start_59
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50066

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_64

    .line 836
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 823
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_64
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public untether(Ljava/lang/String;)I
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 842
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 843
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 844
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_31

    .line 845
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_65

    .line 846
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 848
    :cond_31
    :try_start_31
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5a

    .line 849
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to untether an untethered iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_65

    .line 850
    const/4 v1, 0x4

    monitor-exit v2

    return v1

    .line 852
    :cond_5a
    :try_start_5a
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 853
    const v3, 0x50067

    .line 852
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_65

    .line 854
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 842
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_65
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public untetherAll()V
    .registers 2

    .prologue
    .line 859
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 860
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 861
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 858
    return-void
.end method

.method updateConfiguration()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 280
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 281
    const v8, 0x1070019

    .line 280
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 284
    const v8, 0x107001c

    .line 283
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "tetherableBluetoothRegexs":[Ljava/lang/String;
    const-string/jumbo v7, "persist.fst.rate.upgrade.en"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_4e

    .line 287
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v7, "bond0"

    aput-object v7, v4, v6

    .line 293
    .local v4, "tetherableWifiRegexs":[Ljava/lang/String;
    :goto_2c
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 294
    const v8, 0x107001f

    .line 293
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 295
    .local v1, "ifaceTypes":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v5, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    array-length v7, v1

    :goto_3f
    if-ge v6, v7, :cond_5c

    aget v0, v1, v6

    .line 297
    .local v0, "i":I
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 289
    .end local v0    # "i":I
    .end local v1    # "ifaceTypes":[I
    .end local v4    # "tetherableWifiRegexs":[Ljava/lang/String;
    .end local v5    # "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_4e
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 290
    const v8, 0x107001a

    .line 289
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "tetherableWifiRegexs":[Ljava/lang/String;
    goto :goto_2c

    .line 300
    .restart local v1    # "ifaceTypes":[I
    .restart local v5    # "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_5c
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v7

    .line 301
    :try_start_5f
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 302
    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 303
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 304
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_6c

    monitor-exit v7

    .line 308
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 279
    return-void

    .line 300
    :catchall_6c
    move-exception v6

    monitor-exit v7

    throw v6
.end method
