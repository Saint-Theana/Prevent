.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 607
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 606
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 612
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_27a

    .line 611
    :cond_9
    :goto_9
    return-void

    .line 614
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap8(Lcom/android/server/MountService;)V

    goto :goto_9

    .line 618
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap7(Lcom/android/server/MountService;)V

    goto :goto_9

    .line 622
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap1(Lcom/android/server/MountService;)Z

    move-result v18

    if-nez v18, :cond_51

    .line 623
    const-string/jumbo v18, "MountService"

    const-string/jumbo v19, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 625
    const-wide/16 v20, 0x3e8

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    .line 629
    :cond_51
    const-string/jumbo v18, "MountService"

    const-string/jumbo v19, "Running fstrim idle maintenance"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :try_start_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->-set2(Lcom/android/server/MountService;J)J

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get6(Lcom/android/server/MountService;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_86} :catch_be

    .line 639
    :goto_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap3(Lcom/android/server/MountService;)Z

    move-result v14

    .line 643
    .local v14, "shouldBenchmark":Z
    :try_start_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v19

    const-string/jumbo v20, "fstrim"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v14, :cond_c9

    const-string/jumbo v18, "dotrimbench"

    :goto_aa
    const/16 v22, 0x0

    aput-object v18, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_b1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_90 .. :try_end_b1} :catch_cd

    .line 650
    :goto_b1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 651
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_9

    .line 652
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_9

    .line 635
    .end local v5    # "callback":Ljava/lang/Runnable;
    .end local v14    # "shouldBenchmark":Z
    :catch_be
    move-exception v6

    .line 636
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "MountService"

    const-string/jumbo v19, "Unable to record last fstrim!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 643
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v14    # "shouldBenchmark":Z
    :cond_c9
    :try_start_c9
    const-string/jumbo v18, "dotrim"
    :try_end_cc
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_aa

    .line 644
    :catch_cd
    move-exception v11

    .line 645
    .local v11, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v18, "MountService"

    const-string/jumbo v19, "Failed to run fstrim!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 657
    .end local v11    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v14    # "shouldBenchmark":Z
    :pswitch_d8
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/storage/IMountShutdownObserver;

    .line 658
    .local v12, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/4 v15, 0x0

    .line 660
    .local v15, "success":Z
    :try_start_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v18

    const-string/jumbo v19, "volume"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "shutdown"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_102
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_df .. :try_end_102} :catch_277

    move-result v15

    .line 663
    .end local v15    # "success":Z
    :goto_103
    if-eqz v12, :cond_9

    .line 665
    if-eqz v15, :cond_113

    const/16 v18, 0x0

    :goto_109
    :try_start_109
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_10e} :catch_110

    goto/16 :goto_9

    .line 666
    :catch_110
    move-exception v8

    .local v8, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_9

    .line 665
    .end local v8    # "ignored":Landroid/os/RemoteException;
    :cond_113
    const/16 v18, -0x1

    goto :goto_109

    .line 672
    .end local v12    # "obs":Landroid/os/storage/IMountShutdownObserver;
    :pswitch_116
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/storage/VolumeInfo;

    .line 673
    .local v17, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/MountService;->-wrap0(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v18

    if-eqz v18, :cond_155

    .line 674
    const-string/jumbo v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Ignoring mount "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " due to policy"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 678
    :cond_155
    :try_start_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v18

    const-string/jumbo v19, "volume"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "mount"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput-object v21, v20, v22

    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 679
    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    .line 678
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_19a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_155 .. :try_end_19a} :catch_19c

    goto/16 :goto_9

    .line 680
    :catch_19c
    move-exception v9

    .local v9, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_9

    .line 685
    .end local v9    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    .end local v17    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_19f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/storage/VolumeInfo;

    .line 686
    .restart local v17    # "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 690
    .end local v17    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_1b6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/storage/StorageVolume;

    .line 691
    .local v16, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    .line 692
    .local v7, "envState":Ljava/lang/String;
    const-string/jumbo v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Volume "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " broadcasting "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 693
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v20

    .line 692
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 697
    new-instance v10, Landroid/content/Intent;

    .line 698
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    .line 697
    move-object/from16 v0, v18

    invoke-direct {v10, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 699
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.os.storage.extra.STORAGE_VOLUME"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 700
    const/high16 v18, 0x4000000

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 708
    .end local v4    # "action":Ljava/lang/String;
    .end local v7    # "envState":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_239
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    .line 709
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v18

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 710
    const-string/jumbo v20, "android.permission.WRITE_MEDIA_STORAGE"

    .line 709
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 714
    .end local v10    # "intent":Landroid/content/Intent;
    :pswitch_259
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 715
    .local v13, "partGuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/server/MountService;->-wrap6(Lcom/android/server/MountService;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 719
    .end local v13    # "partGuid":Ljava/lang/String;
    :pswitch_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap13(Lcom/android/server/MountService;)V

    goto/16 :goto_9

    .line 661
    .restart local v12    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v15    # "success":Z
    :catch_277
    move-exception v9

    .restart local v9    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_103

    .line 612
    :pswitch_data_27a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_14
        :pswitch_d8
        :pswitch_1e
        :pswitch_116
        :pswitch_1b6
        :pswitch_239
        :pswitch_19f
        :pswitch_259
        :pswitch_26c
    .end packed-switch
.end method
