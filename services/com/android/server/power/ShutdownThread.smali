.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field public static final AUDIT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.audit_safemode"

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static RECOVERY_COMMAND_FILE:Ljava/io/File; = null

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SOFT_REBOOT:Ljava/lang/String; = "soft_reboot"

.field private static final SYSTEMUI_REBOOT:Ljava/lang/String; = "systemui_reboot"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReason:Ljava/lang/String;

.field private static mReboot:Z

.field private static mRebootHasProgressBar:Z

.field private static mRebootSafeMode:Z

.field private static mRebootWipe:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get2()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic -get3()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method static synthetic -get4()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return v0
.end method

.method static synthetic -get5()Lcom/android/server/power/ShutdownThread;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->doSoftReboot()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->doSystemUIReboot(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 102
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 105
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery/command"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    .line 108
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z

    .line 124
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 126
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 127
    const/4 v1, 0x4

    .line 126
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 128
    const/16 v1, 0xd

    .line 126
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v14, 0x10302e5

    const/4 v13, 0x0

    const/16 v12, 0x11

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 426
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 427
    :try_start_b
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_1a

    .line 428
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "Shutdown sequence already running, returning."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1a5

    monitor-exit v9

    .line 429
    return-void

    .line 431
    :cond_1a
    const/4 v6, 0x1

    :try_start_1b
    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1a5

    monitor-exit v9

    .line 435
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 458
    .local v4, "pd":Landroid/app/ProgressDialog;
    const-string/jumbo v6, "recovery-update"

    sget-object v9, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bd

    .line 459
    sget-object v6, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 461
    :try_start_36
    new-instance v6, Ljava/lang/String;

    .line 462
    sget-object v9, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 461
    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 462
    const-string/jumbo v9, "wipe"

    .line 461
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4c} :catch_23d

    .line 468
    :cond_4c
    :goto_4c
    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1ab

    .line 469
    sget-object v6, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1a8

    move v6, v7

    .line 468
    :goto_5d
    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 470
    const v6, 0x10401b1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_1ae

    .line 472
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 473
    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 474
    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 475
    invoke-virtual {v4, v13}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 478
    const v6, 0x10401b2

    .line 477
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 501
    :goto_88
    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 502
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v9, 0x7d9

    invoke-virtual {v6, v9}, Landroid/view/Window;->setType(I)V

    .line 504
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 506
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-nez v6, :cond_217

    move v3, v8

    .line 507
    .local v3, "isPrimary":Z
    :goto_a3
    if-eqz v3, :cond_21a

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getPowermenuAnimations(Landroid/content/Context;)I

    move-result v5

    .line 509
    .local v5, "powermenuAnimations":I
    :goto_a9
    if-nez v5, :cond_ab

    .line 512
    :cond_ab
    if-ne v5, v8, :cond_b6

    .line 513
    const v6, 0x10302e0

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 514
    const/16 v6, 0x51

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 516
    :cond_b6
    const/4 v6, 0x2

    if-ne v5, v6, :cond_c2

    .line 517
    const v6, 0x10302e1

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 518
    const/16 v6, 0x31

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 520
    :cond_c2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_cc

    .line 521
    const v6, 0x10302e2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 522
    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 524
    :cond_cc
    const/4 v6, 0x4

    if-ne v5, v6, :cond_d6

    .line 525
    const v6, 0x10302e6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 526
    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 528
    :cond_d6
    const/4 v6, 0x5

    if-ne v5, v6, :cond_dd

    .line 529
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 530
    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 532
    :cond_dd
    const/4 v6, 0x6

    if-ne v5, v6, :cond_e7

    .line 533
    const v6, 0x10302e4

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 534
    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 536
    :cond_e7
    const/4 v6, 0x7

    if-ne v5, v6, :cond_f1

    .line 537
    const v6, 0x10302e3

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 538
    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 540
    :cond_f1
    const/16 v6, 0x8

    if-ne v5, v6, :cond_fc

    .line 541
    const v6, 0x10302e7

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 542
    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 544
    :cond_fc
    const/16 v6, 0x9

    if-ne v5, v6, :cond_106

    .line 545
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 546
    const/16 v6, 0x31

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 548
    :cond_106
    const/16 v6, 0xa

    if-ne v5, v6, :cond_110

    .line 549
    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 550
    const/16 v6, 0x51

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 552
    :cond_110
    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 553
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 555
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->setRebootDialogAlpha(Landroid/content/Context;)F

    move-result v6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 556
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->setRebootDialogDim(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 558
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 561
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, v6, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 562
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v6, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 563
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 566
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v13, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 568
    :try_start_149
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 569
    const-string/jumbo v8, "ShutdownThread-cpu"

    const/4 v9, 0x1

    .line 568
    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 570
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 571
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_168
    .catch Ljava/lang/SecurityException; {:try_start_149 .. :try_end_168} :catch_21d

    .line 578
    :goto_168
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v13, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 579
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_196

    .line 581
    :try_start_176
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 582
    const-string/jumbo v8, "ShutdownThread-screen"

    const/16 v9, 0x1a

    .line 581
    invoke-virtual {v7, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 583
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 584
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_196
    .catch Ljava/lang/SecurityException; {:try_start_176 .. :try_end_196} :catch_22d

    .line 592
    :cond_196
    :goto_196
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v7, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v7}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    iput-object v7, v6, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 594
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 425
    return-void

    .line 426
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "isPrimary":Z
    .end local v4    # "pd":Landroid/app/ProgressDialog;
    .end local v5    # "powermenuAnimations":I
    :catchall_1a5
    move-exception v6

    monitor-exit v9

    throw v6

    .restart local v4    # "pd":Landroid/app/ProgressDialog;
    :cond_1a8
    move v6, v8

    .line 469
    goto/16 :goto_5d

    :cond_1ab
    move v6, v7

    .line 468
    goto/16 :goto_5d

    .line 480
    :cond_1ae
    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 482
    const v6, 0x10401b4

    .line 481
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_88

    .line 484
    :cond_1bd
    const-string/jumbo v6, "recovery"

    sget-object v9, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e5

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z

    if-eqz v6, :cond_1e5

    .line 486
    const v6, 0x10401b5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    const v6, 0x10401b6

    .line 487
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_88

    .line 491
    :cond_1e5
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_202

    .line 492
    const v6, 0x1040023

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 493
    const v6, 0x1040024

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 499
    :goto_1fd
    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_88

    .line 495
    :cond_202
    const v6, 0x10401ad

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    const v6, 0x10401b7

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1fd

    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_217
    move v3, v7

    .line 506
    goto/16 :goto_a3

    .restart local v3    # "isPrimary":Z
    :cond_21a
    move v5, v7

    .line 507
    goto/16 :goto_a9

    .line 572
    .restart local v5    # "powermenuAnimations":I
    :catch_21d
    move-exception v2

    .line 573
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v13, v6, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_168

    .line 585
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_22d
    move-exception v2

    .line 586
    .restart local v2    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v13, v6, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_196

    .line 463
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v3    # "isPrimary":Z
    .end local v5    # "powermenuAnimations":I
    :catch_23d
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto/16 :goto_4c
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .registers 14
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 912
    const-string/jumbo v1, "com.qti.server.power.ShutdownOem"

    .line 913
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    const-string/jumbo v2, "rebootOrShutdown"

    .line 915
    .local v2, "deviceShutdownMethodName":Ljava/lang/String;
    :try_start_6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_9} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_8f

    move-result-object v0

    .line 918
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    :try_start_b
    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 919
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_2f} :catch_68
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_2f} :catch_4c

    .line 909
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :goto_2f
    return-void

    .line 922
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_30
    move-exception v5

    .line 923
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_31
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown exception while trying to invoke "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4b} :catch_8f

    goto :goto_2f

    .line 925
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_4c
    move-exception v3

    .line 926
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to find class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 920
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_68
    move-exception v6

    .line 921
    .local v6, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_69
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to find method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_69 .. :try_end_8e} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8e} :catch_8f

    goto :goto_2f

    .line 927
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_8f
    move-exception v4

    .line 928
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown exception while loading class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private static doSoftReboot()V
    .registers 4

    .prologue
    .line 352
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 353
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_10

    .line 354
    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 349
    :cond_10
    :goto_10
    return-void

    .line 356
    :catch_11
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "failure trying to perform soft reboot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method private static doSystemUIReboot(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    invoke-static {p0}, Lcom/android/internal/util/rr/Helpers;->restartSystemUI(Landroid/content/Context;)V

    .line 361
    return-void
