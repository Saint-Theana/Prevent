.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$1;,
        Lcom/android/server/power/Notifier$2;,
        Lcom/android/server/power/Notifier$3;,
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_CHANGED:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRED_CHARGING_STARTED:I = 0x5

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mInteractive:Z

.field private mInteractiveChangeReason:I

.field private mInteractiveChanging:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mRetailDemoModeServiceInternal:Landroid/app/RetailDemoModeServiceInternal;

.field private final mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

.field private final mScreenBrightnessBoostIntent:Landroid/content/Intent;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/Notifier;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V
    .registers 11
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x50000000

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 110
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 649
    new-instance v1, Lcom/android/server/power/Notifier$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    .line 670
    new-instance v1, Lcom/android/server/power/Notifier$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 693
    new-instance v1, Lcom/android/server/power/Notifier$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 136
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 137
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 138
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 139
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 140
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 141
    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 142
    const-class v1, Landroid/app/RetailDemoModeServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RetailDemoModeServiceInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mRetailDemoModeServiceInternal:Landroid/app/RetailDemoModeServiceInternal;

    .line 144
    new-instance v1, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 157
    const v2, 0x1120045

    .line 156
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 161
    :try_start_97
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9d} :catch_9e

    .line 133
    :goto_9d
    return-void

    .line 162
    :catch_9e
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9d
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    .prologue
    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 582
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 580
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .registers 5
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 306
    const v0, 0xffff

    and-int/2addr v0, p1

    sparse-switch v0, :sswitch_data_18

    .line 330
    return v1

    .line 308
    :sswitch_a
    return v2

    .line 312
    :sswitch_b
    const/4 v0, 0x1

    return v0

    .line 315
    :sswitch_d
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v0, :cond_12

    .line 316
    return v1

    .line 318
    :cond_12
    return v2

    .line 321
    :sswitch_13
    const/16 v0, 0x12

    return v0

    .line 327
    :sswitch_16
    return v1

    .line 306
    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_a
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x20 -> :sswitch_d
        0x40 -> :sswitch_16
        0x80 -> :sswitch_13
    .end sparse-switch
.end method

