.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2937
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2938
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2937
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2943
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_120

    .line 2942
    :cond_7
    :goto_7
    return-void

    .line 2946
    :sswitch_8
    const/4 v0, 0x0

    .line 2947
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v6

    .line 2948
    :try_start_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)I

    move-result v7

    if-ne v5, v7, :cond_31

    .line 2949
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    .line 2948
    if-eqz v5, :cond_31

    .line 2950
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2951
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_33

    move-result-object v0

    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_31
    monitor-exit v6

    goto :goto_7

    .line 2947
    .restart local v0    # "causedBy":Ljava/lang/String;
    :catchall_33
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2968
    .end local v0    # "causedBy":Ljava/lang/String;
    :sswitch_36
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;)V

    goto :goto_7

    .line 2972
    :sswitch_3c
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/ProxyInfo;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_7

    .line 2976
    :sswitch_46
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto :goto_7

    .line 2980
    :sswitch_50
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Messenger;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto :goto_7

    .line 2984
    :sswitch_5a
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_7

    .line 2989
    :sswitch_64
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_7

    .line 2994
    :sswitch_6e
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, p1}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_7

    .line 2998
    :sswitch_74
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/PendingIntent;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto :goto_7

    .line 3002
    :sswitch_80
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkRequest;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_7

    .line 3006
    :sswitch_8d
    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_a1

    move v6, v7

    :goto_98
    iget v10, p1, Landroid/os/Message;->arg2:I

    if-eqz v10, :cond_a3

    :goto_9c
    invoke-static {v9, v5, v6, v7}, Lcom/android/server/ConnectivityService;->-wrap20(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_7

    :cond_a1
    move v6, v8

    goto :goto_98

    :cond_a3
    move v7, v8

    goto :goto_9c

    .line 3010
    :sswitch_a5
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_7

    .line 3014
    :sswitch_b0
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_7

    .line 3018
    :sswitch_bb
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    .line 3022
    :sswitch_c2
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkRequest;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap18(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_7

    .line 3025
    :sswitch_cf
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkRequest;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Lcom/android/server/ConnectivityService;->-wrap19(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_7

    .line 3029
    :sswitch_dc
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 3034
    :sswitch_e7
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->-wrap2(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 3035
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3036
    .local v4, "slot":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 3037
    .local v3, "reason":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_7

    .line 3041
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "reason":I
    .end local v4    # "slot":I
    :sswitch_100
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nai$iterator":Ljava/util/Iterator;
    :goto_10e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3042
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-boolean v7, v5, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_10e

    .line 2943
    nop

    :sswitch_data_120
    .sparse-switch
        0x8 -> :sswitch_8
        0x9 -> :sswitch_36
        0x10 -> :sswitch_3c
        0x11 -> :sswitch_46
        0x12 -> :sswitch_5a
        0x13 -> :sswitch_64
        0x15 -> :sswitch_64
        0x16 -> :sswitch_80
        0x17 -> :sswitch_50
        0x18 -> :sswitch_8
        0x19 -> :sswitch_100
        0x1a -> :sswitch_6e
        0x1b -> :sswitch_74
        0x1c -> :sswitch_8d
        0x1d -> :sswitch_b0
        0x1e -> :sswitch_bb
        0x1f -> :sswitch_6e
        0x20 -> :sswitch_c2
        0x21 -> :sswitch_cf
        0x23 -> :sswitch_a5
        0x8100b -> :sswitch_dc
        0x8100c -> :sswitch_e7
    .end sparse-switch
.end method