.end method

.method private static getContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1031
    invoke-static {p0}, Lcom/android/server/policy/GlobalActions;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getPowermenuAnimations(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    const-string/jumbo v1, "power_menu_animations"

    const/4 v2, 0x0

    .line 328
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static isAdvancedRebootPossible(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 163
    const-string/jumbo v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 164
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    .line 165
    :goto_15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 166
    const-string/jumbo v6, "advanced_reboot"

    .line 165
    invoke-static {v5, v6, v7}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_32

    const/4 v0, 0x1

    .line 167
    .local v0, "advancedRebootEnabled":Z
    :goto_23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-nez v5, :cond_34

    const/4 v1, 0x1

    .line 169
    .local v1, "isPrimaryUser":Z
    :goto_2a
    if-eqz v0, :cond_2e

    if-eqz v2, :cond_2f

    :cond_2e
    move v1, v4

    .end local v1    # "isPrimaryUser":Z
    :cond_2f
    return v1

    .line 164
    .end local v0    # "advancedRebootEnabled":Z
    :cond_30
    const/4 v2, 0x0

    .local v2, "keyguardLocked":Z
    goto :goto_15

    .line 165
    .end local v2    # "keyguardLocked":Z
    :cond_32
    const/4 v0, 0x0

    .restart local v0    # "advancedRebootEnabled":Z
    goto :goto_23

    .line 167
    :cond_34
    const/4 v1, 0x0

    .restart local v1    # "isPrimaryUser":Z
    goto :goto_2a
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 397
    .local v0, "mContext":Landroid/content/Context;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 398
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 399
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 400
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 401
    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 395
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 942
    invoke-static {p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 943
    if-eqz p1, :cond_39

    .line 944
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rebooting, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 946
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 p2, 0x0

    .line 966
    .end local p2    # "reason":Ljava/lang/String;
    :cond_2c
    :goto_2c
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Performing low-level shutdown..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 940
    return-void

    .line 948
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_39
    if-eqz p0, :cond_2c

    .line 950
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 952
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_42
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_4f

    .line 960
    :goto_47
    const-wide/16 v4, 0x1f4

    :try_start_49
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_2c

    .line 961
    :catch_4d
    move-exception v1

    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_2c

    .line 953
    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_4f
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x1

    .line 412
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 413
    .local v0, "mContext":Landroid/content/Context;
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 414
    .local v1, "um":Landroid/os/UserManager;
    const-string/jumbo v2, "no_safe_boot"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 415
    return-void

    .line 418
    :cond_18
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 419
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 420
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 421
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 422
    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 411
    return-void
.end method

.method private static setRebootDialogAlpha(Landroid/content/Context;)F
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 335
    const-string/jumbo v5, "transparent_power_menu"

    const/16 v6, 0x64

    .line 333
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 336
    .local v1, "mRebootDialogAlpha":I
    int-to-double v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v2, v4, v6

    .line 337
    .local v2, "dAlpha":D
    double-to-float v0, v2

    .line 338
    .local v0, "alpha":F
    return v0
.end method

.method private static setRebootDialogDim(Landroid/content/Context;)F
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 343
    const-string/jumbo v5, "transparent_power_dialog_dim"

    const/16 v6, 0x32

    .line 342
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 344
    .local v3, "mRebootDialogDim":I
    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v0, v4, v6

    .line 345
    .local v0, "dDim":D
    double-to-float v2, v0

    .line 346
    .local v2, "dim":F
    return v2
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "mContext":Landroid/content/Context;
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 157
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 158
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 159
    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 154
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 175
    sget-object v15, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v15

    .line 176
    :try_start_3
    sget-boolean v14, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v14, :cond_14

    .line 177
    const-string/jumbo v14, "ShutdownThread"

    const-string/jumbo v16, "Request to shutdown already running, returning."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_181

    monitor-exit v15

    .line 178
    return-void

    :cond_14
    monitor-exit v15

    .line 182
    const/4 v13, 0x0

    .line 185
    .local v13, "showRebootOption":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 186
    const-string/jumbo v15, "power_menu_actions"

    const/16 v16, -0x2

    .line 185
    invoke-static/range {v14 .. v16}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "actions":Ljava/lang/String;
    if-nez v1, :cond_184

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 189
    const v15, 0x1070049

    .line 188
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "actionsArray":[Ljava/lang/String;
    :goto_30
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_31
    array-length v14, v2

    if-ge v7, v14, :cond_40

    .line 195
    aget-object v14, v2, v7

    const-string/jumbo v15, "restart"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18d

    .line 196
    const/4 v13, 0x1

    .line 200
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 201
    const v15, 0x10e0051

    .line 200
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 202
    .local v9, "longPressBehavior":I
    sget-boolean v14, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v14, :cond_191

    .line 203
    const v12, 0x10401bb

    .line 208
    .local v12, "resourceId":I
    :goto_52
    const-string/jumbo v14, "ShutdownThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz p1, :cond_1bf

    .line 211
    new-instance v5, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 212
    .local v5, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v10

    .line 213
    .local v10, "mContext":Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->isAdvancedRebootPossible(Landroid/content/Context;)Z

    move-result v3

    .line 215
    .local v3, "advancedReboot":Z
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_89

    .line 216
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->dismiss()V

    .line 217
    const/4 v14, 0x0

    sput-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 219
    :cond_89
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-direct {v15, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    sget-boolean v14, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v14, :cond_19e

    .line 221
    const v14, 0x10401ba

    .line 219
    :goto_95
    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 226
    .local v6, "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz v3, :cond_a3

    sget-boolean v14, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v14, :cond_a3

    sget-boolean v14, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v14, :cond_1ac

    .line 227
    :cond_a3
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 235
    :goto_a6
    new-instance v14, Lcom/android/server/power/ShutdownThread$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v3, v0}, Lcom/android/server/power/ShutdownThread$1;-><init>(ZLandroid/content/Context;)V

    .line 234
    const v15, 0x1040013

    invoke-virtual {v6, v15, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    const v14, 0x1040009

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    sput-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 267
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v14, v5, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 268
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 269
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 271
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    if-nez v14, :cond_1b9

    const/4 v8, 0x1

    .line 272
    .local v8, "isPrimary":Z
    :goto_da
    if-eqz v8, :cond_1bc

    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->getPowermenuAnimations(Landroid/content/Context;)I

    move-result v11

    .line 274
    .local v11, "powermenuAnimations":I
    :goto_e0
    if-nez v11, :cond_e2

    .line 277
    :cond_e2
    const/4 v14, 0x1

    if-ne v11, v14, :cond_ee

    .line 278
    const v14, 0x10302e0

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 279
    const/16 v14, 0x51

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 281
    :cond_ee
    const/4 v14, 0x2

    if-ne v11, v14, :cond_fa

    .line 282
    const v14, 0x10302e1

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 283
    const/16 v14, 0x31

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 285
    :cond_fa
    const/4 v14, 0x3

    if-ne v11, v14, :cond_106

    .line 286
    const v14, 0x10302e2

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 287
    const/16 v14, 0x11

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 289
    :cond_106
    const/4 v14, 0x4

    if-ne v11, v14, :cond_112

    .line 290
    const v14, 0x10302e6

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 291
    const/16 v14, 0x11

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 293
    :cond_112
    const/4 v14, 0x5

    if-ne v11, v14, :cond_11e

    .line 294
    const v14, 0x10302e5

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 295
    const/16 v14, 0x11

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 297
    :cond_11e
    const/4 v14, 0x6

    if-ne v11, v14, :cond_12a

    .line 298
    const v14, 0x10302e4

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 299
    const/16 v14, 0x11

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 301
    :cond_12a
    const/4 v14, 0x7

    if-ne v11, v14, :cond_136

    .line 302
    const v14, 0x10302e3

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 303
    const/16 v14, 0x11

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 305
    :cond_136
    const/16 v14, 0x8

    if-ne v11, v14, :cond_143

    .line 306
    const v14, 0x10302e7

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 307
    const/16 v14, 0x11

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 309
    :cond_143
    const/16 v14, 0x9

    if-ne v11, v14, :cond_150

    .line 310
    const v14, 0x10302e5

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 311
    const/16 v14, 0x31

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 313
    :cond_150
    const/16 v14, 0xa

    if-ne v11, v14, :cond_15d

    .line 314
    const v14, 0x10302e5

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 315
    const/16 v14, 0x51

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 318
    :cond_15d
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->setRebootDialogAlpha(Landroid/content/Context;)F

    move-result v14

    iput v14, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 319
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d9

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 320
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->setRebootDialogDim(Landroid/content/Context;)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/Window;->setDimAmount(F)V

    .line 321
    sget-object v14, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 172
    .end local v3    # "advancedReboot":Z
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v6    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "isPrimary":Z
    .end local v10    # "mContext":Landroid/content/Context;
    .end local v11    # "powermenuAnimations":I
    :goto_180
    return-void

    .line 175
    .end local v1    # "actions":Ljava/lang/String;
    .end local v2    # "actionsArray":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "longPressBehavior":I
    .end local v12    # "resourceId":I
    .end local v13    # "showRebootOption":Z
    :catchall_181
    move-exception v14

    monitor-exit v15

    throw v14

    .line 191
    .restart local v1    # "actions":Ljava/lang/String;
    .restart local v13    # "showRebootOption":Z
    :cond_184
    const-string/jumbo v14, "\\|"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "actionsArray":[Ljava/lang/String;
    goto/16 :goto_30

    .line 194
    .restart local v7    # "i":I
    :cond_18d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_31

    .line 204
    .restart local v9    # "longPressBehavior":I
    :cond_191
    const/4 v14, 0x2

    if-ne v9, v14, :cond_199

    .line 205
    const v12, 0x10401b9

    .restart local v12    # "resourceId":I
    goto/16 :goto_52

    .line 206
    .end local v12    # "resourceId":I
    :cond_199
    const v12, 0x10401b8

    .restart local v12    # "resourceId":I
    goto/16 :goto_52

    .line 222
    .restart local v3    # "advancedReboot":Z
    .restart local v5    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v10    # "mContext":Landroid/content/Context;
    :cond_19e
    sget-boolean v14, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v14, :cond_1a7

    .line 223
    const v14, 0x104001c

    goto/16 :goto_95

    .line 224
    :cond_1a7
    const v14, 0x10401ad

    goto/16 :goto_95

    .line 230
    .restart local v6    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_1ac
    const v14, 0x1070010

    .line 231
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 229
    move-object/from16 v0, v16

    invoke-virtual {v6, v14, v15, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_a6

    .line 271
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1b9
    const/4 v8, 0x0

    goto/16 :goto_da

    .line 272
    .restart local v8    # "isPrimary":Z
    :cond_1bc
    const/4 v11, 0x0

    goto/16 :goto_e0

    .line 323
    .end local v3    # "advancedReboot":Z
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v6    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "isPrimary":Z
    .end local v10    # "mContext":Landroid/content/Context;
    :cond_1bf
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_180
.end method

.method private shutdownRadios(I)V
    .registers 14
    .param p1, "timeout"    # I

    .prologue
    .line 787
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v2, v8, v10

    .line 788
    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 789
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 895
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 897
    int-to-long v8, p1

    :try_start_15
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_27

    .line 900
    :goto_18
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_26

    .line 901
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_26
    return-void

    .line 898
    :catch_27
    move-exception v6

    .local v6, "ex":Ljava/lang/InterruptedException;
    goto :goto_18
.end method

.method private uncrypt()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 971
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Calling uncrypt and monitoring the progress..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    new-instance v2, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 994
    .local v2, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    new-array v0, v11, [Z

    .line 995
    .local v0, "done":[Z
    aput-boolean v10, v0, v10

    .line 996
    new-instance v3, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 1011
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1014
    const-wide/32 v8, 0xdbba0

    :try_start_1f
    invoke-virtual {v3, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_51

    .line 1017
    :goto_22
    aget-boolean v7, v0, v10

    if-nez v7, :cond_50

    .line 1018
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Timed out waiting for uncrypt."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/16 v5, 0x64

    .line 1020
    .local v5, "uncryptTimeoutError":I
    const-string/jumbo v7, "uncrypt_time: %d\nuncrypt_error: %d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 1021
    const/16 v9, 0x384

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    .line 1020
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, "timeoutMessage":Ljava/lang/String;
    :try_start_4b
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v7, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_53

    .line 970
    .end local v4    # "timeoutMessage":Ljava/lang/String;
    .end local v5    # "uncryptTimeoutError":I
    :cond_50
    :goto_50
    return-void

    .line 1015
    :catch_51
    move-exception v6

    .local v6, "unused":Ljava/lang/InterruptedException;
    goto :goto_22

    .line 1024
    .end local v6    # "unused":Ljava/lang/InterruptedException;
    .restart local v4    # "timeoutMessage":Ljava/lang/String;
    .restart local v5    # "uncryptTimeoutError":I
    :catch_53
    move-exception v1

    .line 1025
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Failed to write timeout message to uncrypt status"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 600
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 597
    return-void

    .line 598
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 31

    .prologue
    .line 609
    new-instance v6, Lcom/android/server/power/ShutdownThread$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 622
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_1a4

    const-string/jumbo v2, "1"

    :goto_13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_1a9

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    :goto_1d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 623
    .local v26, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_3a

    .line 631
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_3a
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 638
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 641
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 640
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    .line 644
    .local v20, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 645
    :goto_73
    :try_start_73
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_8e

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v20, v8

    .line 647
    .local v14, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_1ae

    .line 648
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_1e2

    .end local v14    # "delay":J
    :cond_8e
    monitor-exit v4

    .line 661
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_9a

    .line 662
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 665
    :cond_9a
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 669
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_b5

    .line 671
    const/16 v2, 0x2710

    :try_start_b2
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b5} :catch_1e5

    .line 675
    :cond_b5
    :goto_b5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_c0

    .line 676
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 679
    :cond_c0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    .line 681
    check-cast v25, Lcom/android/server/pm/PackageManagerService;

    .line 683
    .local v25, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v25, :cond_d7

    .line 684
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 686
    :cond_d7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_e2

    .line 687
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 691
    :cond_e2
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 692
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_f5

    .line 693
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 697
    :cond_f5
    new-instance v24, Lcom/android/server/power/ShutdownThread$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 704
    .local v24, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v18, v4, v8

    .line 709
    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 712
    :try_start_119
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 711
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v23

    .line 713
    .local v23, "mount":Landroid/os/storage/IMountService;
    if-eqz v23, :cond_1e8

    .line 714
    invoke-interface/range {v23 .. v24}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_129} :catch_1f3
    .catchall {:try_start_119 .. :try_end_129} :catchall_201

    .line 721
    .end local v23    # "mount":Landroid/os/storage/IMountService;
    :goto_129
    :try_start_129
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_144

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v18, v8

    .line 723
    .restart local v14    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_204

    .line 724
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_129 .. :try_end_144} :catchall_201

    .end local v14    # "delay":J
    :cond_144
    monitor-exit v4

    .line 739
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_154

    .line 740
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 744
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 750
    :cond_154
    const-string/jumbo v2, "ro.alarm_boot"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 751
    .local v22, "isAlarmBoot":Z
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 753
    .local v12, "cryptState":Ljava/lang/String;
    if-eqz v22, :cond_180

    .line 754
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_177

    .line 755
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 753
    if-eqz v2, :cond_180

    .line 756
    :cond_177
    const-string/jumbo v2, "/persist/alarm/powerOffAlarmHandle"

    .line 757
    const-string/jumbo v4, "1"

    .line 756
    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_180
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_23a

    const-string/jumbo v2, "recovery"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23a

    .line 762
    const-string/jumbo v2, "/persist/alarm/timezone"

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 608
    return-void

    .line 622
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v12    # "cryptState":Ljava/lang/String;
    .end local v18    # "endShutTime":J
    .end local v20    # "endTime":J
    .end local v22    # "isAlarmBoot":Z
    .end local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v25    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v26    # "reason":Ljava/lang/String;
    :cond_1a4
    const-string/jumbo v2, "0"

    goto/16 :goto_13

    :cond_1a9
    const-string/jumbo v2, ""

    goto/16 :goto_1d

    .line 650
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v14    # "delay":J
    .restart local v20    # "endTime":J
    .restart local v26    # "reason":Ljava/lang/String;
    :cond_1ae
    :try_start_1ae
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_1d0

    .line 651
    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    .line 652
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    .line 651
    mul-double v8, v8, v28

    .line 652
    const-wide v28, 0x40c3880000000000L    # 10000.0

    .line 651
    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .line 653
    .local v27, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_1d0
    .catchall {:try_start_1ae .. :try_end_1d0} :catchall_1e2

    .line 656
    .end local v27    # "status":I
    :cond_1d0
    :try_start_1d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1dd
    .catch Ljava/lang/InterruptedException; {:try_start_1d0 .. :try_end_1dd} :catch_1df
    .catchall {:try_start_1d0 .. :try_end_1dd} :catchall_1e2

    goto/16 :goto_73

    .line 657
    :catch_1df
    move-exception v17

    .local v17, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_73

    .line 644
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_1e2
    move-exception v2

    monitor-exit v4

    throw v2

    .line 672
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_1e5
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_b5

    .line 716
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v18    # "endShutTime":J
    .restart local v23    # "mount":Landroid/os/storage/IMountService;
    .restart local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v25    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_1e8
    :try_start_1e8
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1f1} :catch_1f3
    .catchall {:try_start_1e8 .. :try_end_1f1} :catchall_201

    goto/16 :goto_129

    .line 718
    .end local v23    # "mount":Landroid/os/storage/IMountService;
    :catch_1f3
    move-exception v16

    .line 719
    .local v16, "e":Ljava/lang/Exception;
    :try_start_1f4
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ff
    .catchall {:try_start_1f4 .. :try_end_1ff} :catchall_201

    goto/16 :goto_129

    .line 709
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_201
    move-exception v2

    monitor-exit v4

    throw v2

    .line 726
    .restart local v14    # "delay":J
    :cond_204
    :try_start_204
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_228

    .line 727
    const-wide/16 v8, 0x4e20

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    .line 728
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    .line 727
    mul-double v8, v8, v28

    .line 729
    const-wide v28, 0x40d3880000000000L    # 20000.0

    .line 727
    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .line 730
    .restart local v27    # "status":I
    add-int/lit8 v27, v27, 0x12

    .line 731
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_228
    .catchall {:try_start_204 .. :try_end_228} :catchall_201

    .line 734
    .end local v27    # "status":I
    :cond_228
    :try_start_228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_235
    .catch Ljava/lang/InterruptedException; {:try_start_228 .. :try_end_235} :catch_237
    .catchall {:try_start_228 .. :try_end_235} :catchall_201

    goto/16 :goto_129

    .line 735
    :catch_237
    move-exception v17

    .restart local v17    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_129

    .line 764
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    .restart local v12    # "cryptState":Ljava/lang/String;
    .restart local v22    # "isAlarmBoot":Z
    :cond_23a
    const-string/jumbo v2, "/persist/alarm/timezone"

    .line 765
    const-string/jumbo v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 764
    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_198
.end method
