.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1818
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1817
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 85
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1823
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_ee2

    .line 1822
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1825
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v69

    .line 1826
    .local v69, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    .line 1827
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1826
    move-object/from16 v0, v69

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    goto :goto_7

    .line 1830
    .end local v69    # "resolver":Landroid/content/ContentResolver;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_36

    monitor-exit v7

    .line 1830
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_36
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1835
    :pswitch_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_6d

    .line 1836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v57

    .line 1838
    .local v57, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v57

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x4e20

    move-object/from16 v0, v57

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1840
    return-void

    .line 1842
    .end local v57    # "nmsg":Landroid/os/Message;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_7

    .line 1845
    :pswitch_7d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .local v47, "i":I
    :goto_91
    if-ltz v47, :cond_da

    .line 1847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 1848
    .local v66, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_a5
    .catchall {:try_start_82 .. :try_end_a5} :catchall_d4

    if-eqz v4, :cond_ae

    .line 1850
    :try_start_a7
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ae} :catch_b1
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_d4

    .line 1846
    :cond_ae
    :goto_ae
    add-int/lit8 v47, v47, -0x1

    goto :goto_91

    .line 1851
    :catch_b1
    move-exception v43

    .line 1852
    .local v43, "ex":Landroid/os/RemoteException;
    :try_start_b2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update time zone for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v66

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_b2 .. :try_end_d3} :catchall_d4

    goto :goto_ae

    .line 1845
    .end local v43    # "ex":Landroid/os/RemoteException;
    .end local v47    # "i":I
    .end local v66    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_d4
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v47    # "i":I
    :cond_da
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 1859
    .end local v47    # "i":I
    :pswitch_e0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_e5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_f4
    if-ltz v47, :cond_13d

    .line 1861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 1862
    .restart local v66    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_108
    .catchall {:try_start_e5 .. :try_end_108} :catchall_137

    if-eqz v4, :cond_111

    .line 1864
    :try_start_10a
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_111} :catch_114
    .catchall {:try_start_10a .. :try_end_111} :catchall_137

    .line 1860
    :cond_111
    :goto_111
    add-int/lit8 v47, v47, -0x1

    goto :goto_f4

    .line 1865
    :catch_114
    move-exception v43

    .line 1866
    .restart local v43    # "ex":Landroid/os/RemoteException;
    :try_start_115
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to clear dns cache for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v66

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_115 .. :try_end_136} :catchall_137

    goto :goto_111

    .line 1859
    .end local v43    # "ex":Landroid/os/RemoteException;
    .end local v47    # "i":I
    .end local v66    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_137
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v47    # "i":I
    :cond_13d
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 1873
    .end local v47    # "i":I
    :pswitch_143
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Landroid/net/ProxyInfo;

    .line 1874
    .local v64, "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v46, ""

    .line 1875
    .local v46, "host":Ljava/lang/String;
    const-string/jumbo v60, ""

    .line 1876
    .local v60, "port":Ljava/lang/String;
    const-string/jumbo v44, ""

    .line 1877
    .local v44, "exclList":Ljava/lang/String;
    sget-object v59, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1878
    .local v59, "pacFileUrl":Landroid/net/Uri;
    if-eqz v64, :cond_16c

    .line 1879
    invoke-virtual/range {v64 .. v64}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v46

    .line 1880
    invoke-virtual/range {v64 .. v64}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    .line 1881
    invoke-virtual/range {v64 .. v64}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v44

    .line 1882
    invoke-virtual/range {v64 .. v64}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v59

    .line 1884
    :cond_16c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_171
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_180
    if-ltz v47, :cond_1d1

    .line 1886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 1887
    .restart local v66    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_194
    .catchall {:try_start_171 .. :try_end_194} :catchall_1cb

    if-eqz v4, :cond_1a5

    .line 1889
    :try_start_196
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    move-object/from16 v2, v44

    move-object/from16 v3, v59

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1a5
    .catch Landroid/os/RemoteException; {:try_start_196 .. :try_end_1a5} :catch_1a8
    .catchall {:try_start_196 .. :try_end_1a5} :catchall_1cb

    .line 1885
    :cond_1a5
    :goto_1a5
    add-int/lit8 v47, v47, -0x1

    goto :goto_180

    .line 1890
    :catch_1a8
    move-exception v43

    .line 1891
    .restart local v43    # "ex":Landroid/os/RemoteException;
    :try_start_1a9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update http proxy for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1892
    move-object/from16 v0, v66

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1891
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ca
    .catchall {:try_start_1a9 .. :try_end_1ca} :catchall_1cb

    goto :goto_1a5

    .line 1884
    .end local v43    # "ex":Landroid/os/RemoteException;
    .end local v47    # "i":I
    .end local v66    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1cb
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v47    # "i":I
    :cond_1d1
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 1899
    .end local v44    # "exclList":Ljava/lang/String;
    .end local v46    # "host":Ljava/lang/String;
    .end local v47    # "i":I
    .end local v59    # "pacFileUrl":Landroid/net/Uri;
    .end local v60    # "port":Ljava/lang/String;
    .end local v64    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_1d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_208

    .line 1900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x14

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v57

    .line 1902
    .restart local v57    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v57

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v57

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1904
    return-void

    .line 1906
    .end local v57    # "nmsg":Landroid/os/Message;
    :cond_208
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/server/am/ProcessRecord;

    .line 1907
    .local v33, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_215
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap13(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_221
    .catchall {:try_start_215 .. :try_end_221} :catchall_227

    monitor-exit v7

    .line 1907
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_227
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1912
    .end local v33    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_22d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/server/am/ProcessRecord;

    .line 1913
    .restart local v33    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_23a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap12(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_246
    .catchall {:try_start_23a .. :try_end_246} :catchall_24c

    monitor-exit v7

    .line 1913
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_24c
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1918
    .end local v33    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_252
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_257
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V
    :try_end_264
    .catchall {:try_start_257 .. :try_end_264} :catchall_26a

    monitor-exit v7

    .line 1918
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_26a
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1923
    :pswitch_270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    :try_start_275
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1924
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1925
    .local v6, "appId":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 1926
    .local v12, "userId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Bundle;

    .line 1927
    .local v34, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1928
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1929
    .local v13, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1930
    const/4 v11, 0x0

    .line 1929
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_2a6
    .catchall {:try_start_275 .. :try_end_2a6} :catchall_2ac

    monitor-exit v15

    .line 1923
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appId":I
    .end local v12    # "userId":I
    .end local v13    # "reason":Ljava/lang/String;
    .end local v34    # "bundle":Landroid/os/Bundle;
    :catchall_2ac
    move-exception v4

    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1934
    :pswitch_2b2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 1937
    :pswitch_2bd
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v49

    .line 1938
    .local v49, "inm":Landroid/app/INotificationManager;
    if-nez v49, :cond_2c4

    .line 1939
    return-void

    .line 1942
    :cond_2c4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Lcom/android/server/am/ActivityRecord;

    .line 1943
    .local v71, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v63, v0

    .line 1944
    .local v63, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v63, :cond_2d5

    .line 1945
    return-void

    .line 1949
    :cond_2d5
    :try_start_2d5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v63

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v37

    .line 1950
    .local v37, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1951
    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 1950
    const v8, 0x1040454

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v75

    .line 1952
    .local v75, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1953
    const v7, 0x108078c

    .line 1952
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1954
    const-wide/16 v8, 0x0

    .line 1952
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1955
    const/4 v7, 0x1

    .line 1952
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1957
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1958
    const v8, 0x106005c

    .line 1957
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 1952
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1961
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1040455

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1952
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1962
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1963
    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 1964
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v71

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1962
    const/4 v15, 0x0

    .line 1963
    const/high16 v17, 0x10000000

    const/16 v18, 0x0

    .line 1962
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1952
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_373
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d5 .. :try_end_373} :catch_3a0

    move-result-object v19

    .line 1967
    .local v19, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_375
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 1968
    .local v20, "outId":[I
    const-string/jumbo v15, "android"

    const-string/jumbo v16, "android"

    .line 1970
    move-object/from16 v0, v71

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    .line 1968
    const/16 v17, 0x0

    .line 1969
    const v18, 0x1040454

    move-object/from16 v14, v49

    .line 1968
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_38f
    .catch Ljava/lang/RuntimeException; {:try_start_375 .. :try_end_38f} :catch_391
    .catch Landroid/os/RemoteException; {:try_start_375 .. :try_end_38f} :catch_edf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_375 .. :try_end_38f} :catch_3a0

    goto/16 :goto_7

    .line 1971
    .end local v20    # "outId":[I
    :catch_391
    move-exception v42

    .line 1972
    .local v42, "e":Ljava/lang/RuntimeException;
    :try_start_392
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 1973
    const-string/jumbo v7, "Error showing notification for heavy-weight app"

    .line 1972
    move-object/from16 v0, v42

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_392 .. :try_end_39e} :catch_3a0

    goto/16 :goto_7

    .line 1976
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v37    # "context":Landroid/content/Context;
    .end local v42    # "e":Ljava/lang/RuntimeException;
    .end local v75    # "text":Ljava/lang/String;
    :catch_3a0
    move-exception v39

    .line 1977
    .local v39, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Unable to create context for heavy notification"

    move-object/from16 v0, v39

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1981
    .end local v39    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v49    # "inm":Landroid/app/INotificationManager;
    .end local v63    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v71    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_3af
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 1982
    .local v14, "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_3b6

    .line 1983
    return-void

    .line 1986
    :cond_3b6
    :try_start_3b6
    const-string/jumbo v4, "android"

    .line 1987
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1986
    const/4 v8, 0x0

    .line 1987
    const v9, 0x1040454

    .line 1986
    invoke-interface {v14, v4, v8, v9, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3c4
    .catch Ljava/lang/RuntimeException; {:try_start_3b6 .. :try_end_3c4} :catch_3c6
    .catch Landroid/os/RemoteException; {:try_start_3b6 .. :try_end_3c4} :catch_edc

    goto/16 :goto_7

    .line 1988
    :catch_3c6
    move-exception v42

    .line 1989
    .restart local v42    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 1990
    const-string/jumbo v7, "Error canceling notification for service"

    .line 1989
    move-object/from16 v0, v42

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1995
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v42    # "e":Ljava/lang/RuntimeException;
    :pswitch_3d5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_3da
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1997
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1998
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v57

    .line 1999
    .restart local v57    # "nmsg":Landroid/os/Message;
    const-wide/32 v8, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3fe
    .catchall {:try_start_3da .. :try_end_3fe} :catchall_404

    monitor-exit v7

    .line 1995
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v57    # "nmsg":Landroid/os/Message;
    :catchall_404
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2003
    :pswitch_40a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Ljava/util/ArrayList;

    .line 2004
    .local v51, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v76, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2009
    .local v76, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 2013
    .end local v51    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v76    # "thread":Ljava/lang/Thread;
    :pswitch_422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2017
    :pswitch_43b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2021
    :pswitch_454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_7

    .line 2025
    :pswitch_46d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_490

    const/16 v56, 0x1

    .line 2026
    .local v56, "nextState":Z
    :goto_475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v56

    if-eq v4, v0, :cond_7

    .line 2030
    if-eqz v56, :cond_493

    .line 2031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    .line 2025
    .end local v56    # "nextState":Z
    :cond_490
    const/16 v56, 0x0

    .restart local v56    # "nextState":Z
    goto :goto_475

    .line 2033
    :cond_493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    .line 2039
    .end local v56    # "nextState":Z
    :pswitch_49e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-wrap17(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2043
    :pswitch_4a7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4ac
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V
    :try_end_4bc
    .catchall {:try_start_4ac .. :try_end_4bc} :catchall_4c2

    monitor-exit v7

    .line 2043
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_4c2
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2049
    :pswitch_4c8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4cd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->startProfilesLocked()V
    :try_end_4d9
    .catchall {:try_start_4cd .. :try_end_4d9} :catchall_4df

    monitor-exit v7

    .line 2049
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_4df
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2055
    :pswitch_4e5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4ea
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_4f9
    if-ltz v47, :cond_54b

    .line 2057
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/server/am/ProcessRecord;

    .line 2058
    .restart local v66    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v66

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_50d
    .catchall {:try_start_4ea .. :try_end_50d} :catchall_545

    if-eqz v4, :cond_51d

    .line 2060
    :try_start_50f
    move-object/from16 v0, v66

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_520

    const/4 v4, 0x0

    :goto_51a
    invoke-interface {v8, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_51d
    .catch Landroid/os/RemoteException; {:try_start_50f .. :try_end_51d} :catch_522
    .catchall {:try_start_50f .. :try_end_51d} :catchall_545

    .line 2056
    :cond_51d
    :goto_51d
    add-int/lit8 v47, v47, -0x1

    goto :goto_4f9

    .line 2060
    :cond_520
    const/4 v4, 0x1

    goto :goto_51a

    .line 2061
    :catch_522
    move-exception v43

    .line 2062
    .restart local v43    # "ex":Landroid/os/RemoteException;
    :try_start_523
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to update preferences for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v66

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_544
    .catchall {:try_start_523 .. :try_end_544} :catchall_545

    goto :goto_51d

    .line 2055
    .end local v43    # "ex":Landroid/os/RemoteException;
    .end local v47    # "i":I
    .end local v66    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_545
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v47    # "i":I
    :cond_54b
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 2070
    .end local v47    # "i":I
    :pswitch_551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2071
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2070
    const v9, 0x8007

    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_7

    .line 2076
    :pswitch_578
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 2077
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_58a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, v12}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V
    :try_end_596
    .catchall {:try_start_58a .. :try_end_596} :catchall_5bd

    monitor-exit v7

    .line 2078
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2081
    if-nez v12, :cond_5a5

    .line 2082
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/high16 v7, 0x40000

    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-wrap14(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2084
    :cond_5a5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4, v12}, Lcom/android/server/am/ActivityManagerService;->-wrap10(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    invoke-virtual {v7, v4}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    goto/16 :goto_7

    .line 2078
    :catchall_5bd
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2089
    .end local v12    # "userId":I
    :pswitch_5c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2091
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 2090
    const/16 v9, 0x4008

    .line 2089
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2094
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2093
    const v9, 0x8008

    .line 2092
    invoke-virtual {v4, v9, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_7

    .line 2099
    :pswitch_601
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_606
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2100
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v65

    .line 2101
    .local v65, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v65, :cond_630

    move-object/from16 v0, v65

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_630

    move-object/from16 v0, v65

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_621
    .catchall {:try_start_606 .. :try_end_621} :catchall_636

    if-eqz v4, :cond_630

    .line 2103
    :try_start_623
    move-object/from16 v0, v65

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v65

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v8}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_630
    .catch Landroid/os/RemoteException; {:try_start_623 .. :try_end_630} :catch_ed9
    .catchall {:try_start_623 .. :try_end_630} :catchall_636

    :cond_630
    :goto_630
    monitor-exit v7

    .line 2099
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v65    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_636
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2111
    :pswitch_63c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_656

    .line 2112
    const-string/jumbo v4, "FinishBooting"

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2114
    const-wide/16 v8, 0x40

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2116
    :cond_656
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_7

    .line 2117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_7

    .line 2123
    :pswitch_665
    :try_start_665
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/util/Locale;

    .line 2124
    .local v50, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v72

    .line 2125
    .local v72, "service":Landroid/os/IBinder;
    invoke-static/range {v72 .. v72}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v54

    .line 2126
    .local v54, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Storing locale "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v50 .. v50}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for decryption UI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    const-string/jumbo v4, "SystemLocale"

    invoke-virtual/range {v50 .. v50}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v54

    invoke-interface {v0, v4, v7}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6aa
    .catch Landroid/os/RemoteException; {:try_start_665 .. :try_end_6aa} :catch_6ac

    goto/16 :goto_7

    .line 2128
    .end local v50    # "l":Ljava/util/Locale;
    .end local v54    # "mountService":Landroid/os/storage/IMountService;
    .end local v72    # "service":Landroid/os/IBinder;
    :catch_6ac
    move-exception v40

    .line 2129
    .local v40, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Error storing locale for decryption UI"

    move-object/from16 v0, v40

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2134
    .end local v40    # "e":Landroid/os/RemoteException;
    :pswitch_6bb
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_6c0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_6ce
    .catchall {:try_start_6c0 .. :try_end_6ce} :catchall_6fa

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_6d1
    if-ltz v47, :cond_6e9

    .line 2138
    :try_start_6d3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_6e6
    .catch Landroid/os/RemoteException; {:try_start_6d3 .. :try_end_6e6} :catch_ed6
    .catchall {:try_start_6d3 .. :try_end_6e6} :catchall_6fa

    .line 2135
    :goto_6e6
    add-int/lit8 v47, v47, -0x1

    goto :goto_6d1

    .line 2143
    :cond_6e9
    :try_start_6e9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_6f4
    .catchall {:try_start_6e9 .. :try_end_6f4} :catchall_6fa

    monitor-exit v7

    .line 2134
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v47    # "i":I
    :catchall_6fa
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2148
    :pswitch_700
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_705
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_713
    .catchall {:try_start_705 .. :try_end_713} :catchall_73f

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_716
    if-ltz v47, :cond_72e

    .line 2152
    :try_start_718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityPinned()V
    :try_end_72b
    .catch Landroid/os/RemoteException; {:try_start_718 .. :try_end_72b} :catch_ed3
    .catchall {:try_start_718 .. :try_end_72b} :catchall_73f

    .line 2149
    :goto_72b
    add-int/lit8 v47, v47, -0x1

    goto :goto_716

    .line 2157
    :cond_72e
    :try_start_72e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_739
    .catchall {:try_start_72e .. :try_end_739} :catchall_73f

    monitor-exit v7

    .line 2148
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v47    # "i":I
    :catchall_73f
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2162
    :pswitch_745
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_74a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_758
    .catchall {:try_start_74a .. :try_end_758} :catchall_784

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_75b
    if-ltz v47, :cond_773

    .line 2166
    :try_start_75d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt()V
    :try_end_770
    .catch Landroid/os/RemoteException; {:try_start_75d .. :try_end_770} :catch_ed0
    .catchall {:try_start_75d .. :try_end_770} :catchall_784

    .line 2163
    :goto_770
    add-int/lit8 v47, v47, -0x1

    goto :goto_75b

    .line 2171
    :cond_773
    :try_start_773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_77e
    .catchall {:try_start_773 .. :try_end_77e} :catchall_784

    monitor-exit v7

    .line 2162
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v47    # "i":I
    :catchall_784
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2176
    :pswitch_78a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_78f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_79d
    .catchall {:try_start_78f .. :try_end_79d} :catchall_7c9

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_7a0
    if-ltz v47, :cond_7b8

    .line 2180
    :try_start_7a2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V
    :try_end_7b5
    .catch Landroid/os/RemoteException; {:try_start_7a2 .. :try_end_7b5} :catch_ecd
    .catchall {:try_start_7a2 .. :try_end_7b5} :catchall_7c9

    .line 2177
    :goto_7b5
    add-int/lit8 v47, v47, -0x1

    goto :goto_7a0

    .line 2185
    :cond_7b8
    :try_start_7b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_7c3
    .catchall {:try_start_7b8 .. :try_end_7c3} :catchall_7c9

    monitor-exit v7

    .line 2176
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v47    # "i":I
    :catchall_7c9
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2190
    :pswitch_7cf
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_7d4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_7e2
    .catchall {:try_start_7d4 .. :try_end_7e2} :catchall_818

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_7e5
    if-ltz v47, :cond_807

    .line 2194
    :try_start_7e7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    .line 2195
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 2194
    invoke-interface {v4, v7, v9}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;I)V
    :try_end_804
    .catch Landroid/os/RemoteException; {:try_start_7e7 .. :try_end_804} :catch_eca
    .catchall {:try_start_7e7 .. :try_end_804} :catchall_818

    .line 2191
    :goto_804
    add-int/lit8 v47, v47, -0x1

    goto :goto_7e5

    .line 2200
    :cond_807
    :try_start_807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_812
    .catchall {:try_start_807 .. :try_end_812} :catchall_818

    monitor-exit v8

    .line 2190
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v47    # "i":I
    :catchall_818
    move-exception v4

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2205
    :pswitch_81e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_823
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_831
    .catchall {:try_start_823 .. :try_end_831} :catchall_85d

    move-result v4

    add-int/lit8 v47, v4, -0x1

    .restart local v47    # "i":I
    :goto_834
    if-ltz v47, :cond_84c

    .line 2209
    :try_start_836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V
    :try_end_849
    .catch Landroid/os/RemoteException; {:try_start_836 .. :try_end_849} :catch_ec7
    .catchall {:try_start_836 .. :try_end_849} :catchall_85d

    .line 2206
    :goto_849
    add-int/lit8 v47, v47, -0x1

    goto :goto_834

    .line 2215
    :cond_84c
    :try_start_84c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_857
    .catchall {:try_start_84c .. :try_end_857} :catchall_85d

    monitor-exit v7

    .line 2205
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .end local v47    # "i":I
    :catchall_85d
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2220
    :pswitch_863
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v79, v0

    .line 2221
    .local v79, "uid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, [B

    .line 2223
    .local v45, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7

    .line 2224
    const/16 v47, 0x0

    .restart local v47    # "i":I
    :goto_87a
    :try_start_87a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v47

    if-ge v0, v4, :cond_8aa

    .line 2225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    .line 2226
    .local v58, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v58

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_89a
    .catchall {:try_start_87a .. :try_end_89a} :catchall_8ad

    move/from16 v0, v79

    if-ne v4, v0, :cond_8a7

    .line 2228
    :try_start_89e
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_8a7
    .catch Landroid/os/RemoteException; {:try_start_89e .. :try_end_8a7} :catch_ec4
    .catchall {:try_start_89e .. :try_end_8a7} :catchall_8ad

    .line 2224
    :cond_8a7
    :goto_8a7
    add-int/lit8 v47, v47, 0x1

    goto :goto_87a

    .end local v58    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_8aa
    monitor-exit v7

    goto/16 :goto_7

    .line 2223
    :catchall_8ad
    move-exception v4

    monitor-exit v7

    throw v4

    .line 2241
    .end local v45    # "firstPacket":[B
    .end local v47    # "i":I
    .end local v79    # "uid":I
    :pswitch_8b0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_8b5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v62, v0

    .line 2243
    .local v62, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v79, v0

    .line 2244
    .restart local v79    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v62

    move/from16 v1, v79

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/util/Pair;

    .line 2245
    .local v80, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v80, :cond_8e9

    .line 2246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v8, 0x0

    move-object/from16 v0, v62

    invoke-virtual {v4, v0, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v80

    .end local v80    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v80, Landroid/util/Pair;

    .line 2248
    .restart local v80    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_8e9
    if-eqz v80, :cond_904

    .line 2249
    move-object/from16 v0, v80

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    .line 2250
    .local v52, "memLimit":J
    move-object/from16 v0, v80

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Ljava/lang/String;
    :try_end_8fd
    .catchall {:try_start_8b5 .. :try_end_8fd} :catchall_909

    :goto_8fd
    monitor-exit v7

    .line 2241
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2256
    if-nez v62, :cond_90f

    .line 2257
    return-void

    .line 2252
    .end local v52    # "memLimit":J
    :cond_904
    const-wide/16 v52, 0x0

    .line 2253
    .restart local v52    # "memLimit":J
    const/16 v67, 0x0

    .local v67, "reportPackage":Ljava/lang/String;
    goto :goto_8fd

    .line 2241
    .end local v52    # "memLimit":J
    .end local v62    # "procName":Ljava/lang/String;
    .end local v67    # "reportPackage":Ljava/lang/String;
    .end local v79    # "uid":I
    .end local v80    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_909
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2263
    .restart local v52    # "memLimit":J
    .restart local v62    # "procName":Ljava/lang/String;
    .restart local v79    # "uid":I
    .restart local v80    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_90f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2264
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_916

    .line 2265
    return-void

    .line 2268
    :cond_916
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v62, v7, v8

    const v8, 0x104045c

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v75

    .line 2271
    .restart local v75    # "text":Ljava/lang/String;
    new-instance v38, Landroid/content/Intent;

    invoke-direct/range {v38 .. v38}, Landroid/content/Intent;-><init>()V

    .line 2272
    .local v38, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2273
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2274
    .local v23, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android"

    const-class v7, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2275
    const-string/jumbo v4, "process"

    move-object/from16 v0, v23

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2276
    const-string/jumbo v4, "size"

    move-object/from16 v0, v23

    move-wide/from16 v1, v52

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2277
    if-eqz v67, :cond_969

    .line 2278
    const-string/jumbo v4, "direct_launch"

    move-object/from16 v0, v23

    move-object/from16 v1, v67

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2280
    :cond_969
    invoke-static/range {v79 .. v79}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2281
    .restart local v12    # "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2282
    const v7, 0x108078c

    .line 2281
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2283
    const-wide/16 v8, 0x0

    .line 2281
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2284
    const/4 v7, 0x1

    .line 2281
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2285
    const/4 v7, 0x1

    .line 2281
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2287
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2288
    const v8, 0x106005c

    .line 2287
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 2281
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2291
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104045d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2281
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2292
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 2294
    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 2292
    const/16 v22, 0x0

    .line 2293
    const/high16 v24, 0x10000000

    const/16 v25, 0x0

    .line 2292
    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2281
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2295
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2296
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2295
    const/4 v9, 0x0

    .line 2296
    const/4 v10, 0x0

    .line 2295
    move-object/from16 v0, v38

    invoke-static {v7, v9, v0, v10, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2281
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 2300
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_9f3
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 2301
    .restart local v20    # "outId":[I
    const-string/jumbo v15, "android"

    const-string/jumbo v16, "android"

    const/16 v17, 0x0

    .line 2302
    const v18, 0x104045c

    move/from16 v21, v12

    .line 2301
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_a07
    .catch Ljava/lang/RuntimeException; {:try_start_9f3 .. :try_end_a07} :catch_a09
    .catch Landroid/os/RemoteException; {:try_start_9f3 .. :try_end_a07} :catch_ec1

    goto/16 :goto_7

    .line 2304
    .end local v20    # "outId":[I
    :catch_a09
    move-exception v42

    .line 2305
    .restart local v42    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 2306
    const-string/jumbo v7, "Error showing notification for dump heap"

    .line 2305
    move-object/from16 v0, v42

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2311
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v38    # "deleteIntent":Landroid/content/Intent;
    .end local v42    # "e":Ljava/lang/RuntimeException;
    .end local v52    # "memLimit":J
    .end local v62    # "procName":Ljava/lang/String;
    .end local v75    # "text":Ljava/lang/String;
    .end local v79    # "uid":I
    .end local v80    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :pswitch_a18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    .line 2312
    sget-object v8, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 2315
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 2313
    const/4 v10, 0x3

    .line 2311
    invoke-virtual {v4, v7, v8, v10, v9}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_a33
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    iput v8, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I
    :try_end_a52
    .catchall {:try_start_a33 .. :try_end_a52} :catchall_a58

    monitor-exit v7

    .line 2316
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_a58
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2324
    :pswitch_a5e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_7

    .line 2327
    :pswitch_a6d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v78, v0

    check-cast v78, Lcom/android/server/am/AppTimeTracker;

    .line 2328
    .local v78, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v78

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 2331
    .end local v78    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :pswitch_a82
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_7

    .line 2334
    :pswitch_a91
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/app/IUiAutomationConnection;

    .line 2336
    .local v36, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_a99
    invoke-interface/range {v36 .. v36}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_a9c
    .catch Landroid/os/RemoteException; {:try_start_a99 .. :try_end_a9c} :catch_aa6

    .line 2342
    :goto_a9c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/android/server/am/ActivityManagerService;->-set4(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_7

    .line 2337
    :catch_aa6
    move-exception v40

    .line 2338
    .restart local v40    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9c

    .line 2345
    .end local v36    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v40    # "e":Landroid/os/RemoteException;
    :pswitch_ab2
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2346
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_ab9

    .line 2347
    return-void

    .line 2350
    :cond_ab9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Lcom/android/server/am/ActivityRecord;

    .line 2351
    .restart local v71    # "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v71

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v63, v0

    .line 2352
    .restart local v63    # "process":Lcom/android/server/am/ProcessRecord;
    if-nez v63, :cond_aca

    .line 2353
    return-void

    .line 2357
    :cond_aca
    :try_start_aca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v63

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v37

    .line 2358
    .restart local v37    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 2359
    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2358
    const v8, 0x104002b

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v75

    .line 2360
    .restart local v75    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104002a

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 2362
    .local v77, "title":Ljava/lang/String;
    new-instance v26, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.APP_OPS_DETAILS_SETTINGS"

    .line 2363
    const-string/jumbo v7, "package"

    move-object/from16 v0, v71

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2362
    move-object/from16 v0, v26

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2365
    .local v26, "infoIntent":Landroid/content/Intent;
    new-instance v19, Landroid/app/Notification;

    invoke-direct/range {v19 .. v19}, Landroid/app/Notification;-><init>()V

    .line 2366
    .restart local v19    # "notification":Landroid/app/Notification;
    const v4, 0x1080785

    move-object/from16 v0, v19

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 2367
    const-wide/16 v8, 0x0

    move-object/from16 v0, v19

    iput-wide v8, v0, Landroid/app/Notification;->when:J

    .line 2368
    const/4 v4, 0x2

    move-object/from16 v0, v19

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 2369
    const/4 v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Landroid/app/Notification;->priority:I

    .line 2370
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 2371
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2372
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 2373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2375
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 2377
    new-instance v29, Landroid/os/UserHandle;

    move-object/from16 v0, v71

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 2375
    const/16 v25, 0x0

    .line 2376
    const/high16 v27, 0x10000000

    const/16 v28, 0x0

    .line 2375
    invoke-static/range {v24 .. v29}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2373
    move-object/from16 v0, v19

    move-object/from16 v1, v77

    move-object/from16 v2, v75

    invoke-virtual {v0, v4, v1, v2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_b74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_aca .. :try_end_b74} :catch_b9e

    .line 2380
    const/4 v4, 0x1

    :try_start_b75
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 2381
    .restart local v20    # "outId":[I
    const-string/jumbo v15, "android"

    const-string/jumbo v16, "android"

    .line 2383
    move-object/from16 v0, v71

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    .line 2381
    const/16 v17, 0x0

    .line 2382
    const v18, 0x104002a

    .line 2381
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_b8d
    .catch Ljava/lang/RuntimeException; {:try_start_b75 .. :try_end_b8d} :catch_b8f
    .catch Landroid/os/RemoteException; {:try_start_b75 .. :try_end_b8d} :catch_ebe
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b75 .. :try_end_b8d} :catch_b9e

    goto/16 :goto_7

    .line 2384
    .end local v20    # "outId":[I
    :catch_b8f
    move-exception v42

    .line 2385
    .restart local v42    # "e":Ljava/lang/RuntimeException;
    :try_start_b90
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 2386
    const-string/jumbo v7, "Error showing notification for privacy guard"

    .line 2385
    move-object/from16 v0, v42

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b90 .. :try_end_b9c} :catch_b9e

    goto/16 :goto_7

    .line 2389
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v26    # "infoIntent":Landroid/content/Intent;
    .end local v37    # "context":Landroid/content/Context;
    .end local v42    # "e":Ljava/lang/RuntimeException;
    .end local v75    # "text":Ljava/lang/String;
    .end local v77    # "title":Ljava/lang/String;
    :catch_b9e
    move-exception v39

    .line 2390
    .restart local v39    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Unable to create context for privacy guard notification"

    move-object/from16 v0, v39

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2394
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v39    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v63    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v71    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_bad
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2395
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_bb4

    .line 2396
    return-void

    .line 2399
    :cond_bb4
    :try_start_bb4
    const-string/jumbo v4, "android"

    .line 2400
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 2399
    const/4 v8, 0x0

    .line 2400
    const v9, 0x104002a

    .line 2399
    invoke-interface {v14, v4, v8, v9, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_bc2
    .catch Ljava/lang/RuntimeException; {:try_start_bb4 .. :try_end_bc2} :catch_bc4
    .catch Landroid/os/RemoteException; {:try_start_bb4 .. :try_end_bc2} :catch_ebb

    goto/16 :goto_7

    .line 2401
    :catch_bc4
    move-exception v42

    .line 2402
    .restart local v42    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 2403
    const-string/jumbo v7, "Error canceling notification for service"

    .line 2402
    move-object/from16 v0, v42

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2408
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v42    # "e":Ljava/lang/RuntimeException;
    :pswitch_bd3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_bd8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_c0d

    .line 2410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v16, 0x9c4

    sub-long v10, v10, v16

    cmp-long v4, v8, v10

    if-gez v4, :cond_c13

    .line 2411
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-wrap5()I

    .line 2412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set2(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcom/android/server/am/ActivityManagerService;->-set0(Lcom/android/server/am/ActivityManagerService;J)J
    :try_end_c0d
    .catchall {:try_start_bd8 .. :try_end_c0d} :catchall_c2d

    :cond_c0d
    :goto_c0d
    monitor-exit v7

    .line 2408
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    .line 2415
    :cond_c13
    :try_start_c13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v55

    .line 2416
    .local v55, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x9c4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c2c
    .catchall {:try_start_c13 .. :try_end_c2c} :catchall_c2d

    goto :goto_c0d

    .line 2408
    .end local v55    # "newmsg":Landroid/os/Message;
    :catchall_c2d
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2422
    :pswitch_c33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    goto/16 :goto_7

    .line 2425
    :pswitch_c3c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_c41
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V
    :try_end_c4d
    .catchall {:try_start_c41 .. :try_end_c4d} :catchall_c53

    monitor-exit v7

    .line 2425
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_c53
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2430
    :pswitch_c59
    const-class v4, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Lcom/android/server/vr/VrManagerInternal;

    .line 2431
    .local v82, "vrService":Lcom/android/server/vr/VrManagerInternal;
    if-eqz v82, :cond_7

    .line 2434
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Lcom/android/server/am/ActivityRecord;

    .line 2439
    .restart local v65    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_c70
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2440
    move-object/from16 v0, v65

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_d08

    const/16 v81, 0x1

    .line 2441
    .local v81, "vrMode":Z
    :goto_c7b
    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v68, v0

    .line 2442
    .local v68, "requestedPackage":Landroid/content/ComponentName;
    move-object/from16 v0, v65

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2443
    .restart local v12    # "userId":I
    move-object/from16 v0, v65

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v35

    .line 2444
    .local v35, "callingPackage":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    move/from16 v0, v81

    if-eq v4, v0, :cond_ce9

    .line 2445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v81

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-set1(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Landroid/content/res/Configuration;Z)Z

    move-result v8

    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set3(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2447
    move-object/from16 v0, v65

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_ce9

    .line 2448
    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v61, v0

    .line 2449
    .local v61, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez v4, :cond_ce9

    .line 2450
    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I
    :try_end_cd1
    .catchall {:try_start_c70 .. :try_end_cd1} :catchall_d35

    const/4 v8, 0x2

    if-ne v4, v8, :cond_ce9

    .line 2452
    :try_start_cd4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_d0c

    .line 2453
    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 2454
    const v8, 0x40000001    # 2.0000002f

    const/4 v9, 0x1

    .line 2453
    invoke-static {v4, v8, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_ce9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cd4 .. :try_end_ce9} :catch_d16
    .catchall {:try_start_cd4 .. :try_end_ce9} :catchall_d35

    .end local v61    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_ce9
    :goto_ce9
    monitor-exit v7

    .line 2439
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2468
    move-object/from16 v0, v82

    move/from16 v1, v81

    move-object/from16 v2, v68

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    .line 2470
    .end local v12    # "userId":I
    .end local v35    # "callingPackage":Landroid/content/ComponentName;
    .end local v65    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v68    # "requestedPackage":Landroid/content/ComponentName;
    .end local v81    # "vrMode":Z
    .end local v82    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    :pswitch_cf8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_d3b

    const/4 v4, 0x1

    :goto_d03
    invoke-static {v7, v4}, Lcom/android/server/am/ActivityManagerService;->-wrap11(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_7

    .line 2440
    .restart local v65    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v82    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    :cond_d08
    const/16 v81, 0x0

    .restart local v81    # "vrMode":Z
    goto/16 :goto_c7b

    .line 2456
    .restart local v12    # "userId":I
    .restart local v35    # "callingPackage":Landroid/content/ComponentName;
    .restart local v61    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v68    # "requestedPackage":Landroid/content/ComponentName;
    :cond_d0c
    :try_start_d0c
    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    .line 2457
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2456
    invoke-static {v4, v8, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_d15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d0c .. :try_end_d15} :catch_d16
    .catchall {:try_start_d0c .. :try_end_d15} :catchall_d35

    goto :goto_ce9

    .line 2459
    :catch_d16
    move-exception v41

    .line 2460
    .local v41, "e":Ljava/lang/IllegalArgumentException;
    :try_start_d17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d34
    .catchall {:try_start_d17 .. :try_end_d34} :catchall_d35

    goto :goto_ce9

    .line 2439
    .end local v12    # "userId":I
    .end local v35    # "callingPackage":Landroid/content/ComponentName;
    .end local v41    # "e":Ljava/lang/IllegalArgumentException;
    .end local v61    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v68    # "requestedPackage":Landroid/content/ComponentName;
    .end local v81    # "vrMode":Z
    :catchall_d35
    move-exception v4

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2470
    .end local v65    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v82    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    :cond_d3b
    const/4 v4, 0x0

    goto :goto_d03

    .line 2473
    :pswitch_d3d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2474
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_d44

    .line 2475
    return-void

    .line 2478
    :cond_d44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/content/Intent;

    .line 2479
    .local v73, "targetIntent":Landroid/content/Intent;
    if-nez v73, :cond_d4f

    .line 2480
    return-void

    .line 2483
    :cond_d4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result v21

    .line 2485
    .local v21, "currentUserId":I
    const-string/jumbo v4, "com.android.settings.PROTECTED_APPS_USER_ID"

    .line 2484
    move-object/from16 v0, v73

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v74

    .line 2487
    .local v74, "targetUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v73 .. v73}, Landroid/content/Intent;->getFlags()I

    move-result v7

    move-object/from16 v0, v73

    move/from16 v1, v74

    invoke-static {v4, v0, v7, v1}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;II)Landroid/content/pm/ActivityInfo;

    move-result-object v70

    .line 2491
    .local v70, "root":Landroid/content/pm/ActivityInfo;
    :try_start_d74
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 2492
    .local v29, "protectedAppIntent":Landroid/content/Intent;
    const v4, 0x8000

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2494
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.android.settings"

    .line 2495
    const-string/jumbo v8, "com.android.settings.applications.ProtectedAppsActivity"

    .line 2494
    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2497
    const-string/jumbo v4, "com.android.settings.PROTECTED_APP_TARGET_INTENT"

    .line 2496
    move-object/from16 v0, v29

    move-object/from16 v1, v73

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.android.settings"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v37

    .line 2500
    .restart local v37    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2501
    const v7, 0x1040072

    .line 2500
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 2503
    .restart local v77    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 2506
    move-object/from16 v0, v70

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2504
    const v8, 0x1040073

    .line 2503
    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v75

    .line 2507
    .restart local v75    # "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2508
    const v7, 0x1080786

    .line 2507
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2509
    const-wide/16 v8, 0x0

    .line 2507
    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v77

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2511
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2512
    const v8, 0x106005c

    .line 2511
    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 2507
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v77

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2516
    const/4 v7, 0x2

    .line 2507
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2517
    const/4 v7, 0x2

    .line 2507
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2518
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v75

    invoke-virtual {v7, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 2507
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2519
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    .line 2521
    new-instance v32, Landroid/os/UserHandle;

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2519
    const/16 v28, 0x0

    .line 2520
    const/high16 v30, 0x10000000

    const/16 v31, 0x0

    .line 2519
    invoke-static/range {v27 .. v32}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2507
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_e4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d74 .. :try_end_e4d} :catch_e80

    move-result-object v19

    .line 2524
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_e4f
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 2525
    .restart local v20    # "outId":[I
    const-string/jumbo v4, "android"

    .line 2526
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 2525
    const/4 v8, 0x0

    .line 2526
    const v9, 0x1040072

    .line 2525
    invoke-interface {v14, v4, v8, v9, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2527
    const-string/jumbo v15, "android"

    const-string/jumbo v16, "android"

    const/16 v17, 0x0

    .line 2528
    const v18, 0x1040072

    .line 2527
    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_e6f
    .catch Ljava/lang/RuntimeException; {:try_start_e4f .. :try_end_e6f} :catch_e71
    .catch Landroid/os/RemoteException; {:try_start_e4f .. :try_end_e6f} :catch_eb8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e4f .. :try_end_e6f} :catch_e80

    goto/16 :goto_7

    .line 2530
    .end local v20    # "outId":[I
    :catch_e71
    move-exception v42

    .line 2531
    .restart local v42    # "e":Ljava/lang/RuntimeException;
    :try_start_e72
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 2532
    const-string/jumbo v7, "Error showing notification for protected app component"

    .line 2531
    move-object/from16 v0, v42

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e72 .. :try_end_e7e} :catch_e80

    goto/16 :goto_7

    .line 2535
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v29    # "protectedAppIntent":Landroid/content/Intent;
    .end local v37    # "context":Landroid/content/Context;
    .end local v42    # "e":Ljava/lang/RuntimeException;
    .end local v75    # "text":Ljava/lang/String;
    .end local v77    # "title":Ljava/lang/String;
    :catch_e80
    move-exception v39

    .line 2536
    .restart local v39    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "Unable to create context for protected app notification"

    move-object/from16 v0, v39

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2540
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v21    # "currentUserId":I
    .end local v39    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v70    # "root":Landroid/content/pm/ActivityInfo;
    .end local v73    # "targetIntent":Landroid/content/Intent;
    .end local v74    # "targetUserId":I
    :pswitch_e8f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2541
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_e96

    .line 2542
    return-void

    .line 2545
    :cond_e96
    :try_start_e96
    const-string/jumbo v4, "android"

    .line 2546
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 2545
    const/4 v8, 0x0

    .line 2546
    const v9, 0x1040072

    .line 2545
    invoke-interface {v14, v4, v8, v9, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_ea4
    .catch Ljava/lang/RuntimeException; {:try_start_e96 .. :try_end_ea4} :catch_ea6
    .catch Landroid/os/RemoteException; {:try_start_e96 .. :try_end_ea4} :catch_eb5

    goto/16 :goto_7

    .line 2547
    :catch_ea6
    move-exception v42

    .line 2548
    .restart local v42    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    .line 2549
    const-string/jumbo v7, "Error canceling notification for service"

    .line 2548
    move-object/from16 v0, v42

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2550
    .end local v42    # "e":Ljava/lang/RuntimeException;
    :catch_eb5
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 2533
    .end local v40    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v21    # "currentUserId":I
    .restart local v29    # "protectedAppIntent":Landroid/content/Intent;
    .restart local v37    # "context":Landroid/content/Context;
    .restart local v70    # "root":Landroid/content/pm/ActivityInfo;
    .restart local v73    # "targetIntent":Landroid/content/Intent;
    .restart local v74    # "targetUserId":I
    .restart local v75    # "text":Ljava/lang/String;
    .restart local v77    # "title":Ljava/lang/String;
    :catch_eb8
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 2404
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v21    # "currentUserId":I
    .end local v29    # "protectedAppIntent":Landroid/content/Intent;
    .end local v37    # "context":Landroid/content/Context;
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v70    # "root":Landroid/content/pm/ActivityInfo;
    .end local v73    # "targetIntent":Landroid/content/Intent;
    .end local v74    # "targetUserId":I
    .end local v75    # "text":Ljava/lang/String;
    .end local v77    # "title":Ljava/lang/String;
    :catch_ebb
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 2387
    .end local v40    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v26    # "infoIntent":Landroid/content/Intent;
    .restart local v37    # "context":Landroid/content/Context;
    .restart local v63    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v71    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v75    # "text":Ljava/lang/String;
    .restart local v77    # "title":Ljava/lang/String;
    :catch_ebe
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 2307
    .end local v26    # "infoIntent":Landroid/content/Intent;
    .end local v37    # "context":Landroid/content/Context;
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v63    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v71    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v77    # "title":Ljava/lang/String;
    .restart local v12    # "userId":I
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v38    # "deleteIntent":Landroid/content/Intent;
    .restart local v52    # "memLimit":J
    .restart local v62    # "procName":Ljava/lang/String;
    .restart local v79    # "uid":I
    .restart local v80    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_ec1
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 2229
    .end local v12    # "userId":I
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v38    # "deleteIntent":Landroid/content/Intent;
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v52    # "memLimit":J
    .end local v62    # "procName":Ljava/lang/String;
    .end local v75    # "text":Ljava/lang/String;
    .end local v80    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v45    # "firstPacket":[B
    .restart local v47    # "i":I
    .restart local v58    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_ec4
    move-exception v48

    .local v48, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_8a7

    .line 2211
    .end local v45    # "firstPacket":[B
    .end local v48    # "ignored":Landroid/os/RemoteException;
    .end local v58    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v79    # "uid":I
    :catch_ec7
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_849

    .line 2196
    .end local v40    # "e":Landroid/os/RemoteException;
    :catch_eca
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_804

    .line 2181
    .end local v40    # "e":Landroid/os/RemoteException;
    :catch_ecd
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7b5

    .line 2167
    .end local v40    # "e":Landroid/os/RemoteException;
    :catch_ed0
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_770

    .line 2153
    .end local v40    # "e":Landroid/os/RemoteException;
    :catch_ed3
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_72b

    .line 2139
    .end local v40    # "e":Landroid/os/RemoteException;
    :catch_ed6
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_6e6

    .line 2104
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v47    # "i":I
    .restart local v65    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_ed9
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_630

    .line 1991
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v65    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    :catch_edc
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 1974
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v40    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v37    # "context":Landroid/content/Context;
    .restart local v49    # "inm":Landroid/app/INotificationManager;
    .restart local v63    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v71    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v75    # "text":Ljava/lang/String;
    :catch_edf
    move-exception v40

    .restart local v40    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 1823
    :pswitch_data_ee2
    .packed-switch 0x4
        :pswitch_8
        :pswitch_22
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3c
        :pswitch_7d
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1d7
        :pswitch_252
        :pswitch_270
        :pswitch_2b2
        :pswitch_2bd
        :pswitch_3af
        :pswitch_7
        :pswitch_3d5
        :pswitch_e0
        :pswitch_143
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_40a
        :pswitch_422
        :pswitch_43b
        :pswitch_454
        :pswitch_46d
        :pswitch_49e
        :pswitch_4a7
        :pswitch_4c8
        :pswitch_4e5
        :pswitch_551
        :pswitch_5c3
        :pswitch_601
        :pswitch_63c
        :pswitch_7
        :pswitch_665
        :pswitch_7
        :pswitch_6bb
        :pswitch_863
        :pswitch_8b0
        :pswitch_a18
        :pswitch_a5e
        :pswitch_7
        :pswitch_a6d
        :pswitch_a82
        :pswitch_a91
        :pswitch_bd3
        :pswitch_22d
        :pswitch_c33
        :pswitch_578
        :pswitch_c3c
        :pswitch_c59
        :pswitch_700
        :pswitch_745
        :pswitch_78a
        :pswitch_7cf
        :pswitch_81e
        :pswitch_7
        :pswitch_cf8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_ab2
        :pswitch_bad
        :pswitch_d3d
        :pswitch_e8f
    .end packed-switch
.end method
