.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2165
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2165
    return-void
.end method

.method private getCaptivePortalMode()I
    .registers 4

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2346
    const-string/jumbo v1, "captive_portal_mode"

    .line 2347
    const/4 v2, 0x1

    .line 2345
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2170
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2a

    .line 2172
    :pswitch_5
    const/4 v1, 0x0

    return v1

    .line 2174
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 2187
    :cond_c
    :goto_c
    const/4 v1, 0x1

    return v1

    .line 2178
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2179
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_c

    .line 2183
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_24
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_c

    .line 2170
    :pswitch_data_2a
    .packed-switch 0x11000
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_e
        :pswitch_24
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2351
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 2353
    const/4 v1, 0x0

    return v1

    .line 2355
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2356
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2357
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2362
    :cond_1c
    const/4 v1, 0x1

    return v1

    .line 2351
    :pswitch_data_1e
    .packed-switch 0x3e9
        :pswitch_7
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2191
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2192
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_11

    .line 2197
    return-void

    .line 2200
    :cond_11
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_11a

    .line 2190
    :cond_16
    :goto_16
    :pswitch_16
    return-void

    .line 2202
    :pswitch_17
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 2203
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-nez v6, :cond_33

    .line 2204
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    .line 2203
    if-nez v6, :cond_33

    .line 2205
    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    .line 2203
    if-eqz v6, :cond_55

    .line 2206
    :cond_33
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BUG: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " has CS-managed capability."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_55
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    invoke-static {v6, v7, v2, v3}, Lcom/android/server/ConnectivityService;->-wrap34(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_16

    .line 2217
    .end local v3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :pswitch_5f
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 2218
    .local v4, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v2

    .line 2219
    :try_start_62
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/LinkProperties;

    iput-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_73

    monitor-exit v2

    .line 2221
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v2, v4}, Lcom/android/server/ConnectivityService;->-wrap36(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    goto :goto_16

    .line 2218
    :catchall_73
    move-exception v6

    monitor-exit v2

    throw v6

    .line 2225
    .end local v4    # "oldLp":Landroid/net/LinkProperties;
    :pswitch_76
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2226
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v2, v1}, Lcom/android/server/ConnectivityService;->-wrap37(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto :goto_16

    .line 2230
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_80
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 2231
    .local v5, "score":Ljava/lang/Integer;
    if-eqz v5, :cond_16

    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v2, v7}, Lcom/android/server/ConnectivityService;->-wrap38(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_16

    .line 2236
    .end local v5    # "score":Ljava/lang/Integer;
    :pswitch_90
    :try_start_90
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v6, Landroid/net/Network;->netId:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/UidRange;

    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a1} :catch_a3

    goto/16 :goto_16

    .line 2237
    :catch_a3
    move-exception v0

    .line 2239
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in addVpnUidRanges: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2245
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_bd
    :try_start_bd
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v6, Landroid/net/Network;->netId:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/UidRange;

    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ce} :catch_d0

    goto/16 :goto_16

    .line 2246
    :catch_d0
    move-exception v0

    .line 2248
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in removeVpnUidRanges: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2253
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_ea
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v6, :cond_f4

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v6, :cond_107

    .line 2256
    :cond_f4
    :goto_f4
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2257
    iget-object v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v7, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto/16 :goto_16

    .line 2254
    :cond_107
    const-string/jumbo v6, "ERROR: already-connected network explicitly selected."

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    goto :goto_f4

    .line 2261
    :pswitch_10e
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto/16 :goto_16

    .line 2200
    nop

    :pswitch_data_11a
    .packed-switch 0x81001
        :pswitch_76
        :pswitch_17
        :pswitch_5f
        :pswitch_80
        :pswitch_90
        :pswitch_bd
        :pswitch_16
        :pswitch_ea
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_10e
    .end packed-switch
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2268
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_166

    .line 2270
    return v6

    .line 2273
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 2274
    :try_start_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_9e

    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v4

    .line 2276
    if-eqz v3, :cond_9d

    .line 2278
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_a1

    const/4 v9, 0x1

    .line 2279
    .local v9, "valid":Z
    :goto_27
    iget-boolean v11, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2280
    .local v11, "wasValidated":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " validation "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v9, :cond_a3

    const-string/jumbo v0, "passed"

    :goto_42
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2281
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_a7

    const-string/jumbo v0, ""

    .line 2280
    :goto_4d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    .line 2282
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v9, v0, :cond_79

    .line 2283
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    .line 2284
    .local v7, "oldScore":I
    iput-boolean v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2285
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v0, v9

    iput-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 2286
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v7, v3, v4}, Lcom/android/server/ConnectivityService;->-wrap34(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2288
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    if-eq v7, v0, :cond_79

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap32(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2290
    .end local v7    # "oldScore":I
    :cond_79
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap35(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2292
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2293
    .local v8, "redirectUrlBundle":Landroid/os/Bundle;
    sget-object v4, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2296
    if-eqz v9, :cond_c0

    move v0, v12

    .line 2295
    :goto_91
    const v2, 0x81007

    .line 2294
    invoke-virtual {v4, v2, v0, v6, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2298
    if-eqz v11, :cond_9d

    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_c2

    .line 2341
    .end local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v9    # "valid":Z
    .end local v11    # "wasValidated":Z
    :cond_9d
    :goto_9d
    return v12

    .line 2273
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_9e
    move-exception v0

    monitor-exit v4

    throw v0

    .line 2278
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_a1
    const/4 v9, 0x0

    .restart local v9    # "valid":Z
    goto :goto_27

    .line 2280
    .restart local v11    # "wasValidated":Z
    :cond_a3
    const-string/jumbo v0, "failed"

    goto :goto_42

    .line 2281
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " with redirect to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    .restart local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    :cond_c0
    move v0, v2

    .line 2296
    goto :goto_91

    .line 2299
    :cond_c2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_9d

    .line 2305
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v9    # "valid":Z
    .end local v11    # "wasValidated":Z
    :sswitch_c8
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2306
    .local v1, "netId":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_128

    const/4 v10, 0x1

    .line 2308
    .local v10, "visible":Z
    :goto_cf
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    .line 2309
    :try_start_d6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_e2
    .catchall {:try_start_d6 .. :try_end_e2} :catchall_12a

    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v5

    .line 2312
    if-eqz v3, :cond_134

    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v10, v0, :cond_134

    .line 2313
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    .line 2314
    .restart local v7    # "oldScore":I
    iput-boolean v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 2315
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v0, v10

    iput-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 2316
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v0, :cond_12d

    .line 2317
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->getCaptivePortalMode()I

    move-result v0

    if-ne v2, v0, :cond_12d

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Avoiding captive portal network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    .line 2319
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2320
    const v2, 0x8100f

    .line 2319
    invoke-virtual {v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2321
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_9d

    .line 2306
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v7    # "oldScore":I
    .end local v10    # "visible":Z
    :cond_128
    const/4 v10, 0x0

    .restart local v10    # "visible":Z
    goto :goto_cf

    .line 2308
    :catchall_12a
    move-exception v0

    monitor-exit v5

    throw v0

    .line 2324
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v7    # "oldScore":I
    :cond_12d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v7, v3, v2}, Lcom/android/server/ConnectivityService;->-wrap34(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2326
    .end local v7    # "oldScore":I
    :cond_134
    if-nez v10, :cond_141

    .line 2327
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    goto/16 :goto_9d

    .line 2329
    :cond_141
    if-nez v3, :cond_14b

    .line 2330
    const-string/jumbo v0, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 2333
    :cond_14b
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    if-nez v0, :cond_9d

    .line 2334
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 2335
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/PendingIntent;

    iget-object v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2334
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_9d

    .line 2268
    :sswitch_data_166
    .sparse-switch
        0x82002 -> :sswitch_a
        0x8200a -> :sswitch_c8
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2367
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2368
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2366
    :cond_c
    :goto_c
    return-void

    .line 2369
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2370
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    goto :goto_c
.end method
