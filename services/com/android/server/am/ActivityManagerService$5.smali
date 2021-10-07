.class Lcom/android/server/am/ActivityManagerService$5;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 2894
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 2900
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_3a

    .line 2901
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2902
    .local v6, "now":J
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/32 v10, 0xfffffff

    add-long/2addr v8, v10

    sub-long v2, v8, v6

    .line 2903
    .local v2, "nextCpuDelay":J
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerService;->mLastWriteTime:J

    const-wide/32 v10, 0x1b7740

    add-long/2addr v8, v10

    sub-long v4, v8, v6

    .line 2906
    .local v4, "nextWriteDelay":J
    cmp-long v8, v4, v2

    if-gez v8, :cond_22

    .line 2907
    move-wide v2, v4

    .line 2909
    :cond_22
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_33

    .line 2910
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2911
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityManagerService$5;->wait(J)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_46

    :cond_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_34} :catch_49
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_34} :catch_3a

    .line 2916
    .end local v2    # "nextCpuDelay":J
    .end local v4    # "nextWriteDelay":J
    .end local v6    # "now":J
    :goto_34
    :try_start_34
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_0

    .line 2917
    :catch_3a
    move-exception v0

    .line 2918
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Unexpected exception collecting process stats"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2900
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_46
    move-exception v8

    :try_start_47
    monitor-exit p0

    throw v8
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_49} :catch_49
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_49} :catch_3a

    .line 2914
    :catch_49
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_34
.end method