.method private handleEarlyInteractiveChange()V
    .registers 5

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 401
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_1c

    .line 403
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$5;

    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 412
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 414
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2d

    :goto_1a
    monitor-exit v2

    .line 399
    return-void

    .line 418
    :cond_1c
    :try_start_1c
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v0

    .line 419
    .local v0, "why":I
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$6;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2d

    goto :goto_1a

    .line 400
    .end local v0    # "why":I
    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleLateInteractiveChange()V
    .registers 5

    .prologue
    .line 435
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 436
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_13

    .line 438
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$7;

    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3a

    :goto_11
    monitor-exit v2

    .line 434
    return-void

    .line 452
    :cond_13
    :try_start_13
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v1, :cond_20

    .line 453
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 454
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 458
    :cond_20
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v0

    .line 459
    .local v0, "why":I
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$8;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$8;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 468
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 469
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 470
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_3a

    goto :goto_11

    .line 435
    .end local v0    # "why":I
    :catchall_3a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private playWirelessChargingStartedSound()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 703
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 704
    const-string/jumbo v5, "charging_sounds_enabled"

    .line 703
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_50

    const/4 v0, 0x1

    .line 705
    .local v0, "enabled":Z
    :goto_11
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 706
    const-string/jumbo v5, "wireless_charging_started_sound"

    .line 705
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, "soundPath":Ljava/lang/String;
    if-eqz v0, :cond_4a

    if-eqz v2, :cond_4a

    .line 708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 709
    .local v3, "soundUri":Landroid/net/Uri;
    if-eqz v3, :cond_4a

    .line 710
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 711
    .local v1, "sfx":Landroid/media/Ringtone;
    if-eqz v1, :cond_4a

    .line 712
    invoke-virtual {v1, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 713
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 718
    .end local v1    # "sfx":Landroid/media/Ringtone;
    .end local v3    # "soundUri":Landroid/net/Uri;
    :cond_4a
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 702
    return-void

    .line 703
    .end local v0    # "enabled":Z
    .end local v2    # "soundPath":Ljava/lang/String;
    :cond_50
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_11
.end method

.method private sendBrightnessBoostChangedBroadcast()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 645
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 646
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v6, 0x0

    move-object v7, v3

    move-object v8, v3

    .line 645
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 640
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 684
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 685
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 686
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    .line 685
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 679
    :goto_18
    return-void

    .line 688
    :cond_19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 689
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_18
.end method

.method private sendNextBroadcast()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 600
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 601
    :try_start_5
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-nez v1, :cond_23

    .line 603
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 604
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 627
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 628
    iget v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_3a

    .local v0, "powerState":I
    monitor-exit v2

    .line 631
    const/16 v1, 0xaa5

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 633
    if-ne v0, v3, :cond_5a

    .line 634
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    .line 598
    :goto_22
    return-void

    .line 605
    .end local v0    # "powerState":I
    :cond_23
    :try_start_23
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v3, :cond_42

    .line 607
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_33

    .line 608
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_3d

    .line 609
    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 610
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_3a

    goto :goto_f

    .line 600
    :catchall_3a
    move-exception v1

    monitor-exit v2

    throw v1

    .line 612
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    monitor-exit v2

    .line 613
    return-void

    .line 617
    :cond_42
    :try_start_42
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_4e

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_4e

    .line 618
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_55

    .line 619
    :cond_4e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 620
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_f

    .line 622
    :cond_55
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3a

    monitor-exit v2

    .line 623
    return-void

    .line 636
    .restart local v0    # "powerState":I
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    goto :goto_22
.end method

.method private sendUserActivity()V
    .registers 3

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-nez v0, :cond_9

    monitor-exit v1

    .line 588
    return-void

    .line 590
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_1c

    monitor-exit v1

    .line 592
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mRetailDemoModeServiceInternal:Landroid/app/RetailDemoModeServiceInternal;

    if-eqz v0, :cond_16

    .line 593
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mRetailDemoModeServiceInternal:Landroid/app/RetailDemoModeServiceInternal;

    invoke-interface {v0}, Landroid/app/RetailDemoModeServiceInternal;->onUserActivity()V

    .line 595
    :cond_16
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    .line 585
    return-void

    .line 586
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .registers 10

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 661
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 662
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 663
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    .line 662
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 656
    :goto_19
    return-void

    .line 665
    :cond_1a
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 666
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_19
.end method

.method private static translateOffReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .prologue
    .line 476
    packed-switch p0, :pswitch_data_a

    .line 482
    const/4 v0, 0x2

    return v0

    .line 478
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 480
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 476
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private updatePendingBroadcastLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 568
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v1, :cond_2d

    .line 569
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v1, :cond_2d

    .line 570
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_17

    .line 571
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v1, v2, :cond_2d

    .line 572
    :cond_17
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 573
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 574
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 576
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2d
    return-void
.end method


# virtual methods
.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 227
    if-eqz p3, :cond_15

    .line 228
    :try_start_2
    invoke-virtual {p3}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 229
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1a

    .line 230
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p3, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    invoke-interface {v3, p1, p4, v4}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 233
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_15
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 220
    :cond_1a
    :goto_1a
    return-void

    .line 235
    :catch_1b
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1a
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 206
    if-eqz p3, :cond_15

    .line 207
    :try_start_2
    invoke-virtual {p3}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 208
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_1a

    .line 209
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p3, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    invoke-interface {v3, p1, p4, v4}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 212
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_15
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 199
    :cond_1a
    :goto_1a
    return-void

    .line 214
    :catch_1b
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1a
.end method

.method public onScreenBrightnessBoostChanged()V
    .registers 4

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 495
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 496
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 497
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 489
    return-void
.end method

.method public onUserActivity(II)V
    .registers 8
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .prologue
    .line 509
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_24

    .line 514
    :goto_5
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 515
    :try_start_8
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v2, :cond_1f

    .line 516
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 517
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 518
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 519
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    .end local v1    # "msg":Landroid/os/Message;
    :cond_1f
    monitor-exit v3

    .line 503
    return-void

    .line 514
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    .line 510
    :catch_24
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 16
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 178
    .local v5, "monitorType":I
    if-ltz v5, :cond_1b

    .line 180
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_1e

    .line 181
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_1c

    const/4 v6, 0x1

    .line 182
    .local v6, "unimportantForLogging":Z
    :goto_10
    if-eqz p6, :cond_20

    .line 183
    :try_start_12
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 169
    .end local v6    # "unimportantForLogging":Z
    :cond_1b
    :goto_1b
    return-void

    .line 181
    :cond_1c
    const/4 v6, 0x0

    .restart local v6    # "unimportantForLogging":Z
    goto :goto_10

    .line 180
    .end local v6    # "unimportantForLogging":Z
    :cond_1e
    const/4 v6, 0x0

    .restart local v6    # "unimportantForLogging":Z
    goto :goto_10

    .line 186
    :cond_20
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 189
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    .line 190
    const/16 v2, 0x28

    .line 189
    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_36} :catch_37

    goto :goto_1b

    .line 192
    :catch_37
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_1b
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 38
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "newFlags"    # I
    .param p9, "newTag"    # Ljava/lang/String;
    .param p10, "newPackageName"    # Ljava/lang/String;
    .param p11, "newOwnerUid"    # I
    .param p12, "newOwnerPid"    # I
    .param p13, "newWorkSource"    # Landroid/os/WorkSource;
    .param p14, "newHistoryTag"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    .line 249
    .local v7, "monitorType":I
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v12

    .line 250
    .local v12, "newMonitorType":I
    if-eqz p6, :cond_3d

    if-eqz p13, :cond_3d

    .line 251
    if-ltz v7, :cond_3d

    if-ltz v12, :cond_3d

    .line 259
    const/16 v2, 0x3e8

    move/from16 v0, p11

    if-ne v0, v2, :cond_3b

    .line 260
    const/high16 v2, 0x40000000    # 2.0f

    and-int v2, v2, p8

    if-eqz v2, :cond_39

    const/4 v13, 0x1

    .line 262
    .local v13, "unimportantForLogging":Z
    :goto_21
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move-object/from16 v8, p13

    move/from16 v9, p12

    move-object/from16 v10, p9

    move-object/from16 v11, p14

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_38} :catch_54

    .line 246
    .end local v13    # "unimportantForLogging":Z
    :goto_38
    return-void

    .line 260
    :cond_39
    const/4 v13, 0x0

    .restart local v13    # "unimportantForLogging":Z
    goto :goto_21

    .line 259
    .end local v13    # "unimportantForLogging":Z
    :cond_3b
    const/4 v13, 0x0

    .restart local v13    # "unimportantForLogging":Z
    goto :goto_21

    .line 269
    .end local v13    # "unimportantForLogging":Z
    :cond_3d
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move-object/from16 v14, p0

    move/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-object/from16 v20, p13

    move-object/from16 v21, p14

    .line 270
    invoke-virtual/range {v14 .. v21}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    goto :goto_38

    .line 265
    .restart local v13    # "unimportantForLogging":Z
    :catch_54
    move-exception v22

    .local v22, "ex":Landroid/os/RemoteException;
    goto :goto_38
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 15
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 288
    .local v5, "monitorType":I
    if-ltz v5, :cond_11

    .line 290
    if-eqz p6, :cond_12

    .line 291
    :try_start_8
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 279
    :cond_11
    :goto_11
    return-void

    .line 294
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 296
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    .line 297
    const/16 v2, 0x28

    .line 296
    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_28} :catch_29

    goto :goto_11

    .line 299
    :catch_29
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_11
.end method

.method public onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "opUid"    # I

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    .line 535
    if-eqz p3, :cond_e

    .line 536
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x3d

    invoke-interface {v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 527
    :cond_e
    :goto_e
    return-void

    .line 538
    :catch_f
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_e
.end method

.method public onWakefulnessChangeFinished()V
    .registers 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v0, :cond_a

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 391
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 384
    :cond_a
    return-void
.end method

.method public onWakefulnessChangeStarted(II)V
    .registers 7
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 341
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    .line 349
    .local v1, "interactive":Z
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 358
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq v2, v1, :cond_32

    .line 360
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v2, :cond_19

    .line 361
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 365
    :cond_19
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2, v1}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v2, v1}, Landroid/view/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 370
    :try_start_23
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_33

    .line 374
    :goto_28
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 375
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    .line 376
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 377
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    .line 340
    :cond_32
    return-void

    .line 371
    :catch_33
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_28
.end method

.method public onWiredChargingStarted()V
    .registers 4

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 562
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 563
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 564
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    return-void
.end method

.method public onWirelessChargingStarted()V
    .registers 1

    .prologue
    .line 547
    return-void
.end method
