.class Lcom/android/server/audio/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 3455
    iput-object p1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 21
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 3459
    sparse-switch p1, :sswitch_data_284

    .line 3456
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_3
    :goto_3
    return-void

    .line 3461
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v8

    monitor-enter v8

    .line 3462
    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get5(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_d2

    .line 3463
    :try_start_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-set0(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 3464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 3465
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "A2dp connection list not empty, purge it, size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3470
    :cond_60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get4(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 3471
    .local v15, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected: A2dp Service connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3472
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    .line 3471
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_8c
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_cb

    .line 3475
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 3476
    .local v6, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get4(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 3477
    .local v4, "state":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    .line 3479
    const/4 v1, 0x2

    if-ne v4, v1, :cond_c9

    const/4 v1, 0x1

    .line 3478
    :goto_ae
    const/16 v3, 0x80

    .line 3477
    invoke-static {v2, v3, v1}, Lcom/android/server/audio/AudioService;->-wrap3(Lcom/android/server/audio/AudioService;II)I

    move-result v7

    .line 3480
    .local v7, "delay":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    .line 3481
    const/16 v3, 0x66

    .line 3483
    const/4 v5, 0x0

    .line 3480
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap30(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_c6
    .catchall {:try_start_16 .. :try_end_c6} :catchall_cf

    .line 3473
    add-int/lit8 v16, v16, 0x1

    goto :goto_8c

    .line 3479
    .end local v7    # "delay":I
    :cond_c9
    const/4 v1, 0x0

    goto :goto_ae

    .end local v4    # "state":I
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_cb
    :try_start_cb
    monitor-exit v9
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_d2

    monitor-exit v8

    goto/16 :goto_3

    .line 3462
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v16    # "i":I
    :catchall_cf
    move-exception v1

    :try_start_d0
    monitor-exit v9

    throw v1
    :try_end_d2
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_d2

    .line 3461
    :catchall_d2
    move-exception v1

    monitor-exit v8

    throw v1

    .line 3492
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_d5
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 3493
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3494
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 3495
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 3496
    :try_start_ef
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 3497
    .restart local v4    # "state":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v9

    .line 3498
    const/16 v10, 0x65

    .line 3500
    const/4 v12, 0x0

    .line 3502
    const/4 v14, 0x0

    move v11, v4

    move-object v13, v6

    .line 3497
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->-wrap30(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_10a
    .catchall {:try_start_ef .. :try_end_10a} :catchall_10d

    monitor-exit v2

    goto/16 :goto_3

    .line 3495
    .end local v4    # "state":I
    :catchall_10d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3508
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3510
    :try_start_119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 3511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-set3(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 3512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 3513
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19c

    .line 3514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->-set4(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3519
    :goto_151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap13(Lcom/android/server/audio/AudioService;)V

    .line 3521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_16e

    .line 3522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1a8

    .line 3524
    :cond_16e
    :goto_16e
    const/16 v17, 0x0

    .line 3525
    .local v17, "status":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_185

    .line 3526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    packed-switch v1, :pswitch_data_292

    .line 3555
    .end local v17    # "status":Z
    :cond_185
    :goto_185
    :pswitch_185
    if-nez v17, :cond_199

    .line 3556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0x9

    .line 3557
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 3556
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->-wrap36(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_199
    .catchall {:try_start_119 .. :try_end_199} :catchall_1a5

    :cond_199
    monitor-exit v2

    goto/16 :goto_3

    .line 3516
    :cond_19c
    :try_start_19c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set4(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_1a4
    .catchall {:try_start_19c .. :try_end_1a4} :catchall_1a5

    goto :goto_151

    .line 3508
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_1a5
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3523
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1a8
    :try_start_1a8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_199

    goto :goto_16e

    .line 3528
    .restart local v17    # "status":Z
    :pswitch_1b4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;I)I

    .line 3529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1d4

    .line 3530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v17

    .local v17, "status":Z
    goto :goto_185

    .line 3531
    .local v17, "status":Z
    :cond_1d4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_1f3

    .line 3532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 3533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 3532
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    .local v17, "status":Z
    goto :goto_185

    .line 3534
    .local v17, "status":Z
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_185

    .line 3535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 3536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 3535
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    .local v17, "status":Z
    goto/16 :goto_185

    .line 3540
    .local v17, "status":Z
    :pswitch_214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22d

    .line 3541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v17

    .local v17, "status":Z
    goto/16 :goto_185

    .line 3542
    .local v17, "status":Z
    :cond_22d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_24d

    .line 3543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 3544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 3543
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    .local v17, "status":Z
    goto/16 :goto_185

    .line 3545
    .local v17, "status":Z
    :cond_24d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_185

    .line 3546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 3547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 3546
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    .local v17, "status":Z
    goto/16 :goto_185

    .line 3551
    .local v17, "status":Z
    :pswitch_26e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    .line 3552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 3551
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_281
    .catchall {:try_start_1a8 .. :try_end_281} :catchall_1a5

    move-result v17

    .local v17, "status":Z
    goto/16 :goto_185

    .line 3459
    :sswitch_data_284
    .sparse-switch
        0x1 -> :sswitch_110
        0x2 -> :sswitch_4
        0xb -> :sswitch_d5
    .end sparse-switch

    .line 3526
    :pswitch_data_292
    .packed-switch 0x1
        :pswitch_1b4
        :pswitch_185
        :pswitch_185
        :pswitch_26e
        :pswitch_214
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 3
    .param p1, "profile"    # I

    .prologue
    .line 3569
    sparse-switch p1, :sswitch_data_16

    .line 3567
    :goto_3
    return-void

    .line 3571
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    goto :goto_3

    .line 3575
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    goto :goto_3

    .line 3579
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    goto :goto_3

    .line 3569
    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_4
        0xb -> :sswitch_a
    .end sparse-switch
.end method
