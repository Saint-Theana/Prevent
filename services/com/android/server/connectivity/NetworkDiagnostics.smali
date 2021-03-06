.class public Lcom/android/server/connectivity/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;,
        Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;,
        Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;,
        Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final TEST_DNS4:Ljava/net/InetAddress;

.field private static final TEST_DNS6:Ljava/net/InetAddress;


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mDeadlineTime:J

.field private final mDescription:Ljava/lang/String;

.field private final mDnsUdpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mExplicitSourceIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcmpChecks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterfaceIndex:Ljava/lang/Integer;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetwork:Landroid/net/Network;

.field private final mStartTime:J

.field private final mTimeoutMs:J


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetworkDiagnostics;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic -wrap0()J
    .registers 2

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string/jumbo v0, "8.8.8.8"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    .line 89
    const-string/jumbo v0, "2001:4860:4860::8888"

    .line 88
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V
    .registers 16
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "timeoutMs"    # J

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    .line 163
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 162
    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    .line 164
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    .line 169
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    .line 170
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    .line 171
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    .line 172
    iput-wide p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    .line 173
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    .line 174
    iget-wide v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mStartTime:J

    iget-wide v8, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mTimeoutMs:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    .line 181
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v6, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 182
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v6, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 187
    :cond_48
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v5

    if-nez v5, :cond_58

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 188
    :cond_58
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v6, Lcom/android/server/connectivity/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 191
    :cond_5f
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "route$iterator":Ljava/util/Iterator;
    :cond_69
    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 192
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 193
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .line 194
    .local v0, "gateway":Ljava/net/InetAddress;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 195
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 196
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V

    goto :goto_69

    .line 200
    .end local v0    # "gateway":Ljava/net/InetAddress;
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_8c
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nameserver$iterator":Ljava/util/Iterator;
    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 201
    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareIcmpMeasurement(Ljava/net/InetAddress;)V

    .line 202
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->prepareDnsMeasurement(Ljava/net/InetAddress;)V

    goto :goto_96

    .line 205
    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_a9
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 207
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->startMeasurements()V

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ifaces{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 210
    const-string/jumbo v6, " index{"

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 210
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mInterfaceIndex:Ljava/lang/Integer;

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 210
    const-string/jumbo v6, "}"

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 211
    const-string/jumbo v6, " network{"

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 211
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 211
    const-string/jumbo v6, "}"

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 212
    const-string/jumbo v6, " nethandle{"

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 212
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mNetwork:Landroid/net/Network;

    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    .line 209
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 212
    const-string/jumbo v6, "}"

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p0, "ifname"    # Ljava/lang/String;

    .prologue
    .line 217
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 218
    .local v1, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    return-object v2

    .line 219
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    :catch_d
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private static final now()J
    .registers 2

    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private prepareDnsMeasurement(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "target"    # Ljava/net/InetAddress;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 248
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 249
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 250
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1e
    return-void
.end method

.method private prepareExplicitSourceIcmpMeasurements(Ljava/net/InetAddress;)V
    .registers 9
    .param p1, "target"    # Ljava/net/InetAddress;

    .prologue
    .line 233
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 234
    .local v0, "l":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 235
    .local v3, "source":Ljava/net/InetAddress;
    instance-of v5, v3, Ljava/net/Inet6Address;

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 236
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .local v4, "srcTarget":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;"
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 238
    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 239
    .local v2, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v6, p0, v3, p1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 240
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 232
    .end local v0    # "l":Landroid/net/LinkAddress;
    .end local v2    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    .end local v3    # "source":Ljava/net/InetAddress;
    .end local v4    # "srcTarget":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;"
    :cond_48
    return-void
.end method

.method private prepareIcmpMeasurement(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "target"    # Ljava/net/InetAddress;

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 226
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V

    .line 227
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    .line 228
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1e
    return-void
.end method

.method private startMeasurements()V
    .registers 4

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "measurement$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 260
    .local v0, "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_a

    .line 262
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_1c
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 263
    .restart local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_26

    .line 265
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_38
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 266
    .restart local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_42

    .line 258
    .end local v0    # "measurement":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    :cond_54
    return-void
.end method

.method private totalMeasurementCount()I
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NetworkDiagnostics:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    .line 324
    .local v4, "unfinished":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_43

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WARNING: countdown wait incomplete: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 328
    const-string/jumbo v6, " unfinished measurements"

    .line 327
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 331
    :cond_43
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->getMeasurements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "m$iterator":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 335
    .local v0, "m":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->checkSucceeded()Z

    move-result v3

    if-eqz v3, :cond_83

    const-string/jumbo v2, "."

    .line 336
    .local v2, "prefix":Ljava/lang/String;
    :goto_63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e

    .line 335
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_83
    const-string/jumbo v2, "F"

    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_63

    .line 339
    .end local v0    # "m":Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_87
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 321
    return-void
.end method

.method public getMeasurements()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics;->totalMeasurementCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v3, "measurements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 284
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_13

    .line 285
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 289
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_31
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 288
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3b

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 294
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_5d
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67
    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 295
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_67

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 301
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_85
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mIcmpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8f
    :goto_8f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 302
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_8f

    .line 303
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 307
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_ad
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mExplicitSourceIcmpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 306
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b7
    :goto_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 308
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_b7

    .line 309
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 312
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/net/InetAddress;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_d9
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDnsUdpChecks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e3
    :goto_e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_101

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_e3

    .line 314
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 318
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;>;"
    :cond_101
    return-object v3
.end method

.method public waitForMeasurements()V
    .registers 7

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics;->mDeadlineTime:J

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->now()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 270
    :goto_e
    return-void

    .line 273
    :catch_f
    move-exception v0

    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_e
.end method
