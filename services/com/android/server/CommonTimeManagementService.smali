.class Lcom/android/server/CommonTimeManagementService;
.super Landroid/os/Binder;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CommonTimeManagementService$1;,
        Lcom/android/server/CommonTimeManagementService$2;,
        Lcom/android/server/CommonTimeManagementService$3;,
        Lcom/android/server/CommonTimeManagementService$4;,
        Lcom/android/server/CommonTimeManagementService$5;,
        Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    }
.end annotation


# static fields
.field private static final ALLOW_WIFI:Z

.field private static final ALLOW_WIFI_PROP:Ljava/lang/String; = "ro.common_time.allow_wifi"

.field private static final AUTO_DISABLE:Z

.field private static final AUTO_DISABLE_PROP:Ljava/lang/String; = "ro.common_time.auto_disable"

.field private static final BASE_SERVER_PRIO:B

.field private static final IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

.field private static final NATIVE_SERVICE_RECONNECT_TIMEOUT:I = 0x1388

.field private static final NO_INTERFACE_TIMEOUT:I

.field private static final NO_INTERFACE_TIMEOUT_PROP:Ljava/lang/String; = "ro.common_time.no_iface_timeout"

.field private static final SERVER_PRIO_PROP:Ljava/lang/String; = "ro.common_time.server_prio"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCTConfig:Landroid/os/CommonTimeConfig;

.field private mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurIface:Ljava/lang/String;

.field private mDetectedAtStartup:Z

.field private mEffectivePrio:B

.field private mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

.field private mLock:Ljava/lang/Object;

.field private mNetMgr:Landroid/os/INetworkManagementService;

.field private mNoInterfaceHandler:Landroid/os/Handler;

.field private mNoInterfaceRunnable:Ljava/lang/Runnable;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mReconnectRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->handleNoInterfaceTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v5, 0x1e

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    const-class v1, Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "ro.common_time.auto_disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_59

    move v1, v2

    :goto_17
    sput-boolean v1, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    .line 66
    const-string/jumbo v1, "ro.common_time.allow_wifi"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5b

    move v1, v2

    :goto_23
    sput-boolean v1, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    .line 67
    const-string/jumbo v1, "ro.common_time.server_prio"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "tmp":I
    const-string/jumbo v1, "ro.common_time.no_iface_timeout"

    const v4, 0xea60

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    .line 70
    if-ge v0, v2, :cond_5d

    .line 71
    sput-byte v2, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    .line 78
    :goto_3c
    sget-boolean v1, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    if-eqz v1, :cond_66

    .line 79
    new-array v1, v6, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    .line 80
    new-instance v4, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string/jumbo v5, "wlan"

    invoke-direct {v4, v5, v2}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v4, v1, v3

    .line 81
    new-instance v3, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string/jumbo v4, "eth"

    invoke-direct {v3, v4, v6}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v3, v1, v2

    .line 79
    sput-object v1, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    .line 47
    :goto_58
    return-void

    .end local v0    # "tmp":I
    :cond_59
    move v1, v3

    .line 65
    goto :goto_17

    :cond_5b
    move v1, v3

    .line 66
    goto :goto_23

    .line 73
    .restart local v0    # "tmp":I
    :cond_5d
    if-le v0, v5, :cond_62

    .line 74
    sput-byte v5, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_3c

    .line 76
    :cond_62
    int-to-byte v1, v0

    sput-byte v1, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_3c

    .line 84
    :cond_66
    new-array v1, v2, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    .line 85
    new-instance v2, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string/jumbo v4, "eth"

    invoke-direct {v2, v4, v6}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v2, v1, v3

    .line 84
    sput-object v1, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    goto :goto_58
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    .line 101
    sget-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    iput-byte v0, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    .line 106
    new-instance v0, Lcom/android/server/CommonTimeManagementService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$1;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    .line 121
    new-instance v0, Lcom/android/server/CommonTimeManagementService$2;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$2;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Lcom/android/server/CommonTimeManagementService$3;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$3;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    .line 128
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 135
    new-instance v0, Lcom/android/server/CommonTimeManagementService$4;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$4;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/android/server/CommonTimeManagementService$5;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$5;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    .line 147
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method

.method private cleanupTimeConfig()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_1a

    .line 227
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->release()V

    .line 228
    iput-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    .line 223
    :cond_1a
    return-void
