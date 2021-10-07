.class Lcom/android/server/backup/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 746
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 745
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 50
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 751
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_5ce

    .line 749
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 754
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v3, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 757
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_47

    .line 758
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v9, "Backup requested but no transport available"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 760
    :try_start_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v12, 0x0

    iput-boolean v12, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_44

    monitor-exit v9

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    .line 759
    :catchall_44
    move-exception v3

    monitor-exit v9

    throw v3

    .line 767
    :cond_47
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v6, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .line 769
    .local v7, "oldJournal":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 773
    :try_start_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_a1

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "b$iterator":Ljava/util/Iterator;
    :goto_73
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 775
    .local v23, "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catchall {:try_start_59 .. :try_end_84} :catchall_85

    goto :goto_73

    .line 769
    .end local v23    # "b":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v24    # "b$iterator":Ljava/util/Iterator;
    :catchall_85
    move-exception v3

    monitor-exit v9

    throw v3

    .line 777
    .restart local v24    # "b$iterator":Ljava/util/Iterator;
    :cond_88
    :try_start_88
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "clearing pending backups"

    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v12, 0x0

    iput-object v12, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_a1
    .catchall {:try_start_88 .. :try_end_a1} :catchall_85

    .end local v24    # "b$iterator":Ljava/util/Iterator;
    :cond_a1
    monitor-exit v9

    .line 791
    const/16 v45, 0x1

    .line 792
    .local v45, "staged":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f2

    .line 795
    :try_start_aa
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, "dirName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 797
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 796
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;Landroid/app/backup/IBackupObserver;Ljava/util/ArrayList;Z)V

    .line 798
    .local v2, "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v39

    .line 799
    .local v39, "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c9} :catch_e5

    .line 811
    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v5    # "dirName":Ljava/lang/String;
    .end local v39    # "pbtMessage":Landroid/os/Message;
    :goto_c9
    if-nez v45, :cond_7

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 814
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v12, 0x0

    iput-boolean v12, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z
    :try_end_d9
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_fe

    monitor-exit v9

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 800
    :catch_e5
    move-exception v27

    .line 803
    .local v27, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v9, "Transport became unavailable attempting backup"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/16 v45, 0x0

    goto :goto_c9

    .line 807
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_f2
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v9, "Backup requested but nothing pending"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/16 v45, 0x0

    goto :goto_c9

    .line 813
    :catchall_fe
    move-exception v3

    monitor-exit v9

    throw v3

    .line 824
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v7    # "oldJournal":Ljava/io/File;
    .end local v45    # "staged":Z
    :pswitch_101
    :try_start_101
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .line 826
    .local v10, "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    invoke-interface {v10}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_10a
    .catch Ljava/lang/ClassCastException; {:try_start_101 .. :try_end_10a} :catch_10c

    goto/16 :goto_7

    .line 827
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    :catch_10c
    move-exception v26

    .line 828
    .local v26, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid backup task in flight, obj="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 837
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_12d
    :try_start_12d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/util/Pair;

    .line 838
    .local v47, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    move-object/from16 v0, v47

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    move-object/from16 v0, v47

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->operationComplete(J)V
    :try_end_148
    .catch Ljava/lang/ClassCastException; {:try_start_12d .. :try_end_148} :catch_14a

    goto/16 :goto_7

    .line 839
    .end local v47    # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    :catch_14a
    move-exception v26

    .line 840
    .restart local v26    # "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid completion in flight, obj="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 849
    .end local v26    # "e":Ljava/lang/ClassCastException;
    :pswitch_16b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    .line 850
    .local v34, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    new-instance v8, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 851
    move-object/from16 v0, v34

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v34

    iget-boolean v12, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeApks:Z

    move-object/from16 v0, v34

    iget-boolean v13, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeObbs:Z

    .line 852
    move-object/from16 v0, v34

    iget-boolean v14, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    move-object/from16 v0, v34

    iget-boolean v15, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    .line 853
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->curPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 854
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->allApps:Z

    move/from16 v18, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeSystem:Z

    move/from16 v19, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doCompress:Z

    move/from16 v20, v0

    .line 855
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    .line 850
    invoke-direct/range {v8 .. v22}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 856
    .local v8, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v9, "adb-backup"

    invoke-direct {v3, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 862
    .end local v8    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
    .end local v34    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    :pswitch_1cb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 863
    .local v46, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v9, "transport-backup"

    move-object/from16 v0, v46

    invoke-direct {v3, v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 869
    .end local v46    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :pswitch_1e2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    .line 870
    .local v38, "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MSG_RUN_RESTORE observer="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v38

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v10, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v38

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 872
    move-object/from16 v0, v38

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v38

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    move/from16 v17, v0

    .line 873
    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    move/from16 v18, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 871
    invoke-direct/range {v10 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    .line 874
    .restart local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    .line 875
    .local v43, "restoreMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 883
    .end local v10    # "task":Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .end local v38    # "params":Lcom/android/server/backup/BackupManagerService$RestoreParams;
    .end local v43    # "restoreMsg":Landroid/os/Message;
    :pswitch_246
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    .line 884
    .local v36, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 885
    move-object/from16 v0, v36

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    .line 886
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    .line 884
    invoke-direct/range {v11 .. v17}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 887
    .local v11, "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v9, "adb-restore"

    invoke-direct {v3, v11, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 893
    .end local v11    # "task":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
    .end local v36    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :pswitch_27c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/server/backup/BackupManagerService$ClearParams;

    .line 894
    .local v32, "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v32

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v32

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_7

    .line 901
    .end local v32    # "params":Lcom/android/server/backup/BackupManagerService$ClearParams;
    :pswitch_29a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    .line 902
    .local v33, "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v33

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->transportName:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9, v12}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 911
    .end local v33    # "params":Lcom/android/server/backup/BackupManagerService$ClearRetryParams;
    :pswitch_2b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 912
    :try_start_2ba
    new-instance v41, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 913
    .local v41, "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V
    :try_end_2d0
    .catchall {:try_start_2ba .. :try_end_2d0} :catchall_2e1

    monitor-exit v9

    .line 916
    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v41

    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_7

    .line 911
    .end local v41    # "queue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2e1
    move-exception v3

    monitor-exit v9

    throw v3

    .line 922
    :pswitch_2e4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v12, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    .line 923
    :try_start_2eb
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_319

    const/4 v3, 0x1

    move v9, v3

    :goto_2f7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v9, v3}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 925
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 924
    const/4 v13, 0x0

    invoke-virtual {v3, v13, v14, v15, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_316
    .catchall {:try_start_2eb .. :try_end_316} :catchall_31c

    monitor-exit v12

    goto/16 :goto_7

    .line 923
    :cond_319
    const/4 v3, 0x0

    move v9, v3

    goto :goto_2f7

    .line 922
    :catchall_31c
    move-exception v3

    monitor-exit v12

    throw v3

    .line 933
    :pswitch_31f
    const/16 v44, 0x0

    .line 934
    .local v44, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    .line 936
    .local v37, "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    :try_start_329
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v44

    .line 938
    .local v44, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    monitor-enter v9
    :try_end_336
    .catch Ljava/lang/Exception; {:try_start_329 .. :try_end_336} :catch_377
    .catchall {:try_start_329 .. :try_end_336} :catchall_419

    .line 939
    :try_start_336
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    move-object/from16 v0, v44

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;
    :try_end_33e
    .catchall {:try_start_336 .. :try_end_33e} :catchall_374

    :try_start_33e
    monitor-exit v9

    .line 941
    if-nez v44, :cond_349

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v9, 0xb0f

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_349
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_349} :catch_377
    .catchall {:try_start_33e .. :try_end_349} :catchall_419

    .line 945
    :cond_349
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_358

    .line 947
    :try_start_34f
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_358
    .catch Landroid/os/RemoteException; {:try_start_34f .. :try_end_358} :catch_3e2
    .catch Ljava/lang/Exception; {:try_start_34f .. :try_end_358} :catch_3c1

    .line 956
    :cond_358
    :goto_358
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 957
    const/16 v3, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 938
    :catchall_374
    move-exception v3

    :try_start_375
    monitor-exit v9

    throw v3
    :try_end_377
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_377} :catch_377
    .catchall {:try_start_375 .. :try_end_377} :catchall_419

    .line 942
    .end local v44    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_377
    move-exception v27

    .line 943
    .restart local v27    # "e":Ljava/lang/Exception;
    :try_start_378
    const-string/jumbo v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error from transport getting set list: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_396
    .catchall {:try_start_378 .. :try_end_396} :catchall_419

    .line 945
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_3a5

    .line 947
    :try_start_39c
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_3a5
    .catch Landroid/os/RemoteException; {:try_start_39c .. :try_end_3a5} :catch_40e
    .catch Ljava/lang/Exception; {:try_start_39c .. :try_end_3a5} :catch_3ee

    .line 956
    :cond_3a5
    :goto_3a5
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 957
    const/16 v3, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 950
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v44    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_3c1
    move-exception v27

    .line 951
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Restore observer threw: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_358

    .line 948
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_3e2
    move-exception v42

    .line 949
    .local v42, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v9, "Unable to report listing to observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_358

    .line 950
    .end local v42    # "re":Landroid/os/RemoteException;
    .end local v44    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v27    # "e":Ljava/lang/Exception;
    :catch_3ee
    move-exception v27

    .line 951
    const-string/jumbo v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Restore observer threw: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a5

    .line 948
    :catch_40e
    move-exception v42

    .line 949
    .restart local v42    # "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v9, "Unable to report listing to observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a5

    .line 944
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v42    # "re":Landroid/os/RemoteException;
    :catchall_419
    move-exception v3

    .line 945
    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v9, :cond_429

    .line 947
    :try_start_420
    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_429
    .catch Landroid/os/RemoteException; {:try_start_420 .. :try_end_429} :catch_464
    .catch Ljava/lang/Exception; {:try_start_420 .. :try_end_429} :catch_444

    .line 956
    :cond_429
    :goto_429
    const/16 v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 957
    const/16 v9, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 959
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 944
    throw v3

    .line 950
    :catch_444
    move-exception v27

    .line 951
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Restore observer threw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_429

    .line 948
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_464
    move-exception v42

    .line 949
    .restart local v42    # "re":Landroid/os/RemoteException;
    const-string/jumbo v9, "BackupManagerService"

    const-string/jumbo v12, "Unable to report listing to observer"

    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_429

    .line 966
    .end local v37    # "params":Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;
    .end local v42    # "re":Landroid/os/RemoteException;
    :pswitch_46f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v9, v12}, Lcom/android/server/backup/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 972
    :pswitch_480
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    monitor-enter v9

    .line 973
    :try_start_485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_4bc

    .line 978
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Restore session timed out; aborting"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->markTimedOut()V

    .line 980
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v12, v12, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 981
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v14, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 980
    invoke-direct {v3, v12, v13, v14}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_4bc
    .catchall {:try_start_485 .. :try_end_4bc} :catchall_4bf

    :cond_4bc
    monitor-exit v9

    goto/16 :goto_7

    .line 972
    :catchall_4bf
    move-exception v3

    monitor-exit v9

    throw v3

    .line 989
    :pswitch_4c2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v9

    .line 990
    :try_start_4c9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/backup/BackupManagerService$FullParams;

    .line 991
    .local v35, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v35, :cond_50a

    .line 992
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->delete(I)V

    .line 1001
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_4fe
    .catchall {:try_start_4c9 .. :try_end_4fe} :catchall_529

    if-eqz v3, :cond_507

    .line 1003
    :try_start_500
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_507
    .catch Landroid/os/RemoteException; {:try_start_500 .. :try_end_507} :catch_5cb
    .catchall {:try_start_500 .. :try_end_507} :catchall_529

    :cond_507
    :goto_507
    monitor-exit v9

    goto/16 :goto_7

    .line 1009
    :cond_50a
    :try_start_50a
    const-string/jumbo v3, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "couldn\'t find params for token "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_528
    .catchall {:try_start_50a .. :try_end_528} :catchall_529

    goto :goto_507

    .line 989
    .end local v35    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_529
    move-exception v3

    monitor-exit v9

    throw v3

    .line 1017
    :pswitch_52c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/content/Intent;

    .line 1018
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_7

    .line 1024
    .end local v28    # "intent":Landroid/content/Intent;
    :pswitch_543
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/server/backup/BackupManagerService$BackupParams;

    .line 1028
    .local v31, "params":Lcom/android/server/backup/BackupManagerService$BackupParams;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v16, "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->kvPackages:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "packageName$iterator":Ljava/util/Iterator;
    :goto_558
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_575

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1030
    .local v29, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    invoke-direct {v3, v9, v0}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_558

    .line 1032
    .end local v29    # "packageName":Ljava/lang/String;
    :cond_575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1035
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v31

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v31

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->dirName:Ljava/lang/String;

    .line 1036
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$BackupParams;->fullPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v17, 0x0

    const/16 v20, 0x1

    move-object v12, v2

    .line 1035
    invoke-direct/range {v12 .. v20}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;Landroid/app/backup/IBackupObserver;Ljava/util/ArrayList;Z)V

    .line 1037
    .restart local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v39

    .line 1038
    .restart local v39    # "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 1044
    .end local v2    # "pbt":Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
    .end local v16    # "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .end local v30    # "packageName$iterator":Ljava/util/Iterator;
    .end local v31    # "params":Lcom/android/server/backup/BackupManagerService$BackupParams;
    .end local v39    # "pbtMessage":Landroid/os/Message;
    :pswitch_5b8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 1048
    .local v40, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1004
    .end local v40    # "pkgName":Ljava/lang/String;
    .restart local v35    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catch_5cb
    move-exception v25

    .local v25, "e":Landroid/os/RemoteException;
    goto/16 :goto_507

    .line 751
    :pswitch_data_5ce
    .packed-switch 0x1
        :pswitch_8
        :pswitch_16b
        :pswitch_1e2
        :pswitch_27c
        :pswitch_2b3
        :pswitch_31f
        :pswitch_46f
        :pswitch_480
        :pswitch_4c2
        :pswitch_246
        :pswitch_2e4
        :pswitch_29a
        :pswitch_52c
        :pswitch_1cb
        :pswitch_543
        :pswitch_5b8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_101
        :pswitch_12d
    .end packed-switch
.end method
