.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/TaskPersister;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 618
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 617
    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 623
    const/16 v24, 0xa

    invoke-static/range {v24 .. v24}, Landroid/os/Process;->setThreadPriority(I)V

    .line 624
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 630
    .local v17, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 631
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_82

    move-result v20

    .local v20, "probablyDone":Z
    monitor-exit v25

    .line 633
    if-eqz v20, :cond_ae

    .line 635
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->clear()V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v25

    monitor-enter v25

    :try_start_32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v24

    add-int/lit8 v23, v24, -0x1

    .local v23, "taskNdx":I
    :goto_45
    if-ltz v23, :cond_9d

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 642
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v24, v0

    if-nez v24, :cond_6b

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7f

    .line 643
    :cond_6b
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    if-eqz v24, :cond_85

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z
    :try_end_7c
    .catchall {:try_start_32 .. :try_end_7c} :catchall_97

    move-result v24

    if-eqz v24, :cond_85

    .line 638
    :cond_7f
    :goto_7f
    add-int/lit8 v23, v23, -0x1

    goto :goto_45

    .line 630
    .end local v20    # "probablyDone":Z
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :catchall_82
    move-exception v24

    monitor-exit v25

    throw v24

    .line 645
    .restart local v20    # "probablyDone":Z
    .restart local v22    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v23    # "taskNdx":I
    :cond_85
    :try_start_85
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catchall {:try_start_85 .. :try_end_96} :catchall_97

    goto :goto_7f

    .line 636
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :catchall_97
    move-exception v24

    monitor-exit v25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v24

    .restart local v23    # "taskNdx":I
    :cond_9d
    monitor-exit v25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap2(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    .line 654
    .end local v23    # "taskNdx":I
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-wrap3(Lcom/android/server/am/TaskPersister;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 659
    :try_start_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    const-wide/16 v28, -0x1

    cmp-long v24, v26, v28

    if-eqz v24, :cond_e3

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x1f4

    add-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    .line 666
    :cond_e3
    :goto_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_129

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v24, v26, v28

    if-eqz v24, :cond_11d

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_11d
    .catchall {:try_start_be .. :try_end_11d} :catchall_1a4

    .line 673
    :cond_11d
    :try_start_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_126
    .catch Ljava/lang/InterruptedException; {:try_start_11d .. :try_end_126} :catch_127
    .catchall {:try_start_11d .. :try_end_126} :catchall_1a4

    goto :goto_e3

    .line 674
    :catch_127
    move-exception v9

    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_e3

    .line 679
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_129
    :try_start_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 681
    .local v16, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 684
    .local v18, "now":J
    :goto_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J
    :try_end_14e
    .catchall {:try_start_129 .. :try_end_14e} :catchall_1a4

    move-result-wide v26

    cmp-long v24, v18, v26

    if-gez v24, :cond_171

    .line 688
    :try_start_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    sub-long v26, v26, v18

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->wait(J)V
    :try_end_16c
    .catch Ljava/lang/InterruptedException; {:try_start_153 .. :try_end_16c} :catch_2d1
    .catchall {:try_start_153 .. :try_end_16c} :catchall_1a4

    .line 691
    :goto_16c
    :try_start_16c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_16f
    .catchall {:try_start_16c .. :try_end_16f} :catchall_1a4

    move-result-wide v18

    goto :goto_145

    :cond_171
    monitor-exit v25

    .line 697
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v24, v0

    if-eqz v24, :cond_1f3

    move-object/from16 v15, v16

    .line 698
    check-cast v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 699
    .local v15, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v12, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 700
    .local v12, "filePath":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/TaskPersister;->-wrap0(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1a7

    .line 701
    const-string/jumbo v24, "TaskPersister"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error while creating images directory for file: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 658
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v18    # "now":J
    :catchall_1a4
    move-exception v24

    monitor-exit v25

    throw v24

    .line 704
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v18    # "now":J
    :cond_1a7
    iget-object v6, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 706
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 708
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    :try_start_1aa
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b8} :catch_1c8
    .catchall {:try_start_1aa .. :try_end_1b8} :catchall_1ee

    .line 709
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v14, "imageFile":Ljava/io/FileOutputStream;
    :try_start_1b8
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1c3} :catch_2cd
    .catchall {:try_start_1b8 .. :try_end_1c3} :catchall_2c9

    .line 713
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_a

    .line 710
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    :catch_1c8
    move-exception v8

    .line 711
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_1c9
    :try_start_1c9
    const-string/jumbo v24, "TaskPersister"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "saveImage: unable to save "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e9
    .catchall {:try_start_1c9 .. :try_end_1e9} :catchall_1ee

    .line 713
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_a

    .line 712
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1ee
    move-exception v24

    .line 713
    :goto_1ef
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 712
    throw v24

    .line 715
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_1f3
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 717
    const/16 v21, 0x0

    .line 718
    .local v21, "stringWriter":Ljava/io/StringWriter;
    check-cast v16, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v22, v0

    .line 720
    .restart local v22    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v25

    monitor-enter v25

    :try_start_210
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 721
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v24, v0
    :try_end_219
    .catchall {:try_start_210 .. :try_end_219} :catchall_2bb

    if-eqz v24, :cond_229

    .line 725
    :try_start_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap1(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_228} :catch_2c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21b .. :try_end_228} :catch_2c6
    .catchall {:try_start_21b .. :try_end_228} :catchall_2bb

    move-result-object v21

    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    :cond_229
    :goto_229
    monitor-exit v25

    .line 720
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 731
    if-eqz v21, :cond_a

    .line 733
    const/4 v11, 0x0

    .line 734
    .local v11, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 736
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_231
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v24, Ljava/io/File;

    .line 737
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/am/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v25

    .line 738
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "_task"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 739
    const-string/jumbo v27, ".xml"

    .line 738
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 736
    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_231 .. :try_end_26c} :catch_2c1

    .line 740
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_26c
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    move-result-object v11

    .line 741
    .local v11, "file":Ljava/io/FileOutputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 742
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 743
    invoke-virtual {v5, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_26c .. :try_end_287} :catch_289

    goto/16 :goto_a

    .line 745
    .end local v11    # "file":Ljava/io/FileOutputStream;
    :catch_289
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 746
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    :goto_28b
    if-eqz v11, :cond_290

    .line 747
    invoke-virtual {v4, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 749
    :cond_290
    const-string/jumbo v24, "TaskPersister"

    .line 750
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unable to open "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " for persisting. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 749
    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 720
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v21    # "stringWriter":Ljava/io/StringWriter;
    :catchall_2bb
    move-exception v24

    monitor-exit v25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v24

    .line 745
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v11, "file":Ljava/io/FileOutputStream;
    :catch_2c1
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_28b

    .line 726
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v21    # "stringWriter":Ljava/io/StringWriter;
    :catch_2c3
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_229

    .line 727
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2c6
    move-exception v10

    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_229

    .line 712
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_2c9
    move-exception v24

    move-object v13, v14

    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_1ef

    .line 710
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    :catch_2cd
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_1c9

    .line 689
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_2d1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_16c
.end method