.end method

.method private connectToTimeConfig()V
    .registers 7

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    .line 238
    :try_start_3
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_40

    .line 239
    :try_start_6
    new-instance v1, Landroid/os/CommonTimeConfig;

    invoke-direct {v1}, Landroid/os/CommonTimeConfig;-><init>()V

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    .line 240
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V

    .line 241
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v1}, Landroid/os/CommonTimeConfig;->getInterfaceBinding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    sget-boolean v3, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setAutoDisable(Z)I

    .line 243
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-byte v3, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_3d

    :try_start_2a
    monitor-exit v2

    .line 246
    sget v1, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v1, :cond_39

    .line 247
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    :cond_39
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    .line 232
    :goto_3c
    return-void

    .line 238
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_40} :catch_40

    .line 251
    :catch_40
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    goto :goto_3c
.end method

.method private handleNoInterfaceTimeout()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_18

    .line 266
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Timeout waiting for interface to come up.  Forcing networkless master mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->forceNetworklessMasterMode()I

    move-result v0

    const/4 v1, -0x7

    if-ne v1, v0, :cond_18

    .line 269
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    .line 264
    :cond_18
    return-void
.end method

.method private reevaluateServiceState()V
    .registers 20

    .prologue
    .line 274
    const/4 v3, 0x0

    .line 275
    .local v3, "bindIface":Ljava/lang/String;
    const/4 v2, -0x1

    .line 300
    .local v2, "bestScore":B
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    invoke-interface {v13}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, "ifaceList":[Ljava/lang/String;
    if-eqz v8, :cond_4e

    .line 302
    const/4 v13, 0x0

    array-length v15, v8

    move v14, v13

    .end local v2    # "bestScore":B
    .end local v3    # "bindIface":Ljava/lang/String;
    :goto_f
    if-ge v14, v15, :cond_4e

    aget-object v7, v8, v14

    .line 304
    .local v7, "iface":Ljava/lang/String;
    const/4 v12, -0x1

    .line 305
    .local v12, "thisScore":B
    sget-object v16, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const/4 v13, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :goto_1c
    move/from16 v0, v17

    if-ge v13, v0, :cond_30

    aget-object v10, v16, v13

    .line 306
    .local v10, "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    iget-object v0, v10, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mPrefix:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_36

    .line 307
    iget-byte v12, v10, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mScore:B

    .line 312
    .end local v10    # "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    .end local v12    # "thisScore":B
    :cond_30
    if-gt v12, v2, :cond_39

    .line 302
    :cond_32
    :goto_32
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_f

    .line 305
    .restart local v10    # "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    .restart local v12    # "thisScore":B
    :cond_36
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    .line 315
    .end local v10    # "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    .end local v12    # "thisScore":B
    :cond_39
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    invoke-interface {v13, v7}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 316
    .local v4, "config":Landroid/net/InterfaceConfiguration;
    if-eqz v4, :cond_32

    .line 319
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->isActive()Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_46} :catch_4c

    move-result v13

    if-eqz v13, :cond_32

    .line 320
    move-object v3, v7

    .line 321
    .local v3, "bindIface":Ljava/lang/String;
    move v2, v12

    .local v2, "bestScore":B
    goto :goto_32

    .line 326
    .end local v2    # "bestScore":B
    .end local v3    # "bindIface":Ljava/lang/String;
    .end local v4    # "config":Landroid/net/InterfaceConfiguration;
    .end local v7    # "iface":Ljava/lang/String;
    .end local v8    # "ifaceList":[Ljava/lang/String;
    :catch_4c
    move-exception v6

    .line 331
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 334
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4e
    const/4 v5, 0x1

    .line 335
    .local v5, "doRebind":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 336
    if-eqz v3, :cond_ae

    :try_start_56
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v13, :cond_ae

    .line 337
    sget-object v13, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Binding common time service to %s."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_56 .. :try_end_78} :catchall_c4

    :goto_78
    monitor-exit v14

    .line 353
    if-eqz v5, :cond_ad

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v13, :cond_ad

    .line 354
    if-lez v2, :cond_103

    .line 355
    sget-byte v13, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    mul-int/2addr v13, v2

    int-to-byte v9, v13

    .line 357
    .local v9, "newPrio":B
    :goto_87
    move-object/from16 v0, p0

    iget-byte v13, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    if-eq v9, v13, :cond_9c

    .line 358
    move-object/from16 v0, p0

    iput-byte v9, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    move-object/from16 v0, p0

    iget-byte v14, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v13, v14}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    .line 362
    :cond_9c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/os/CommonTimeConfig;->setNetworkBinding(Ljava/lang/String;)I

    move-result v11

    .line 363
    .local v11, "res":I
    if-eqz v11, :cond_106

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    .line 273
    .end local v9    # "newPrio":B
    .end local v11    # "res":I
    :cond_ad
    :goto_ad
    return-void

    .line 340
    :cond_ae
    if-nez v3, :cond_c7

    :try_start_b0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-eqz v13, :cond_c7

    .line 341
    sget-object v13, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Unbinding common time service."

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_c3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_c4

    goto :goto_78

    .line 335
    :catchall_c4
    move-exception v13

    monitor-exit v14

    throw v13

    .line 344
    :cond_c7
    if-eqz v3, :cond_d9

    :try_start_c9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-eqz v13, :cond_d9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_db

    .line 349
    :cond_d9
    const/4 v5, 0x0

    goto :goto_78

    .line 345
    :cond_db
    sget-object v13, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Switching common time service binding from %s to %s."

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v17, v16, v18

    const/16 v17, 0x1

    aput-object v3, v16, v17

    .line 345
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_101
    .catchall {:try_start_c9 .. :try_end_101} :catchall_c4

    goto/16 :goto_78

    .line 356
    :cond_103
    sget-byte v9, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_87

    .line 366
    .restart local v9    # "newPrio":B
    .restart local v11    # "res":I
    :cond_106
    sget v13, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v13, :cond_ad

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v13, :cond_ad

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v15, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ad
.end method

