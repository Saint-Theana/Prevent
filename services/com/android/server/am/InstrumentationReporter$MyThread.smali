.class final Lcom/android/server/am/InstrumentationReporter$MyThread;
.super Ljava/lang/Thread;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InstrumentationReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/InstrumentationReporter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/InstrumentationReporter;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 41
    const-string/jumbo v0, "InstrumentationReporter"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 48
    const/4 v5, 0x0

    .line 51
    .local v5, "waited":Z
    :cond_5
    :goto_5
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v7, v6, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 52
    :try_start_a
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v4, v6, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 53
    .local v4, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 54
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_51

    move-result v6

    if-eqz v6, :cond_30

    .line 55
    :cond_1b
    if-nez v5, :cond_29

    .line 58
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v6, v6, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_26} :catch_8b
    .catchall {:try_start_1d .. :try_end_26} :catchall_51

    .line 61
    :goto_26
    const/4 v5, 0x1

    monitor-exit v7

    goto :goto_5

    .line 64
    :cond_29
    :try_start_29
    iget-object v6, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_51

    monitor-exit v7

    .line 66
    return-void

    :cond_30
    monitor-exit v7

    .line 71
    const/4 v5, 0x0

    .line 73
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 74
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/InstrumentationReporter$Report;

    .line 76
    .local v3, "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    :try_start_3f
    iget v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    if-nez v6, :cond_54

    .line 80
    iget-object v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v7, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v8, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    .line 81
    iget-object v9, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    .line 80
    invoke-interface {v6, v7, v8, v9}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4e} :catch_60

    .line 73
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 51
    .end local v2    # "i":I
    .end local v3    # "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :catchall_51
    move-exception v6

    monitor-exit v7

    throw v6

    .line 86
    .restart local v2    # "i":I
    .restart local v3    # "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :cond_54
    :try_start_54
    iget-object v6, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v7, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v8, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    .line 87
    iget-object v9, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    .line 86
    invoke-interface {v6, v7, v8, v9}, Landroid/app/IInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5f} :catch_60

    goto :goto_4e

    .line 89
    :catch_60
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure reporting to instrumentation watcher: comp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 91
    iget-object v8, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 91
    const-string/jumbo v8, " results="

    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 91
    iget-object v8, v3, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    :catch_8b
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_26
.end method
