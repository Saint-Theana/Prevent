.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1646
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1645
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1651
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_35e

    .line 1650
    :cond_7
    :goto_7
    return-void

    .line 1653
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto :goto_7

    .line 1657
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto :goto_7

    .line 1661
    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 1662
    .local v6, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1663
    const-string/jumbo v13, "app"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1664
    .local v8, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v8, :cond_56

    .line 1665
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "App not found when showing strict mode dialog."

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_dd

    monitor-exit v14

    .line 1662
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    .line 1668
    :cond_56
    :try_start_56
    iget-object v13, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v13, :cond_7a

    .line 1669
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "App already has strict mode dialog: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_56 .. :try_end_75} :catchall_dd

    monitor-exit v14

    .line 1662
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1670
    return-void

    .line 1672
    :cond_7a
    :try_start_7a
    const-string/jumbo v13, "result"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/AppErrorResult;

    .line 1673
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_97

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-get6(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_a8

    .line 1687
    :cond_97
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_9b
    .catchall {:try_start_7a .. :try_end_9b} :catchall_dd

    :goto_9b
    monitor-exit v14

    .line 1662
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1673
    :cond_a8
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v13, :cond_97

    .line 1674
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1675
    const-string/jumbo v15, "disable_fc_notifications"

    const/16 v16, 0x0

    .line 1674
    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 1675
    const/4 v15, 0x1

    .line 1674
    if-eq v13, v15, :cond_e3

    .line 1676
    new-instance v5, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1676
    invoke-direct {v5, v13, v15, v9, v8}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1678
    .local v5, "d":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1679
    iput-object v5, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_dc
    .catchall {:try_start_a8 .. :try_end_dc} :catchall_dd

    goto :goto_9b

    .line 1662
    .end local v5    # "d":Landroid/app/Dialog;
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_dd
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 1681
    .restart local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "res":Lcom/android/server/am/AppErrorResult;
    :cond_e3
    :try_start_e3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Skipping crash dialog of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": disabled"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_109
    .catchall {:try_start_e3 .. :try_end_109} :catchall_dd

    goto :goto_9b

    .line 1693
    .end local v6    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    :sswitch_10a
    new-instance v5, Lcom/android/server/am/FactoryErrorDialog;

    .line 1694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "msg"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1693
    invoke-direct {v5, v13, v14}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1695
    .restart local v5    # "d":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1696
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1699
    .end local v5    # "d":Landroid/app/Dialog;
    :sswitch_12c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_131
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1700
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1701
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_161

    .line 1702
    iget-boolean v13, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v13, :cond_15b

    .line 1703
    new-instance v5, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 1704
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1705
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1703
    invoke-direct {v5, v13, v15, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1706
    .restart local v5    # "d":Landroid/app/Dialog;
    iput-object v5, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1707
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1708
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_15b
    .catchall {:try_start_131 .. :try_end_15b} :catchall_16e

    .end local v5    # "d":Landroid/app/Dialog;
    :cond_15b
    :goto_15b
    monitor-exit v14

    .line 1699
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 1711
    :cond_161
    :try_start_161
    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v13, :cond_15b

    .line 1712
    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->dismiss()V

    .line 1713
    const/4 v13, 0x0

    iput-object v13, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_16d
    .catchall {:try_start_161 .. :try_end_16d} :catchall_16e

    goto :goto_15b

    .line 1699
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_16e
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 1719
    :sswitch_174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1720
    new-instance v4, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v13}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1721
    .local v4, "d":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7da

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 1722
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x10401d9

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x1040665

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x104000a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1726
    const/16 v14, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1725
    const/4 v15, -0x1

    invoke-virtual {v4, v15, v13, v14}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1727
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 1731
    .end local v4    # "d":Landroid/app/AlertDialog;
    :sswitch_1d4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1732
    const-string/jumbo v13, "ro.build.fingerprint"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1733
    .local v3, "buildfingerprint":Ljava/lang/String;
    const-string/jumbo v13, "/"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1734
    .local v10, "splitfingerprint":[Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v12, v10, v13

    .line 1735
    .local v12, "vendorid":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v13}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1736
    .restart local v4    # "d":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7da

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 1737
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x10401d9

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 1740
    const-string/jumbo v15, "ro.build.fingerprint"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x3

    aget-object v15, v15, v16

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 1739
    const v15, 0x1040075

    invoke-virtual {v13, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x104000a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1742
    const/16 v14, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1741
    const/4 v15, -0x1

    invoke-virtual {v4, v15, v13, v14}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1743
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 1747
    .end local v3    # "buildfingerprint":Ljava/lang/String;
    .end local v4    # "d":Landroid/app/AlertDialog;
    .end local v10    # "splitfingerprint":[Ljava/lang/String;
    .end local v12    # "vendorid":Ljava/lang/String;
    :sswitch_25e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_263
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1748
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1749
    .local v2, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v13, :cond_29f

    .line 1750
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v13, v13, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1751
    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1750
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_287
    .catchall {:try_start_263 .. :try_end_287} :catchall_2a7

    move-result v13

    if-eqz v13, :cond_28f

    monitor-exit v14

    .line 1747
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1752
    return-void

    .line 1754
    :cond_28f
    :try_start_28f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v13}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;
    :try_end_29f
    .catchall {:try_start_28f .. :try_end_29f} :catchall_2a7

    .line 1757
    :cond_29f
    if-eqz v2, :cond_2a1

    :cond_2a1
    monitor-exit v14

    .line 1747
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_2a7
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 1775
    :sswitch_2ad
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_2b2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1776
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1777
    .restart local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    if-eqz v13, :cond_2d3

    .line 1778
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v13}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 1779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 1781
    :cond_2d3
    if-eqz v2, :cond_313

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    .line 1782
    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1781
    invoke-virtual {v13, v15}, Lcom/android/server/am/CompatModePackages;->getPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_313

    .line 1783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v15, Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    .line 1783
    invoke-direct/range {v15 .. v18}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v15, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 1785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v13}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->show()V
    :try_end_313
    .catchall {:try_start_2b2 .. :try_end_313} :catchall_319

    :cond_313
    monitor-exit v14

    .line 1775
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_319
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 1791
    :sswitch_31f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/util/Pair;

    invoke-virtual {v14, v13}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    goto/16 :goto_7

    .line 1795
    :sswitch_330
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/Dialog;

    .line 1796
    .restart local v5    # "d":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_7

    .line 1800
    .end local v5    # "d":Landroid/app/Dialog;
    :sswitch_33b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-wrap7(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 1804
    :sswitch_344
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1805
    .local v7, "pid":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 1806
    .local v11, "uid":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13, v7, v11}, Lcom/android/server/am/ActivityManagerService;->-wrap6(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 1810
    .end local v7    # "pid":I
    .end local v11    # "uid":I
    :sswitch_355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-wrap8(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 1651
    :sswitch_data_35e
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_10a
        0x6 -> :sswitch_12c
        0xe -> :sswitch_174
        0xf -> :sswitch_1d4
        0x1a -> :sswitch_2e
        0x1e -> :sswitch_25e
        0x1f -> :sswitch_33b
        0x20 -> :sswitch_344
        0x2e -> :sswitch_31f
        0x30 -> :sswitch_330
        0x36 -> :sswitch_355
        0x45 -> :sswitch_2ad
    .end sparse-switch
.end method