.method private scheduleTimeConfigReconnect()V
    .registers 6

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    .line 258
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Native service died, will reconnect in %d mSec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 259
    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 258
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    .line 261
    const-wide/16 v2, 0x1388

    .line 260
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 183
    const-string/jumbo v0, "Permission Denial: can\'t dump CommonTimeManagement service from from pid=%d, uid=%d"

    .line 182
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 182
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return-void

    .line 188
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    if-nez v0, :cond_3a

    .line 189
    const-string/jumbo v0, "Native Common Time service was not detected at startup.  Service is unavailable"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    :cond_3a
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_3d
    const-string/jumbo v0, "Current Common Time Management Service Config:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v2, "  Native service     : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-nez v0, :cond_cd

    const-string/jumbo v0, "reconnecting"

    :goto_50
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 196
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v2, "  Bound interface    : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v0, :cond_d1

    const-string/jumbo v0, "unbound"

    :goto_67
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 199
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v2, "  Allow WiFi         : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    if-eqz v0, :cond_d4

    const-string/jumbo v0, "yes"

    :goto_7e
    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v2, "  Allow Auto Disable : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    if-eqz v0, :cond_d8

    const-string/jumbo v0, "yes"

    :goto_95
    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v0, "  Server Priority    : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-byte v3, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v0, "  No iface timeout   : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_3d .. :try_end_cb} :catchall_dc

    monitor-exit v1

    .line 179
    return-void

    .line 198
    :cond_cd
    :try_start_cd
    const-string/jumbo v0, "alive"

    goto :goto_50

    .line 200
    :cond_d1
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_67

    .line 201
    :cond_d4
    const-string/jumbo v0, "no"

    goto :goto_7e

    .line 202
    :cond_d8
    const-string/jumbo v0, "no"
    :try_end_db
    .catchall {:try_start_cd .. :try_end_db} :catchall_dc

    goto :goto_95

    .line 194
    :catchall_dc
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method systemRunning()V
    .registers 6

    .prologue
    .line 151
    const-string/jumbo v3, "common_time.config"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_12

    .line 152
    sget-object v3, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No common time service detected on this platform.  Common time services will be unavailable."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 157
    :cond_12
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    .line 159
    const-string/jumbo v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 160
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    .line 165
    :try_start_22
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_3f

    .line 170
    :goto_29
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    .line 150
    return-void

    .line 167
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catch_3f
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_29
.end method
