.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8590
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 8580
    const-string/jumbo v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    .line 8591
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 8592
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 8593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 8590
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .prologue
    .line 8736
    return-void
.end method

.method public handleTimeout()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8745
    const-string/jumbo v0, "StreamFeederThread"

    const-string/jumbo v1, "Full-data restore target timed out; shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8747
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->handleTimeout()V

    .line 8749
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8750
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v4, v0, v3

    .line 8751
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8752
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v4, v0, v2

    .line 8743
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .prologue
    .line 8739
    return-void
.end method

.method public run()V
    .registers 24

    .prologue
    .line 8598
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8599
    .local v16, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    const/16 v18, 0x0

    .line 8602
    .local v18, "status":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8601
    const/16 v3, 0xb1c

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 8604
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/content/pm/PackageInfo;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    .line 8605
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    .line 8607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v13, v2, v3

    .line 8608
    .local v13, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v19, v2, v3

    .line 8609
    .local v19, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v20, v2, v3

    .line 8611
    .local v20, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v10, 0x8000

    .line 8612
    .local v10, "bufferSize":I
    new-array v9, v10, [B

    .line 8613
    .local v9, "buffer":[B
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8614
    .local v14, "engineOut":Ljava/io/FileOutputStream;
    new-instance v22, Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8617
    .local v22, "transportIn":Ljava/io/FileInputStream;
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    const-string/jumbo v4, "unified-restore-engine"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 8620
    :cond_84
    :goto_84
    if-nez v18, :cond_bb

    .line 8622
    :try_start_86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v17

    .line 8623
    .local v17, "result":I
    if-lez v17, :cond_b4

    .line 8629
    move/from16 v0, v17

    if-le v0, v10, :cond_a0

    .line 8630
    move/from16 v10, v17

    .line 8631
    move/from16 v0, v17

    new-array v9, v0, [B

    .line 8633
    :cond_a0
    move/from16 v21, v17

    .line 8634
    .local v21, "toCopy":I
    :goto_a2
    if-lez v21, :cond_84

    .line 8635
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v9, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    .line 8636
    .local v15, "n":I
    const/4 v2, 0x0

    invoke-virtual {v14, v9, v2, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_b1} :catch_282
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b1} :catch_1ba
    .catchall {:try_start_86 .. :try_end_b1} :catchall_348

    .line 8637
    sub-int v21, v21, v15

    goto :goto_a2

    .line 8642
    .end local v15    # "n":I
    .end local v21    # "toCopy":I
    :cond_b4
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_12e

    .line 8648
    const/16 v18, 0x0

    .line 8679
    .end local v17    # "result":I
    :cond_bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x1

    :goto_f9
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    .line 8695
    if-nez v18, :cond_16d

    .line 8697
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getWidgetData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;[B)[B

    .line 8728
    :goto_11e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 8597
    :goto_12d
    return-void

    .line 8653
    .restart local v17    # "result":I
    :cond_12e
    :try_start_12e
    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " streaming restore for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8653
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8655
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb0f

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_167} :catch_282
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_167} :catch_1ba
    .catchall {:try_start_12e .. :try_end_167} :catchall_348

    .line 8656
    move/from16 v18, v17

    goto/16 :goto_84

    .line 8691
    .end local v17    # "result":I
    :cond_16b
    const/4 v2, 0x0

    goto :goto_f9

    .line 8709
    :cond_16d
    :try_start_16d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_178} :catch_194

    .line 8719
    :goto_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8722
    const/16 v2, -0x3e8

    move/from16 v0, v18

    if-ne v0, v2, :cond_1b6

    .line 8723
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_11e

    .line 8710
    :catch_194
    move-exception v12

    .line 8713
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport threw from abortFullRestore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8714
    const/16 v18, -0x3e8

    goto :goto_178

    .line 8725
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1b6
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto/16 :goto_11e

    .line 8668
    :catch_1ba
    move-exception v12

    .line 8672
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_1bb
    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport failed during restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8673
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb0f

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1e1
    .catchall {:try_start_1bb .. :try_end_1e1} :catchall_348

    .line 8674
    const/16 v18, -0x3e8

    .line 8679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_25b

    const/4 v2, 0x1

    :goto_221
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    .line 8709
    :try_start_224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_22f} :catch_25d

    .line 8719
    :goto_22f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8722
    const/16 v2, -0x3e8

    move/from16 v0, v18

    if-ne v0, v2, :cond_27f

    .line 8723
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8728
    :goto_24a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_12d

    .line 8691
    :cond_25b
    const/4 v2, 0x0

    goto :goto_221

    .line 8710
    :catch_25d
    move-exception v12

    .line 8713
    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport threw from abortFullRestore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8714
    const/16 v18, -0x3e8

    goto :goto_22f

    .line 8725
    :cond_27f
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_24a

    .line 8660
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_282
    move-exception v11

    .line 8664
    .local v11, "e":Ljava/io/IOException;
    :try_start_283
    const-string/jumbo v2, "StreamFeederThread"

    const-string/jumbo v3, "Unable to route data for restore"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8665
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 8666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "I/O error on pipes"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 8665
    const/16 v3, 0xb10

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2a7
    .catchall {:try_start_283 .. :try_end_2a7} :catchall_348

    .line 8667
    const/16 v18, -0x3eb

    .line 8679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_321

    const/4 v2, 0x1

    :goto_2e7
    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    .line 8709
    :try_start_2ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_2f5
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_2f5} :catch_323

    .line 8719
    :goto_2f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8722
    const/16 v2, -0x3e8

    move/from16 v0, v18

    if-ne v0, v2, :cond_345

    .line 8723
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8728
    :goto_310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    goto/16 :goto_12d

    .line 8691
    :cond_321
    const/4 v2, 0x0

    goto :goto_2e7

    .line 8710
    :catch_323
    move-exception v12

    .line 8713
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "StreamFeederThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport threw from abortFullRestore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8714
    const/16 v18, -0x3e8

    goto :goto_2f5

    .line 8725
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_345
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_310

    .line 8675
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_348
    move-exception v2

    .line 8679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 8687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 8691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    if-eqz v3, :cond_3bc

    const/4 v3, 0x1

    :goto_387
    invoke-static {v4, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Z)Z

    .line 8695
    if-nez v18, :cond_3be

    .line 8697
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 8701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 8704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->getWidgetData()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-set2(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;[B)[B

    .line 8728
    :goto_3ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 8729
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 8675
    throw v2

    .line 8691
    :cond_3bc
    const/4 v3, 0x0

    goto :goto_387

    .line 8709
    :cond_3be
    :try_start_3be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_3c9
    .catch Ljava/lang/Exception; {:try_start_3be .. :try_end_3c9} :catch_3e5

    .line 8719
    :goto_3c9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 8722
    const/16 v3, -0x3e8

    move/from16 v0, v18

    if-ne v0, v3, :cond_407

    .line 8723
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_3ac

    .line 8710
    :catch_3e5
    move-exception v12

    .line 8713
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "StreamFeederThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transport threw from abortFullRestore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8714
    const/16 v18, -0x3e8

    goto :goto_3c9

    .line 8725
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_407
    sget-object v16, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_3ac
.end method
