.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 18
    .param p1, "this$0"    # Lcom/android/server/SystemServer;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$networkScoreF"    # Lcom/android/server/NetworkScoreService;
    .param p4, "val$networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p5, "val$networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p6, "val$networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p7, "val$connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "val$locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "val$countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "val$networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "val$commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p12, "val$atlasF"    # Lcom/android/server/AssetAtlasService;
    .param p13, "val$inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p14, "val$telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p15, "val$mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p16, "val$mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/32 v4, 0x80000

    .line 1513
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "Making services ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    .line 1515
    const/16 v2, 0x226

    .line 1514
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1516
    const-string/jumbo v1, "PhaseActivityManagerReady"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1518
    const-string/jumbo v1, "StartObservingNativeCrashes"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1520
    :try_start_23
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_133

    .line 1524
    :goto_2c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1526
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get2(Lcom/android/server/SystemServer;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 1527
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "WebViewFactory preparation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string/jumbo v1, "WebViewFactoryPreparation"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1529
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get4(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 1530
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1533
    :cond_52
    const-string/jumbo v1, "StartSystemUI"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1535
    :try_start_58
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5d} :catch_13e

    .line 1539
    :goto_5d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1540
    const-string/jumbo v1, "MakeNetworkScoreReady"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1542
    :try_start_66
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6f} :catch_149

    .line 1546
    :cond_6f
    :goto_6f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1547
    const-string/jumbo v1, "MakeNetworkManagementServiceReady"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1549
    :try_start_78
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_81} :catch_154

    .line 1553
    :cond_81
    :goto_81
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1554
    const-string/jumbo v1, "MakeNetworkStatsServiceReady"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1556
    :try_start_8a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_93} :catch_15f

    .line 1560
    :cond_93
    :goto_93
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1561
    const-string/jumbo v1, "MakeNetworkPolicyServiceReady"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1563
    :try_start_9c
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_a5} :catch_16a

    .line 1567
    :cond_a5
    :goto_a5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1568
    const-string/jumbo v1, "MakeConnectivityServiceReady"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1570
    :try_start_ae
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b7} :catch_175

    .line 1574
    :cond_b7
    :goto_b7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1576
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1580
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1581
    const-string/jumbo v1, "PhaseThirdPartyAppsCanStart"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1582
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    .line 1583
    const/16 v2, 0x258

    .line 1582
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1586
    :try_start_d5
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_de

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_de} :catch_180

    .line 1591
    :cond_de
    :goto_de
    :try_start_de
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_e7} :catch_18b

    .line 1596
    :cond_e7
    :goto_e7
    :try_start_e7
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_f0

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_f0} :catch_196

    .line 1601
    :cond_f0
    :goto_f0
    :try_start_f0
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v1, :cond_f9

    .line 1602
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f9} :catch_1a1

    .line 1608
    :cond_f9
    :goto_f9
    :try_start_f9
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v1, :cond_102

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_102} :catch_1ac

    .line 1614
    :cond_102
    :goto_102
    :try_start_102
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_10b} :catch_1b7

    .line 1619
    :cond_10b
    :goto_10b
    :try_start_10b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_114

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_114} :catch_1c2

    .line 1624
    :cond_114
    :goto_114
    :try_start_114
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v1, :cond_11d

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_11d} :catch_1cd

    .line 1630
    :cond_11d
    :goto_11d
    :try_start_11d
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v1}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_126} :catch_1d8

    .line 1636
    :cond_126
    :goto_126
    :try_start_126
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v1, :cond_12f

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_12f} :catch_1e3

    .line 1640
    :cond_12f
    :goto_12f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1512
    return-void

    .line 1521
    :catch_133
    move-exception v0

    .line 1522
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "observing native crashes"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1536
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_13e
    move-exception v0

    .line 1537
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "starting System UI"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d

    .line 1543
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_149
    move-exception v0

    .line 1544
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Network Score Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f

    .line 1550
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_154
    move-exception v0

    .line 1551
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Network Managment Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_81

    .line 1557
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_15f
    move-exception v0

    .line 1558
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Network Stats Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_93

    .line 1564
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_16a
    move-exception v0

    .line 1565
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Network Policy Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a5

    .line 1571
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_175
    move-exception v0

    .line 1572
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Connectivity Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b7

    .line 1587
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_180
    move-exception v0

    .line 1588
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying Location Service running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_de

    .line 1592
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_18b
    move-exception v0

    .line 1593
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying CountryDetectorService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e7

    .line 1597
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_196
    move-exception v0

    .line 1598
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying NetworkTimeService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f0

    .line 1604
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1a1
    move-exception v0

    .line 1605
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying CommonTimeManagementService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f9

    .line 1609
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1ac
    move-exception v0

    .line 1610
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying AssetAtlasService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_102

    .line 1615
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1b7
    move-exception v0

    .line 1616
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying InputManagerService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10b

    .line 1620
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1c2
    move-exception v0

    .line 1621
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying TelephonyRegistry running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_114

    .line 1625
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1cd
    move-exception v0

    .line 1626
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying MediaRouterService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11d

    .line 1631
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1d8
    move-exception v0

    .line 1632
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying MmsService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_126

    .line 1637
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1e3
    move-exception v0

    .line 1638
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying NetworkScoreService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12f
.end method
