.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 73
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    const-string/jumbo v1, "/system/bin/audioserver"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "/system/bin/cameraserver"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "/system/bin/drmserver"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "/system/bin/mediadrmserver"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "/system/bin/mediaserver"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "/system/bin/sdcard"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "/system/bin/surfaceflinger"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "media.codec"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "media.extractor"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "com.android.bluetooth"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 73
    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    const-wide/32 v4, 0xea60

    .line 232
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 240
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 241
    const-string/jumbo v3, "foreground thread"

    move-object v1, p0

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 242
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    const-string/jumbo v3, "main thread"

    move-object v1, p0

    .line 245
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 249
    const-string/jumbo v3, "ui thread"

    move-object v1, p0

    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 252
    const-string/jumbo v3, "i/o thread"

    move-object v1, p0

    .line 251
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 255
    const-string/jumbo v3, "display thread"

    move-object v1, p0

    .line 254
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 231
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 349
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 353
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .registers 6
    .param p1, "c"    # C

    .prologue
    .line 574
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 575
    .local v1, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    .line 576
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 572
    .end local v1    # "sysrq_trigger":Ljava/io/FileWriter;
    :goto_e
    return-void

    .line 577
    :catch_f
    move-exception v0

    .line 578
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Watchdog"

    const-string/jumbo v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 583
    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 585
    :cond_10
    return-object v2

    .line 588
    :cond_11
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 589
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    .prologue
    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 328
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 329
    .local v0, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 331
    .end local v0    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1d
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 337
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 338
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 339
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 342
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .prologue
    .line 224
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 225
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 228
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private getSystemNotRespondingAction(Landroid/app/IActivityController;Ljava/lang/String;)I
    .registers 11
    .param p1, "controller"    # Landroid/app/IActivityController;
    .param p2, "subject"    # Ljava/lang/String;

    .prologue
    .line 357
    const/4 v0, -0x1

    .line 358
    .local v0, "action":I
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/android/server/Watchdog$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Landroid/app/IActivityController;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 370
    .local v4, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :try_start_b
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 371
    const-wide/16 v6, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_20} :catch_42
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_20} :catch_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_20} :catch_22

    move-result v0

    .line 382
    :goto_21
    return v0

    .line 376
    :catch_22
    move-exception v3

    .line 377
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 378
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 380
    :cond_2d
    const-string/jumbo v5, "Watchdog"

    const-string/jumbo v6, "getSystemNotRespondingAction"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 374
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_37
    move-exception v2

    .line 375
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v5, "Watchdog"

    const-string/jumbo v6, "getSystemNotRespondingAction"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 372
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_42
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "Watchdog"

    const-string/jumbo v6, "getSystemNotRespondingAction"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .prologue
    .line 291
    monitor-enter p0

    .line 292
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 293
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 291
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    monitor-exit p0

    .line 290
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4
    .param p1, "thread"    # Landroid/os/Handler;

    .prologue
    .line 300
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 299
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 304
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_10

    monitor-exit p0

    .line 303
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 263
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 265
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    .line 266
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    .line 265
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 261
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_1
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 273
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    .line 270
    return-void

    .line 271
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string/jumbo v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rebooting system because: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    .line 320
    .local v1, "pms":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_25
    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    .line 316
    :goto_28
    return-void

    .line 321
    :catch_29
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_28
.end method

