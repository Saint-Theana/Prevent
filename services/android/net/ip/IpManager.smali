.class public Landroid/net/ip/IpManager;
.super Lcom/android/internal/util/StateMachine;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$-void__init__android_content_Context_context_java_lang_String_ifName_android_net_ip_IpManager$Callback_callback_android_os_INetworkManagementService_nwService_LambdaImpl0;,
        Landroid/net/ip/IpManager$Callback;,
        Landroid/net/ip/IpManager$LoggingCallbackWrapper;,
        Landroid/net/ip/IpManager$MessageHandlingLogger;,
        Landroid/net/ip/IpManager$ProvisioningConfiguration;,
        Landroid/net/ip/IpManager$RunningState;,
        Landroid/net/ip/IpManager$StartedState;,
        Landroid/net/ip/IpManager$StoppedState;,
        Landroid/net/ip/IpManager$StoppingState;,
        Landroid/net/ip/IpManager$WaitForProvisioningCallback;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I = null

.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final CMD_CONFIRM:I = 0x3

.field private static final CMD_SET_MULTICAST_FILTER:I = 0x8

.field private static final CMD_START:I = 0x2

.field private static final CMD_STOP:I = 0x1

.field private static final CMD_UPDATE_HTTP_PROXY:I = 0x7

.field private static final CMD_UPDATE_TCP_BUFFER_SIZES:I = 0x6

.field private static final DBG:Z = false

.field public static final DUMP_ARG:Ljava/lang/String; = "ipmanager"

.field public static final DUMP_ARG_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final EVENT_DHCPACTION_TIMEOUT:I = 0xa

.field private static final EVENT_NETLINK_LINKPROPERTIES_CHANGED:I = 0x5

.field private static final EVENT_PRE_DHCP_ACTION_COMPLETE:I = 0x4

.field private static final EVENT_PROVISIONING_TIMEOUT:I = 0x9

.field private static final MAX_LOG_RECORDS:I = 0x1f4

.field private static final MAX_PACKET_RECORDS:I = 0x64

.field private static final NO_CALLBACKS:Z = false

.field private static final SEND_CALLBACKS:Z = true

.field private static final VDBG:Z

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sWhatToString:Landroid/util/SparseArray;
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
.field private mApfFilter:Landroid/net/apf/ApfFilter;

.field private final mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

.field protected final mCallback:Landroid/net/ip/IpManager$Callback;

.field private final mClatInterfaceName:Ljava/lang/String;

.field private mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

.field private final mConnectivityPacketLog:Landroid/util/LocalLog;

.field private final mContext:Landroid/content/Context;

.field private final mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mDhcpClient:Landroid/net/dhcp/DhcpClient;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

.field private mMulticastFiltering:Z

.field private final mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private final mNwService:Landroid/os/INetworkManagementService;

.field private final mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private final mRunningState:Lcom/android/internal/util/State;

.field private mStartTimeMillis:J

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mStoppedState:Lcom/android/internal/util/State;

.field private final mStoppingState:Lcom/android/internal/util/State;

.field private final mTag:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    return-object v0
.end method

