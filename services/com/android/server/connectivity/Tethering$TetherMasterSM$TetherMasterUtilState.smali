.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .registers 16
    .param p1, "tryCell"    # Z

    .prologue
    .line 1682
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1683
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v9, -0x1

    .line 1684
    .local v9, "upType":I
    const/4 v1, 0x0

    .line 1686
    .local v1, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1688
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1696
    :try_start_1a
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "netType$iterator":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1697
    .local v5, "netType":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1700
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1701
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_f9

    move-result v9

    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "netType":Ljava/lang/Integer;
    :cond_46
    monitor-exit v11

    .line 1715
    sparse-switch v9, :sswitch_data_136

    .line 1736
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()V

    .line 1740
    :cond_4d
    :goto_4d
    const/4 v7, 0x0

    .line 1741
    .local v7, "network":Landroid/net/Network;
    const/4 v10, -0x1

    if-eq v9, v10, :cond_da

    .line 1742
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v7

    .line 1743
    .local v7, "network":Landroid/net/Network;
    invoke-static {v7}, Lcom/android/server/NetPluginDelegate;->setUpstream(Landroid/net/Network;)V

    .line 1744
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 1745
    .local v4, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v4, :cond_ae

    .line 1749
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Finding IPv4 upstream interface on: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v10

    sget-object v11, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 1750
    invoke-static {v10, v11}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1752
    .local v3, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v3, :cond_11d

    .line 1753
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, "iface":Ljava/lang/String;
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    .end local v1    # "iface":Ljava/lang/String;
    .end local v3    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_ae
    :goto_ae
    if-eqz v1, :cond_da

    .line 1761
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v7

    .line 1762
    if-nez v7, :cond_d7

    .line 1763
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No Network for upstream type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_d7
    invoke-virtual {p0, v7, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 1768
    .end local v4    # "linkProperties":Landroid/net/LinkProperties;
    .end local v7    # "network":Landroid/net/Network;
    :cond_da
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 1769
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->lookup(Landroid/net/Network;)Landroid/net/NetworkState;

    move-result-object v8

    .line 1770
    .local v8, "ns":Landroid/net/NetworkState;
    if-eqz v8, :cond_127

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, v8}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result v10

    if-eqz v10, :cond_127

    .line 1774
    invoke-virtual {p0, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1681
    :cond_f8
    :goto_f8
    return-void

    .line 1688
    .end local v6    # "netType$iterator":Ljava/util/Iterator;
    .end local v8    # "ns":Landroid/net/NetworkState;
    .local v1, "iface":Ljava/lang/String;
    :catchall_f9
    move-exception v10

    monitor-exit v11

    throw v10

    .line 1719
    .restart local v6    # "netType$iterator":Ljava/util/Iterator;
    :sswitch_fc
    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    goto/16 :goto_4d

    .line 1722
    :sswitch_101
    if-eqz p1, :cond_111

    .line 1723
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    move-result v10

    .line 1722
    if-nez v10, :cond_4d

    .line 1726
    :cond_111
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/16 v12, 0x2710

    const v11, 0x50004

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    goto/16 :goto_4d

    .line 1756
    .restart local v3    # "ipv4Default":Landroid/net/RouteInfo;
    .restart local v4    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v7    # "network":Landroid/net/Network;
    :cond_11d
    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "No IPv4 upstream interface, giving up."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 1775
    .end local v1    # "iface":Ljava/lang/String;
    .end local v3    # "ipv4Default":Landroid/net/RouteInfo;
    .end local v4    # "linkProperties":Landroid/net/LinkProperties;
    .end local v7    # "network":Landroid/net/Network;
    .restart local v8    # "ns":Landroid/net/NetworkState;
    :cond_127
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get3(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_f8

    .line 1778
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    goto :goto_f8

    .line 1715
    :sswitch_data_136
    .sparse-switch
        -0x1 -> :sswitch_101
        0x4 -> :sswitch_fc
        0x5 -> :sswitch_fc
    .end sparse-switch
.end method

.method protected handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V
    .registers 3
    .param p1, "ns"    # Landroid/net/NetworkState;

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1813
    return-void
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .registers 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .prologue
    .line 1806
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2, p1}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;

    .line 1807
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sm$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1808
    .local v0, "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    const v2, 0x50070

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11

    .line 1804
    .end local v0    # "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_24
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1584
    const/4 v0, 0x0

    return v0
.end method

.method protected setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1783
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v0

    .line 1784
    .local v0, "dnsServers":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 1786
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1795
    :cond_14
    :goto_14
    :try_start_14
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_25

    .line 1782
    :goto_1f
    return-void

    .line 1788
    :cond_20
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1796
    :catch_25
    move-exception v2

    .line 1799
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Tethering"

    const-string/jumbo v4, "Setting DNS forwarders failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_1f
.end method

.method protected turnOffMasterTetherSettings()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1666
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_25

    .line 1672
    :try_start_c
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_32

    .line 1677
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1678
    const/4 v1, 0x1

    return v1

    .line 1667
    :catch_25
    move-exception v0

    .line 1668
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get10(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1669
    return v3

    .line 1673
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_32
    move-exception v0

    .line 1674
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get6(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1675
    return v3
.end method

.method protected turnOffUpstreamMobileConnection()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1636
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1637
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1638
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1640
    :cond_1f
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 1635
    return-void
.end method

.method protected turnOnMasterTetherSettings()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1645
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_22

    .line 1651
    :try_start_e
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_2f

    .line 1661
    :goto_21
    return v5

    .line 1646
    :catch_22
    move-exception v0

    .line 1647
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1648
    return v4

    .line 1652
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2f
    move-exception v0

    .line 1654
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_30
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 1655
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4e} :catch_4f

    goto :goto_21

    .line 1656
    :catch_4f
    move-exception v1

    .line 1657
    .local v1, "ee":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get9(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1658
    return v4
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .registers 8
    .param p1, "apnType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1588
    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    return v4

    .line 1590
    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v2

    if-eq p1, v2, :cond_11

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()V

    .line 1596
    :cond_11
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1598
    return v5

    .line 1601
    :cond_1a
    packed-switch p1, :pswitch_data_60

    .line 1608
    :pswitch_1d
    return v4

    .line 1605
    :pswitch_1e
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 1611
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1613
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/4 v2, 0x4

    if-ne p1, v2, :cond_59

    .line 1614
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1615
    const/4 v3, 0x2

    .line 1614
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1619
    :goto_39
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1623
    .local v1, "mobileUpstreamRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    new-instance v3, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {v3}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1630
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v2

    .line 1631
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v3

    .line 1630
    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V

    .line 1632
    return v5

    .line 1617
    .end local v1    # "mobileUpstreamRequest":Landroid/net/NetworkRequest;
    :cond_59
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_39

    .line 1601
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method