.method public run()V
    .registers 40

    .prologue
    .line 387
    const/16 v33, 0x0

    .line 392
    .local v33, "waitedHalf":Z
    :goto_2
    const/4 v10, 0x0

    .line 393
    .local v10, "debuggerWasConnected":I
    monitor-enter p0

    .line 394
    const-wide/16 v28, 0x7530

    .line 397
    .local v28, "timeout":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_29

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/Watchdog$HandlerChecker;

    .line 399
    .local v14, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v14}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 397
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 410
    .end local v14    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 411
    .local v24, "start":J
    :goto_2d
    const-wide/16 v34, 0x0

    cmp-long v34, v28, v34

    if-lez v34, :cond_60

    .line 412
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_5d

    move-result v34

    if-eqz v34, :cond_3a

    .line 413
    const/4 v10, 0x2

    .line 416
    :cond_3a
    :try_start_3a
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_41} :catch_53
    .catchall {:try_start_3a .. :try_end_41} :catchall_5d

    .line 420
    :goto_41
    :try_start_41
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v34

    if-eqz v34, :cond_48

    .line 421
    const/4 v10, 0x2

    .line 423
    :cond_48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v24

    const-wide/16 v36, 0x7530

    sub-long v28, v36, v34

    goto :goto_2d

    .line 417
    :catch_53
    move-exception v12

    .line 418
    .local v12, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v34, "Watchdog"

    move-object/from16 v0, v34

    invoke-static {v0, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_5d

    goto :goto_41

    .line 393
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .end local v24    # "start":J
    :catchall_5d
    move-exception v34

    monitor-exit p0

    throw v34

    .line 426
    .restart local v24    # "start":J
    :cond_60
    :try_start_60
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_5d

    move-result v32

    .line 427
    .local v32, "waitState":I
    if-nez v32, :cond_6a

    .line 429
    const/16 v33, 0x0

    :cond_68
    :goto_68
    monitor-exit p0

    goto :goto_2

    .line 431
    :cond_6a
    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_68

    .line 434
    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_a8

    .line 435
    if-nez v33, :cond_68

    .line 438
    :try_start_7c
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v20, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v34, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 440
    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    .line 442
    const/16 v33, 0x1

    goto :goto_68

    .line 448
    .end local v20    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 449
    .local v7, "blockedCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v26

    .line 450
    .local v26, "subject":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_b6
    .catchall {:try_start_7c .. :try_end_b6} :catchall_5d

    .local v6, "allowRestart":Z
    monitor-exit p0

    .line 456
    const/16 v34, 0xaf2

    move/from16 v0, v34

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 458
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .restart local v20    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v34, v0

    if-lez v34, :cond_ed

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_ed
    if-eqz v33, :cond_21d

    const/16 v34, 0x0

    :goto_f1
    sget-object v35, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 463
    move/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v35

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v22

    .line 468
    .local v22, "stack":Ljava/io/File;
    const-wide/16 v34, 0x7d0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemClock;->sleep(J)V

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 475
    const-string/jumbo v34, "dalvik.vm.stack-trace-file"

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 476
    .local v31, "tracesPath":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "_SystemServer_WDT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v35, v0

    new-instance v36, Ljava/util/Date;

    invoke-direct/range {v36 .. v36}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v35 .. v36}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 478
    .local v27, "traceFileNameAmendment":Ljava/lang/String;
    if-eqz v31, :cond_198

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_198

    .line 479
    new-instance v30, Ljava/io/File;

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    .local v30, "traceRenameFile":Ljava/io/File;
    const-string/jumbo v34, "."

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 482
    .local v17, "lpos":I
    const/16 v34, -0x1

    move/from16 v0, v34

    move/from16 v1, v17

    if-eq v0, v1, :cond_221

    .line 483
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v35, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v35

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 486
    .local v19, "newTracesPath":Ljava/lang/String;
    :goto_186
    new-instance v34, Ljava/io/File;

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 487
    move-object/from16 v31, v19

    .line 490
    .end local v17    # "lpos":I
    .end local v19    # "newTracesPath":Ljava/lang/String;
    .end local v30    # "traceRenameFile":Ljava/io/File;
    :cond_198
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v18, "newFd":Ljava/io/File;
    new-instance v11, Lcom/android/server/Watchdog$2;

    const-string/jumbo v34, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 502
    .local v11, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 504
    const-wide/16 v34, 0x7d0

    :try_start_1b6
    move-wide/from16 v0, v34

    invoke-virtual {v11, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_1bb
    .catch Ljava/lang/InterruptedException; {:try_start_1b6 .. :try_end_1bb} :catch_23c

    .line 512
    :goto_1bb
    const-string/jumbo v34, "persist.sys.crashOnWatchdog"

    const/16 v35, 0x0

    .line 511
    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 513
    .local v9, "crashOnWatchdog":Z
    if-eqz v9, :cond_1ef

    .line 516
    const-string/jumbo v34, "Watchdog"

    const-string/jumbo v35, "Triggering SysRq for system_server watchdog"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v34, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 518
    const/16 v34, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 521
    const-wide/16 v34, 0xbb8

    invoke-static/range {v34 .. v35}, Landroid/os/SystemClock;->sleep(J)V

    .line 524
    const/16 v34, 0x63

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 528
    :cond_1ef
    monitor-enter p0

    .line 529
    :try_start_1f0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_1f4
    .catchall {:try_start_1f0 .. :try_end_1f4} :catchall_23f

    .local v8, "controller":Landroid/app/IActivityController;
    monitor-exit p0

    .line 531
    if-eqz v8, :cond_242

    .line 532
    const-string/jumbo v34, "Watchdog"

    const-string/jumbo v35, "Reporting stuck state to activity controller"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string/jumbo v34, "Service dumps disabled due to hung system process."

    invoke-static/range {v34 .. v34}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/android/server/Watchdog;->getSystemNotRespondingAction(Landroid/app/IActivityController;Ljava/lang/String;)I

    move-result v21

    .line 536
    .local v21, "res":I
    if-ltz v21, :cond_242

    .line 537
    const-string/jumbo v34, "Watchdog"

    const-string/jumbo v35, "Activity controller requested to coninue to wait"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/16 v33, 0x0

    .line 539
    goto/16 :goto_2

    .line 464
    .end local v8    # "controller":Landroid/app/IActivityController;
    .end local v9    # "crashOnWatchdog":Z
    .end local v11    # "dropboxThread":Ljava/lang/Thread;
    .end local v18    # "newFd":Ljava/io/File;
    .end local v21    # "res":I
    .end local v22    # "stack":Ljava/io/File;
    .end local v27    # "traceFileNameAmendment":Ljava/lang/String;
    .end local v31    # "tracesPath":Ljava/lang/String;
    :cond_21d
    const/16 v34, 0x1

    goto/16 :goto_f1

    .line 485
    .restart local v17    # "lpos":I
    .restart local v22    # "stack":Ljava/io/File;
    .restart local v27    # "traceFileNameAmendment":Ljava/lang/String;
    .restart local v30    # "traceRenameFile":Ljava/io/File;
    .restart local v31    # "tracesPath":Ljava/lang/String;
    :cond_221
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "newTracesPath":Ljava/lang/String;
    goto/16 :goto_186

    .line 505
    .end local v17    # "lpos":I
    .end local v19    # "newTracesPath":Ljava/lang/String;
    .end local v30    # "traceRenameFile":Ljava/io/File;
    .restart local v11    # "dropboxThread":Ljava/lang/Thread;
    .restart local v18    # "newFd":Ljava/io/File;
    :catch_23c
    move-exception v16

    .local v16, "ignored":Ljava/lang/InterruptedException;
    goto/16 :goto_1bb

    .line 528
    .end local v16    # "ignored":Ljava/lang/InterruptedException;
    .restart local v9    # "crashOnWatchdog":Z
    :catchall_23f
    move-exception v34

    monitor-exit p0

    throw v34

    .line 544
    .restart local v8    # "controller":Landroid/app/IActivityController;
    :cond_242
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v34

    if-eqz v34, :cond_249

    .line 545
    const/4 v10, 0x2

    .line 547
    :cond_249
    const/16 v34, 0x2

    move/from16 v0, v34

    if-lt v10, v0, :cond_25c

    .line 548
    const-string/jumbo v34, "Watchdog"

    const-string/jumbo v35, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_258
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 549
    :cond_25c
    if-lez v10, :cond_268

    .line 550
    const-string/jumbo v34, "Watchdog"

    const-string/jumbo v35, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_258

    .line 551
    :cond_268
    if-nez v6, :cond_274

    .line 552
    const-string/jumbo v34, "Watchdog"

    const-string/jumbo v35, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_258

    .line 554
    :cond_274
    const-string/jumbo v34, "Watchdog"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v15, 0x0

    :goto_293
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_30a

    .line 556
    const-string/jumbo v35, "Watchdog"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v36, " stack trace:"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v23

    .line 559
    .local v23, "stackTrace":[Ljava/lang/StackTraceElement;
    const/16 v34, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v35, v0

    :goto_2e0
    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_307

    aget-object v13, v23, v34

    .line 560
    .local v13, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v36, "Watchdog"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "    at "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    add-int/lit8 v34, v34, 0x1

    goto :goto_2e0

    .line 555
    .end local v13    # "element":Ljava/lang/StackTraceElement;
    :cond_307
    add-int/lit8 v15, v15, 0x1

    goto :goto_293

    .line 563
    .end local v23    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_30a
    const-string/jumbo v34, "Watchdog"

    const-string/jumbo v35, "*** GOODBYE!"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v34

    invoke-static/range {v34 .. v34}, Landroid/os/Process;->killProcess(I)V

    .line 565
    const/16 v34, 0xa

    invoke-static/range {v34 .. v34}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_258
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 278
    return-void

    .line 279
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3
    .param p1, "allowRestart"    # Z

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 284
    return-void

    .line 285
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