.method static synthetic -get11(Landroid/net/ip/IpManager;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    return v0
.end method

.method static synthetic -get12(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method static synthetic -get13(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic -get14(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get15(Landroid/net/ip/IpManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    return-wide v0
.end method

.method static synthetic -get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get18(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get19(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object v0
.end method

.method static synthetic -get6(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object v0
.end method

.method static synthetic -get8(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get9(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method private static synthetic -getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/LinkProperties$ProvisioningChange;->values()[Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$ProvisioningConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object p1
.end method

.method static synthetic -set5(Landroid/net/ip/IpManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    return p1
.end method

.method static synthetic -set6(Landroid/net/ip/IpManager;J)J
    .registers 4

    iput-wide p1, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    return-wide p1
.end method

.method static synthetic -set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/ip/IpManager;Z)Z
    .registers 3
    .param p1, "sendCallbacks"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleLinkPropertiesUpdate(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z
    .registers 3
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleIPv4Failure()V

    return-void
.end method

.method static synthetic -wrap11(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V
    .registers 2
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    return-void
.end method

.method static synthetic -wrap13(Landroid/net/ip/IpManager;I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->recordMetric(I)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->resetLinkProperties()V

    return-void
.end method

.method static synthetic -wrap15(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->stopAllIP()V

    return-void
.end method

.method static synthetic -wrap16(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/ip/IpManager;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/net/ip/IpManager;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/net/ip/IpManager;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIpReachabilityMonitor()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/IState;
    .registers 2

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/net/ip/IpManager;Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "delta"    # Landroid/net/LinkProperties$ProvisioningChange;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/net/ip/IpManager;I)V
    .registers 2
    .param p1, "failureType"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->doImmediateProvisioningFailure(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/ip/IpManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    .line 84
    sget-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    .line 83
    sput-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 426
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V

    .line 424
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "nwService"    # Landroid/os/INetworkManagementService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/ip/IpManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 386
    new-instance v0, Landroid/net/ip/IpManager$StoppedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StoppedState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    .line 387
    new-instance v0, Landroid/net/ip/IpManager$StoppingState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StoppingState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    .line 388
    new-instance v0, Landroid/net/ip/IpManager$StartedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StartedState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    .line 389
    new-instance v0, Landroid/net/ip/IpManager$RunningState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$RunningState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    .line 405
    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 435
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    .line 437
    iput-object p1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    .line 438
    iput-object p2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    .line 440
    new-instance v0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;

    invoke-direct {v0, p0, p3}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;-><init>(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    .line 441
    iput-object p4, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 443
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    .line 444
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    .line 445
    new-instance v0, Landroid/net/ip/IpManager$MessageHandlingLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;-><init>(Landroid/net/ip/IpManager$MessageHandlingLogger;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    .line 447
    new-instance v0, Landroid/net/ip/IpManager$2;

    .line 448
    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 449
    new-instance v2, Landroid/net/ip/IpManager$1;

    invoke-direct {v2, p0}, Landroid/net/ip/IpManager$1;-><init>(Landroid/net/ip/IpManager;)V

    .line 447
    invoke-direct {v0, p0, v1, v2}, Landroid/net/ip/IpManager$2;-><init>(Landroid/net/ip/IpManager;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    .line 492
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 493
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 495
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 496
    new-instance v3, Landroid/net/ip/IpManager$-void__init__android_content_Context_context_java_lang_String_ifName_android_net_ip_IpManager$Callback_callback_android_os_INetworkManagementService_nwService_LambdaImpl0;

    invoke-direct {v3, p0}, Landroid/net/ip/IpManager$-void__init__android_content_Context_context_java_lang_String_ifName_android_net_ip_IpManager$Callback_callback_android_os_INetworkManagementService_nwService_LambdaImpl0;-><init>(Landroid/net/ip/IpManager;)V

    .line 495
    invoke-direct {v0, v1, v2, v3}, Landroid/net/util/AvoidBadWifiTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    .line 498
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".EVENT_PROVISIONING_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    .line 498
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 500
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".EVENT_DHCPACTION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    .line 500
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 505
    invoke-direct {p0}, Landroid/net/ip/IpManager;->configureAndStartStateMachine()V

    .line 509
    invoke-direct {p0}, Landroid/net/ip/IpManager;->startStateMachineUpdaters()V

    .line 433
    return-void
.end method

.method private static addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V
    .registers 5
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, "dnses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dns$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 906
    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 907
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_4

    .line 901
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_20
    return-void
.end method

.method private assembleLinkProperties()Landroid/net/LinkProperties;
    .registers 7

    .prologue
    .line 850
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 851
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget-object v4, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 863
    iget-object v4, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v4}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 864
    .local v0, "netlinkLinkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 865
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "route$iterator":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 866
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1f

    .line 868
    .end local v2    # "route":Landroid/net/RouteInfo;
    :cond_2f
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/ip/IpManager;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 874
    iget-object v4, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v4, :cond_71

    .line 875
    iget-object v4, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v5, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 876
    .restart local v2    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_46

    .line 878
    .end local v2    # "route":Landroid/net/RouteInfo;
    :cond_56
    iget-object v4, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v4, v4, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Landroid/net/ip/IpManager;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 879
    iget-object v4, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v4, v4, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 881
    iget-object v4, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget v4, v4, Landroid/net/DhcpResults;->mtu:I

    if-eqz v4, :cond_71

    .line 882
    iget-object v4, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget v4, v4, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 887
    :cond_71
    iget-object v4, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 888
    iget-object v4, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 890
    :cond_7e
    iget-object v4, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v4, :cond_87

    .line 891
    iget-object v4, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 897
    :cond_87
    return-object v1
.end method

.method public static buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 1

    .prologue
    .line 546
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;-><init>()V

    return-object v0
.end method

.method private clearIPv4Address()V
    .registers 6

    .prologue
    .line 940
    :try_start_0
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 941
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    new-instance v2, Landroid/net/LinkAddress;

    const-string/jumbo v3, "0.0.0.0/0"

    invoke-direct {v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 942
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 938
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :goto_17
    return-void

    .line 943
    :catch_18
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ALERT: Failed to clear IPv4 address on interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .registers 11
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 730
    invoke-static {p1}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;)Z

    move-result v6

    .line 731
    .local v6, "wasProvisioned":Z
    invoke-static {p2}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;)Z

    move-result v2

    .line 733
    .local v2, "isProvisioned":Z
    if-nez v6, :cond_4f

    if-eqz v2, :cond_4f

    .line 734
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 753
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :goto_e
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v7

    if-eqz v7, :cond_60

    :cond_1a
    const/4 v4, 0x0

    .line 754
    .local v4, "lostIPv6":Z
    :goto_1b
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-eqz v7, :cond_62

    :cond_27
    const/4 v3, 0x0

    .line 755
    .local v3, "lostIPv4Address":Z
    :goto_28
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_64

    :cond_34
    const/4 v5, 0x0

    .line 770
    .local v5, "lostIPv6Router":Z
    :goto_35
    iget-object v7, p0, Landroid/net/ip/IpManager;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    invoke-virtual {v7}, Landroid/net/util/AvoidBadWifiTracker;->currentValue()Z

    move-result v7

    if-eqz v7, :cond_66

    const/4 v1, 0x0

    .line 784
    .local v1, "ignoreIPv6ProvisioningLoss":Z
    :goto_3e
    if-nez v3, :cond_68

    if-eqz v4, :cond_44

    if-eqz v1, :cond_68

    .line 793
    :cond_44
    :goto_44
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v7

    if-eqz v7, :cond_4e

    if-eqz v5, :cond_4e

    if-eqz v1, :cond_6b

    .line 797
    :cond_4e
    :goto_4e
    return-object v0

    .line 735
    .end local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    .end local v1    # "ignoreIPv6ProvisioningLoss":Z
    .end local v3    # "lostIPv4Address":Z
    .end local v4    # "lostIPv6":Z
    .end local v5    # "lostIPv6Router":Z
    :cond_4f
    if-eqz v6, :cond_56

    if-eqz v2, :cond_56

    .line 736
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    .restart local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_e

    .line 737
    .end local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :cond_56
    if-nez v6, :cond_5a

    if-eqz v2, :cond_5d

    .line 750
    :cond_5a
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .restart local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_e

    .line 738
    .end local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :cond_5d
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    .restart local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_e

    .line 753
    :cond_60
    const/4 v4, 0x1

    .restart local v4    # "lostIPv6":Z
    goto :goto_1b

    .line 754
    :cond_62
    const/4 v3, 0x1

    .restart local v3    # "lostIPv4Address":Z
    goto :goto_28

    .line 755
    :cond_64
    const/4 v5, 0x1

    .restart local v5    # "lostIPv6Router":Z
    goto :goto_35

    .line 770
    :cond_66
    const/4 v1, 0x1

    .restart local v1    # "ignoreIPv6ProvisioningLoss":Z
    goto :goto_3e

    .line 785
    :cond_68
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_44

    .line 794
    :cond_6b
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_4e
.end method

.method private configureAndStartStateMachine()V
    .registers 3

    .prologue
    .line 513
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    .line 514
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    .line 515
    iget-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 516
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    .line 518
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->setInitialState(Lcom/android/internal/util/State;)V

    .line 520
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 512
    return-void
.end method

.method private dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .registers 5
    .param p1, "delta"    # Landroid/net/LinkProperties$ProvisioningChange;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 801
    invoke-static {}, Landroid/net/ip/IpManager;->-getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 816
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 800
    :goto_12
    return-void

    .line 804
    :pswitch_13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 805
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    goto :goto_12

    .line 810
    :pswitch_1d
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 811
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    goto :goto_12

    .line 801
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1d
    .end packed-switch
.end method

.method private doImmediateProvisioningFailure(I)V
    .registers 5
    .param p1, "failureType"    # I

    .prologue
    .line 998
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 999
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 996
    return-void
.end method

.method private getNetworkInterface()V
    .registers 4

    .prologue
    .line 685
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    .line 683
    :goto_8
    return-void

    .line 686
    :catch_9
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "ALERT: Failed to get interface object: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private handleIPv4Failure()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 967
    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    .line 968
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 970
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 972
    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    .line 960
    return-void
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .registers 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    .line 949
    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2, p1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    iput-object v2, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 950
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 951
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 956
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v2, p1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 957
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 948
    return-void
.end method

.method private handleLinkPropertiesUpdate(Z)Z
    .registers 6
    .param p1, "sendCallbacks"    # Z

    .prologue
    const/4 v2, 0x1

    .line 914
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 915
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->linkPropertiesUnchanged(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 916
    return v2

    .line 918
    :cond_c
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 919
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    if-eqz p1, :cond_15

    .line 920
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 922
    :cond_15
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-eq v0, v3, :cond_1a

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private handleProvisioningFailure()V
    .registers 4

    .prologue
    .line 976
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 977
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 986
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v2, :cond_e

    .line 987
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 990
    :cond_e
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 991
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v2, :cond_1a

    .line 992
    iget-object v2, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 975
    :cond_1a
    return-void
.end method

.method private static isProvisioned(Landroid/net/LinkProperties;)Z
    .registers 2
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 717
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private linkPropertiesUnchanged(Landroid/net/LinkProperties;)Z
    .registers 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 845
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 680
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method private recordMetric(I)V
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 708
    iget-wide v2, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_10

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "Start time undefined!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    sub-long v0, v2, v4

    .line 710
    .local v0, "duration":J
    iget-object v2, p0, Landroid/net/ip/IpManager;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v3, Landroid/net/metrics/IpManagerEvent;

    iget-object v4, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, p1, v0, v1}, Landroid/net/metrics/IpManagerEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v2, v3}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    .line 707
    return-void
.end method

.method private resetLinkProperties()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 697
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 698
    iput-object v1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 699
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 700
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    .line 701
    iput-object v1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 703
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 704
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method private setIPv4Address(Landroid/net/LinkAddress;)Z
    .registers 8
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 926
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 927
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 929
    :try_start_a
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_11} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 935
    return v5

    .line 931
    :catch_12
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "IPv4 configuration failed: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {p0, v2, v3}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    return v4
.end method

.method private setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .registers 4
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 825
    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    if-eqz v1, :cond_9

    .line 826
    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    invoke-virtual {v1, p1}, Landroid/net/apf/ApfFilter;->setLinkProperties(Landroid/net/LinkProperties;)V

    .line 828
    :cond_9
    iget-object v1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v1, :cond_12

    .line 829
    iget-object v1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    invoke-virtual {v1, p1}, Landroid/net/ip/IpReachabilityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 832
    :cond_12
    iget-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, p1}, Landroid/net/ip/IpManager;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 833
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 835
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_28

    .line 838
    iget-object v1, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 841
    :cond_28
    return-object v0
.end method

.method private startIPv4()Z
    .registers 3

    .prologue
    .line 1005
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-eqz v0, :cond_22

    .line 1006
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1007
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v1, v1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    .line 1018
    :goto_1e
    const/4 v0, 0x1

    return v0

    .line 1009
    :cond_20
    const/4 v0, 0x0

    return v0

    .line 1013
    :cond_22
    iget-object v0, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/net/dhcp/DhcpClient;->makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    .line 1014
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->registerForPreDhcpNotification()V

    .line 1015
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto :goto_1e
.end method

.method private startIPv6()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1024
    :try_start_2
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1025
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_11} :catch_12

    .line 1034
    return v6

    .line 1029
    :catch_12
    move-exception v0

    .line 1030
    .local v0, "ie":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "Unable to change interface settings: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-direct {p0, v2, v3}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    return v5

    .line 1026
    .end local v0    # "ie":Ljava/lang/IllegalStateException;
    :catch_1e
    move-exception v1

    .line 1027
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "Unable to change interface settings: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-direct {p0, v2, v3}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    return v5
.end method

.method private startIpReachabilityMonitor()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1039
    :try_start_3
    new-instance v3, Landroid/net/ip/IpReachabilityMonitor;

    .line 1040
    iget-object v4, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    .line 1041
    iget-object v5, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 1042
    new-instance v6, Landroid/net/ip/IpManager$3;

    invoke-direct {v6, p0}, Landroid/net/ip/IpManager$3;-><init>(Landroid/net/ip/IpManager;)V

    .line 1048
    iget-object v7, p0, Landroid/net/ip/IpManager;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    .line 1039
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/AvoidBadWifiTracker;)V

    iput-object v3, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_15} :catch_1a

    .line 1058
    :goto_15
    iget-object v3, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v3, :cond_28

    :goto_19
    return v1

    .line 1049
    :catch_1a
    move-exception v0

    .line 1054
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "IpReachabilityMonitor failure: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-direct {p0, v3, v4}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    iput-object v8, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    goto :goto_15

    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_28
    move v1, v2

    .line 1058
    goto :goto_19
.end method

.method private startStateMachineUpdaters()V
    .registers 5

    .prologue
    .line 525
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d

    .line 530
    :goto_7
    iget-object v1, p0, Landroid/net/ip/IpManager;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    invoke-virtual {v1}, Landroid/net/util/AvoidBadWifiTracker;->start()V

    .line 523
    return-void

    .line 526
    :catch_d
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t register NetlinkTracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private stopAllIP()V
    .registers 5

    .prologue
    .line 1068
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_f

    .line 1074
    :goto_7
    :try_start_7
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_2a

    .line 1061
    :goto_e
    return-void

    .line 1069
    :catch_f
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to disable IPv6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1075
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v0

    .line 1076
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to clear addresses "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method


# virtual methods
.method synthetic -android_net_ip_IpManager_lambda$2()V
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "OBSERVED AvoidBadWifi changed"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 0
    return-void
.end method

.method public completedPreDhcpAction()V
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    .line 575
    return-void
.end method

.method public confirmConfiguration()V
    .registers 2

    .prologue
    .line 572
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    .line 571
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 608
    if-eqz p3, :cond_15

    array-length v2, p3

    if-lez v2, :cond_15

    const-string/jumbo v2, "confirm"

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 610
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->confirmConfiguration()V

    .line 611
    return-void

    .line 614
    :cond_15
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 615
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " APF dump:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 618
    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    .line 619
    .local v0, "apfFilter":Landroid/net/apf/ApfFilter;
    if-eqz v0, :cond_9a

    .line 620
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfFilter;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 624
    :goto_40
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 626
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " StateMachine dump:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 629
    iget-object v2, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 630
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 632
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " connectivity packet log:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 635
    iget-object v2, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    invoke-virtual {v2}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 636
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 607
    return-void

    .line 622
    :cond_9a
    const-string/jumbo v2, "No apf support"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 652
    const-string/jumbo v3, "%s/%d %d %d %s [%s]"

    .line 651
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/Object;

    .line 653
    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    if-nez v2, :cond_64

    const/4 v2, -0x1

    :goto_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 654
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    iget-object v2, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 651
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "logLine":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Landroid/net/ip/IpManager;->getWhatToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "richerLogLine":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 662
    iget-object v2, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    invoke-virtual {v2}, Landroid/net/ip/IpManager$MessageHandlingLogger;->reset()V

    .line 663
    return-object v0

    .line 653
    .end local v0    # "logLine":Ljava/lang/String;
    .end local v1    # "richerLogLine":Ljava/lang/String;
    :cond_64
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    goto :goto_10
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "what"    # I

    .prologue
    .line 646
    sget-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UNKNOWN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onQuitting()V
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onQuit()V

    .line 534
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 671
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_e

    const/4 v0, 0x1

    .line 672
    .local v0, "shouldLog":Z
    :goto_6
    if-nez v0, :cond_d

    .line 673
    iget-object v1, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    invoke-virtual {v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->reset()V

    .line 675
    :cond_d
    return v0

    .line 671
    .end local v0    # "shouldLog":Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .registers 3
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 596
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    .line 595
    return-void
.end method

.method public setMulticastFilter(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 604
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    .line 603
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .registers 3
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    .prologue
    .line 586
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    .line 585
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->stop()V

    .line 541
    iget-object v0, p0, Landroid/net/ip/IpManager;->mAvoidBadWifiTracker:Landroid/net/util/AvoidBadWifiTracker;

    invoke-virtual {v0}, Landroid/net/util/AvoidBadWifiTracker;->shutdown()V

    .line 542
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->quit()V

    .line 539
    return-void
.end method

.method public startProvisioning()V
    .registers 2

    .prologue
    .line 564
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    .line 563
    return-void
.end method

.method public startProvisioning(Landroid/net/StaticIpConfiguration;)V
    .registers 3
    .param p1, "staticIpConfig"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 558
    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    .line 557
    return-void
.end method

.method public startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .registers 4
    .param p1, "req"    # Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .prologue
    .line 550
    invoke-direct {p0}, Landroid/net/ip/IpManager;->getNetworkInterface()V

    .line 552
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    .line 553
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    .line 549
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    .line 567
    return-void
.end method
