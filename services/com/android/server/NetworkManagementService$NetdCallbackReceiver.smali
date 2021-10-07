.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 844
    const/16 v0, 0x265

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDaemonConnected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 822
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 827
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 828
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, v2}, Lcom/android/server/NetworkManagementService;->-set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 821
    :goto_20
    return-void

    .line 832
    :cond_21
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 36
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 849
    const-string/jumbo v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 850
    .local v15, "errorMessage":Ljava/lang/String;
    packed-switch p1, :pswitch_data_300

    .line 1034
    :goto_10
    :pswitch_10
    const/4 v5, 0x0

    return v5

    .line 859
    :pswitch_12
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3c

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Iface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 862
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "added"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 863
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 864
    const/4 v5, 0x1

    return v5

    .line 860
    :cond_3c
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 865
    :cond_42
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 866
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 867
    const/4 v5, 0x1

    return v5

    .line 868
    :cond_5a
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "changed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_82

    .line 869
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string/jumbo v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 870
    const/4 v5, 0x1

    return v5

    .line 871
    :cond_82
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "linkstate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_aa

    .line 872
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string/jumbo v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 873
    const/4 v5, 0x1

    return v5

    .line 875
    :cond_aa
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 882
    :pswitch_b0
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_dd

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "limit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 885
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "alert"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 886
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v5, 0x1

    return v5

    .line 883
    :cond_dd
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 889
    :cond_e3
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 896
    :pswitch_e9
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_143

    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "IfaceMessage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_143

    .line 899
    const-string/jumbo v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v5, 0x5

    aget-object v5, p3, v5

    if-eqz v5, :cond_149

    .line 901
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v7, p3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 905
    :goto_141
    const/4 v5, 0x1

    return v5

    .line 897
    :cond_143
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 903
    :cond_149
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x4

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    goto :goto_141

    .line 912
    :pswitch_154
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1a1

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "IfaceClass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    .line 915
    const-wide/16 v8, 0x0

    .line 916
    .local v8, "timestampNanos":J
    const/4 v10, -0x1

    .line 917
    .local v10, "processUid":I
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1a7

    .line 919
    const/4 v5, 0x4

    :try_start_170
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 920
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_183

    .line 921
    const/4 v5, 0x5

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_182
    .catch Ljava/lang/NumberFormatException; {:try_start_170 .. :try_end_182} :catch_2fd

    move-result v10

    .line 927
    :cond_183
    :goto_183
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 928
    .local v22, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 929
    if-eqz v22, :cond_1ac

    const/4 v7, 0x3

    .line 931
    :goto_19b
    const/4 v11, 0x0

    .line 928
    invoke-static/range {v5 .. v11}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 932
    const/4 v5, 0x1

    return v5

    .line 913
    .end local v8    # "timestampNanos":J
    .end local v10    # "processUid":I
    .end local v22    # "isActive":Z
    :cond_1a1
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 925
    .restart local v8    # "timestampNanos":J
    .restart local v10    # "processUid":I
    :cond_1a7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_183

    .line 930
    .restart local v22    # "isActive":Z
    :cond_1ac
    const/4 v7, 0x1

    goto :goto_19b

    .line 940
    .end local v8    # "timestampNanos":J
    .end local v10    # "processUid":I
    .end local v22    # "isActive":Z
    :pswitch_1ae
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x7

    if-lt v5, v6, :cond_1f4

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f4

    .line 944
    const/4 v5, 0x4

    aget-object v20, p3, v5

    .line 947
    .local v20, "iface":Ljava/lang/String;
    const/4 v5, 0x5

    :try_start_1c4
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 948
    .local v17, "flags":I
    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 949
    .local v27, "scope":I
    new-instance v4, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-direct {v4, v5, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1dd
    .catch Ljava/lang/NumberFormatException; {:try_start_1c4 .. :try_end_1dd} :catch_201
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c4 .. :try_end_1dd} :catch_1fa

    .line 956
    .local v4, "address":Landroid/net/LinkAddress;
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "updated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_208

    .line 957
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v20

    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 961
    :goto_1f2
    const/4 v5, 0x1

    return v5

    .line 941
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v17    # "flags":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v27    # "scope":I
    :cond_1f4
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 952
    .restart local v20    # "iface":Ljava/lang/String;
    :catch_1fa
    move-exception v13

    .line 953
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 950
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_201
    move-exception v14

    .line 951
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 959
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "address":Landroid/net/LinkAddress;
    .restart local v17    # "flags":I
    .restart local v27    # "scope":I
    :cond_208
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v20

    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap1(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_1f2

    .line 970
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v17    # "flags":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v27    # "scope":I
    :pswitch_212
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_24f

    .line 971
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "DnsInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 970
    if-eqz v5, :cond_24f

    .line 972
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "servers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 970
    if-eqz v5, :cond_24f

    .line 974
    const/4 v5, 0x4

    :try_start_231
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_236
    .catch Ljava/lang/NumberFormatException; {:try_start_231 .. :try_end_236} :catch_251

    move-result-wide v24

    .line 978
    .local v24, "lifetime":J
    const/4 v5, 0x5

    aget-object v5, p3, v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 979
    .local v28, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v28

    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->-wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 981
    .end local v24    # "lifetime":J
    .end local v28    # "servers":[Ljava/lang/String;
    :cond_24f
    const/4 v5, 0x1

    return v5

    .line 975
    :catch_251
    move-exception v14

    .line 976
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 988
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :pswitch_258
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Route"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26a

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ge v5, v6, :cond_270

    .line 989
    :cond_26a
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 992
    :cond_270
    const/16 v31, 0x0

    .line 993
    .local v31, "via":Ljava/lang/String;
    const/4 v12, 0x0

    .line 994
    .local v12, "dev":Ljava/lang/String;
    const/16 v30, 0x1

    .line 995
    .local v30, "valid":Z
    const/16 v19, 0x4

    .end local v12    # "dev":Ljava/lang/String;
    .end local v31    # "via":Ljava/lang/String;
    .local v19, "i":I
    :goto_277
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v5, v6, :cond_2af

    if-eqz v30, :cond_2af

    .line 996
    aget-object v5, p3, v19

    const-string/jumbo v6, "dev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_297

    .line 997
    if-nez v12, :cond_294

    .line 998
    add-int/lit8 v5, v19, 0x1

    aget-object v12, p3, v5

    .line 995
    :goto_291
    add-int/lit8 v19, v19, 0x2

    goto :goto_277

    .line 1000
    :cond_294
    const/16 v30, 0x0

    goto :goto_291

    .line 1002
    :cond_297
    aget-object v5, p3, v19

    const-string/jumbo v6, "via"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ac

    .line 1003
    if-nez v31, :cond_2a9

    .line 1004
    add-int/lit8 v5, v19, 0x1

    aget-object v31, p3, v5

    .local v31, "via":Ljava/lang/String;
    goto :goto_291

    .line 1006
    .end local v31    # "via":Ljava/lang/String;
    :cond_2a9
    const/16 v30, 0x0

    goto :goto_291

    .line 1009
    :cond_2ac
    const/16 v30, 0x0

    goto :goto_291

    .line 1012
    :cond_2af
    if-eqz v30, :cond_2d9

    .line 1015
    const/16 v18, 0x0

    .line 1016
    .local v18, "gateway":Ljava/net/InetAddress;
    if-eqz v31, :cond_2b9

    :try_start_2b5
    invoke-static/range {v31 .. v31}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v18

    .line 1017
    .end local v18    # "gateway":Ljava/net/InetAddress;
    :cond_2b9
    new-instance v26, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-direct {v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 1018
    .local v26, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Lcom/android/server/NetworkManagementService;->-wrap11(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_2d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b5 .. :try_end_2d6} :catch_2d8

    .line 1019
    const/4 v5, 0x1

    return v5

    .line 1020
    .end local v26    # "route":Landroid/net/RouteInfo;
    :catch_2d8
    move-exception v13

    .line 1022
    :cond_2d9
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1025
    .end local v19    # "i":I
    .end local v30    # "valid":Z
    :pswitch_2df
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1026
    .local v29, "uid":I
    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1028
    .local v16, "firstPacket":[B
    :try_start_2ed
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_2f8
    .catch Landroid/os/RemoteException; {:try_start_2ed .. :try_end_2f8} :catch_2fa

    goto/16 :goto_10

    .line 1029
    :catch_2fa
    move-exception v21

    .local v21, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_10

    .line 923
    .end local v16    # "firstPacket":[B
    .end local v21    # "ignored":Landroid/os/RemoteException;
    .end local v29    # "uid":I
    .restart local v8    # "timestampNanos":J
    .restart local v10    # "processUid":I
    :catch_2fd
    move-exception v23

    .local v23, "ne":Ljava/lang/NumberFormatException;
    goto/16 :goto_183

    .line 850
    :pswitch_data_300
    .packed-switch 0x258
        :pswitch_12
        :pswitch_b0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_154
        :pswitch_1ae
        :pswitch_212
        :pswitch_258
        :pswitch_2df
        :pswitch_e9
    .end packed-switch
.end method
