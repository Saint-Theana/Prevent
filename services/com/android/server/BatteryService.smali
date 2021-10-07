.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$1;,
        Lcom/android/server/BatteryService$BatteryListener;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$SettingsObserver;,
        Lcom/android/server/BatteryService$Shell;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final LIGHT_BRIGHTNESS_MAXIMUM:I = 0xff

.field private static final TAG:Ljava/lang/String;

.field private static mWeakChgSocCheckStarted:I


# instance fields
.field private mAdjustableNotificationLedBrightness:Z

.field private mAllowBatteryLightOnDnd:Z

.field private mBatteryFullARGB:I

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLowARGB:I

.field private mBatteryMediumARGB:I

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private mBatteryReallyFullARGB:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDashCharger:Z

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mHasDashCharger:Z

.field private mInitiateShutdown:Z

.field private mInvalidCharger:I

.field private mIsDndActive:Z

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private final mLastBatteryProps:Landroid/os/BatteryProperties;

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastChargeCounter:I

.field private mLastDashCharger:Z

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLedPulseEnabled:Z

.field private mLightEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mMultiColorLed:Z

.field private mMultipleLedsEnabled:Z

.field private mMultipleNotificationLeds:Z

.field private mNotificationLedBrightnessLevel:I

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mShutdownBatteryTemperature:I

.field private mUpdatesStopped:Z

.field private mUseSegmentedBatteryLed:Z

.field private final mVbattSamplingIntervalMsec:I

.field private mVoltageNowFile:Ljava/io/File;

.field private final mWeakChgCutoffVoltageMv:I

.field private final mWeakChgMaxShutdownIntervalMsecs:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdjustableNotificationLedBrightness:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/BatteryService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsDndActive:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedPulseEnabled:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLightEnabled:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/BatteryService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMultiColorLed:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMultipleLedsEnabled:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mMultipleNotificationLeds:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/BatteryService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService;->mNotificationLedBrightnessLevel:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAllowBatteryLightOnDnd:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/BatteryService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUseSegmentedBatteryLed:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/BatteryService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mVoltageNowFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/BatteryService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryFullARGB:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/BatteryService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/BatteryService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLowARGB:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/BatteryService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryMediumARGB:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/BatteryService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryReallyFullARGB:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mAdjustableNotificationLedBrightness:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mAllowBatteryLightOnDnd:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMultiColorLed:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMultipleLedsEnabled:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mMultipleNotificationLeds:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/BatteryService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mNotificationLedBrightnessLevel:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUseSegmentedBatteryLed:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/BatteryService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryFullARGB:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/BatteryService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryLowARGB:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/BatteryService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryMediumARGB:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/BatteryService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryReallyFullARGB:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/BatteryService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsDndActive:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedPulseEnabled:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/BatteryService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLightEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/BatteryService;I)Z
    .registers 3
    .param p1, "plugTypeSet"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfWeakChargerEmptySOCLocked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfWeakChargerVoltageCheckLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateLedPulse()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    .registers 2
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 100
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "--checkin"

    aput-object v1, v0, v3

    const-string/jumbo v1, "--unplugged"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 187
    sput v3, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 128
    new-instance v1, Landroid/os/BatteryProperties;

    invoke-direct {v1}, Landroid/os/BatteryProperties;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    .line 145
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/server/BatteryService;->mNotificationLedBrightnessLevel:I

    .line 146
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mUseSegmentedBatteryLed:Z

    .line 149
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mMultipleLedsEnabled:Z

    .line 156
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 171
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLightEnabled:Z

    .line 183
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 185
    const/16 v1, 0x7530

    iput v1, p0, Lcom/android/server/BatteryService;->mVbattSamplingIntervalMsec:I

    .line 194
    const v1, 0x493e0

    iput v1, p0, Lcom/android/server/BatteryService;->mWeakChgMaxShutdownIntervalMsecs:I

    .line 195
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mInitiateShutdown:Z

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BatteryService;->mVoltageNowFile:Ljava/io/File;

    .line 197
    new-instance v1, Lcom/android/server/BatteryService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    .line 211
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 212
    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v2, Lcom/android/server/BatteryService$Led;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 214
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 220
    const-string/jumbo v1, "ro.cutoff_voltage_mv"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mWeakChgCutoffVoltageMv:I

    .line 222
    iget v1, p0, Lcom/android/server/BatteryService;->mWeakChgCutoffVoltageMv:I

    const/16 v2, 0xa8c

    if-le v1, v2, :cond_6e

    .line 223
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/class/power_supply/battery/voltage_now"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mVoltageNowFile:Ljava/io/File;

    .line 224
    :cond_6e
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 225
    const v2, 0x11200f0

    .line 224
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mHasDashCharger:Z

    .line 226
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 227
    const v2, 0x10e0058

    .line 226
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 228
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 229
    const v2, 0x10e005a

    .line 228
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 230
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 231
    const v3, 0x10e005b

    .line 230
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 232
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 233
    const v2, 0x10e0059

    .line 232
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 236
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 237
    new-instance v0, Lcom/android/server/BatteryService$2;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    .line 249
    .local v0, "invalidChargerObserver":Landroid/os/UEventObserver;
    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/invalid_charger"

    .line 248
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 208
    .end local v0    # "invalidChargerObserver":Landroid/os/UEventObserver;
    :cond_d5
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 824
    const-string/jumbo v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    const-string/jumbo v0, "  set [ac|usb|wireless|status|level|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    const-string/jumbo v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    const-string/jumbo v0, "  unplug"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    const-string/jumbo v0, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    const-string/jumbo v0, "  reset"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    const-string/jumbo v0, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 937
    iget-object v7, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 938
    if-eqz p3, :cond_8

    :try_start_5
    array-length v1, p3

    if-nez v1, :cond_17f

    .line 939
    :cond_8
    const-string/jumbo v1, "Current Battery Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v1, :cond_18

    .line 941
    const-string/jumbo v1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  AC powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  USB powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Wireless powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Max charging current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Max charging voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Charge counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  health: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    const-string/jumbo v1, "  scale: 100"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v2, v2, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17d
    .catchall {:try_start_5 .. :try_end_17d} :catchall_1a0

    :goto_17d
    monitor-exit v7

    .line 936
    return-void

    .line 938
    :cond_17f
    :try_start_17f
    const-string/jumbo v1, "-a"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 958
    new-instance v0, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 959
    .local v0, "shell":Lcom/android/server/BatteryService$Shell;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    new-instance v6, Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I
    :try_end_19f
    .catchall {:try_start_17f .. :try_end_19f} :catchall_1a0

    goto :goto_17d

    .line 937
    .end local v0    # "shell":Lcom/android/server/BatteryService$Shell;
    :catchall_1a0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method private getIconLocked(I)I
    .registers 6
    .param p1, "level"    # I

    .prologue
    const v3, 0x108079b

    const v2, 0x108078d

    .line 793
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 794
    return v3

    .line 795
    :cond_e
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 796
    return v2

    .line 797
    :cond_16
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 798
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    .line 799
    :cond_24
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 800
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_34

    .line 801
    return v3

    .line 803
    :cond_34
    return v2

    .line 806
    :cond_35
    const v0, 0x10807a9

    return v0
.end method

.method private isDashCharger()Z
    .registers 7

    .prologue
    .line 715
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/sys/class/power_supply/battery/fastchg_status"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 716
    .local v3, "file":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 717
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, "state":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 719
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 720
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_22

    move-result v5

    return v5

    .line 721
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v4    # "state":Ljava/lang/String;
    :catch_1f
    move-exception v1

    .line 724
    :goto_20
    const/4 v5, 0x0

    return v5

    .line 722
    :catch_22
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_20
.end method

.method private isPoweredLocked(I)Z
    .registers 5
    .param p1, "plugTypeSet"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 314
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    if-ne v0, v1, :cond_9

    .line 315
    return v1

    .line 317
    :cond_9
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_14

    .line 318
    return v1

    .line 320
    :cond_14
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_1f

    .line 321
    return v1

    .line 323
    :cond_1f
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_2a

    .line 324
    return v1

    .line 326
    :cond_2a
    return v2
.end method

.method private logBatteryStatsLocked()V
    .registers 13

    .prologue
    .line 728
    const-string/jumbo v8, "batterystats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 729
    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_a

    return-void

    .line 731
    :cond_a
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "dropbox"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 732
    .local v1, "db":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_52

    const-string/jumbo v8, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v8}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 734
    const/4 v2, 0x0

    .line 735
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 738
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_22
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "/data/system/batterystats.dump"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2a} :catch_b9
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_7b
    .catchall {:try_start_22 .. :try_end_2a} :catchall_f8

    .line 739
    .end local v2    # "dumpFile":Ljava/io/File;
    .local v3, "dumpFile":Ljava/io/File;
    :try_start_2a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_136
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_13e
    .catchall {:try_start_2a .. :try_end_2f} :catchall_12f

    .line 740
    .local v5, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_2f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-result-object v8

    sget-object v9, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v8, v9}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 741
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 744
    const-string/jumbo v8, "BATTERY_DISCHARGE_INFO"

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v3, v9}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_42} :catch_139
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_42} :catch_142
    .catchall {:try_start_2f .. :try_end_42} :catchall_132

    .line 751
    if-eqz v5, :cond_47

    .line 753
    :try_start_44
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_53

    .line 758
    :cond_47
    :goto_47
    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_5d

    :cond_4f
    :goto_4f
    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 727
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_51
    :goto_51
    return-void

    .line 732
    :cond_52
    return-void

    .line 754
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_53
    move-exception v7

    .line 755
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 759
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5d
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 760
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 759
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 747
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :catch_7b
    move-exception v7

    .line 748
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_7c
    :try_start_7c
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "failed to write dumpsys file"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_f8

    .line 751
    if-eqz v4, :cond_89

    .line 753
    :try_start_86
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_af

    .line 758
    :cond_89
    :goto_89
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_51

    .line 759
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 760
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 759
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 754
    :catch_af
    move-exception v7

    .line 755
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 745
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_b9
    move-exception v6

    .line 746
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .local v6, "e":Landroid/os/RemoteException;
    :goto_ba
    :try_start_ba
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "failed to dump battery service"

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_f8

    .line 751
    if-eqz v4, :cond_c7

    .line 753
    :try_start_c4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_ee

    .line 758
    :cond_c7
    :goto_c7
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_51

    .line 759
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 760
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 759
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 754
    :catch_ee
    move-exception v7

    .line 755
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 749
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_f8
    move-exception v8

    .line 751
    :goto_f9
    if-eqz v4, :cond_fe

    .line 753
    :try_start_fb
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_107

    .line 758
    :cond_fe
    :goto_fe
    if-eqz v2, :cond_106

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_111

    .line 749
    :cond_106
    :goto_106
    throw v8

    .line 754
    :catch_107
    move-exception v7

    .line 755
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "failed to close dumpsys output stream"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 759
    .end local v7    # "e":Ljava/io/IOException;
    :cond_111
    sget-object v9, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to delete temporary dumpsys file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 760
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 759
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 749
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_12f
    move-exception v8

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .local v2, "dumpFile":Ljava/io/File;
    goto :goto_f9

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_132
    move-exception v8

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_f9

    .line 745
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :catch_136
    move-exception v6

    .restart local v6    # "e":Landroid/os/RemoteException;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_ba

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_139
    move-exception v6

    .restart local v6    # "e":Landroid/os/RemoteException;
    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_ba

    .line 747
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :catch_13e
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_7c

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_142
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_7c
.end method

.method private logOutlierLocked(J)V
    .registers 14
    .param p1, "duration"    # J

    .prologue
    .line 766
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 768
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "battery_discharge_threshold"

    .line 767
    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, "dischargeThresholdString":Ljava/lang/String;
    const-string/jumbo v7, "battery_discharge_duration_threshold"

    .line 769
    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, "durationThresholdString":Ljava/lang/String;
    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    .line 774
    :try_start_18
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 775
    .local v4, "durationThreshold":J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 776
    .local v1, "dischargeThreshold":I
    cmp-long v7, p1, v4

    if-gtz v7, :cond_30

    .line 777
    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_30

    .line 779
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_30} :catch_31

    .line 765
    .end local v1    # "dischargeThreshold":I
    .end local v4    # "durationThreshold":J
    :cond_30
    :goto_30
    return-void

    .line 785
    :catch_31
    move-exception v6

    .line 786
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 787
    const-string/jumbo v9, " or "

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private processValuesLocked(Z)V
    .registers 14
    .param p1, "force"    # Z

    .prologue
    .line 456
    const/4 v11, 0x0

    .line 457
    .local v11, "logOutlier":Z
    const-wide/16 v8, 0x0

    .line 459
    .local v8, "dischargeDuration":J
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v1, :cond_1de

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 460
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_1e1

    .line 461
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 491
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 492
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 493
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    .line 491
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIII)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_36} :catch_2d1

    .line 502
    :goto_36
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v0, :cond_5b

    .line 503
    sget v0, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    if-nez v0, :cond_5b

    .line 504
    iget v0, p0, Lcom/android/server/BatteryService;->mWeakChgCutoffVoltageMv:I

    if-lez v0, :cond_5b

    .line 505
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_5b

    .line 507
    const/4 v0, 0x1

    sput v0, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    .line 508
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 509
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 513
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 515
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mHasDashCharger:Z

    if-eqz v0, :cond_1fc

    invoke-direct {p0}, Lcom/android/server/BatteryService;->isDashCharger()Z

    move-result v0

    :goto_69
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mDashCharger:Z

    .line 517
    if-nez p1, :cond_7d

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_7d

    .line 518
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-eq v0, v1, :cond_1ff

    .line 530
    :cond_7d
    :goto_7d
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_c7

    .line 531
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_24b

    .line 536
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c7

    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    if-eq v0, v1, :cond_c7

    .line 537
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v0, v2

    .line 538
    const/4 v11, 0x1

    .line 539
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 540
    iget v1, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 539
    const/16 v1, 0xaaa

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 542
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 550
    :cond_c7
    :goto_c7
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_d7

    .line 551
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-eq v0, v1, :cond_25d

    .line 554
    :cond_d7
    :goto_d7
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_26d

    const/4 v0, 0x1

    :goto_f7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 556
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v0, v0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 554
    const/16 v0, 0xaa3

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 558
    :cond_113
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v1, :cond_144

    .line 561
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 562
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 561
    const/16 v1, 0xaa2

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 564
    :cond_144
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_14c

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-eqz v0, :cond_270

    .line 572
    :cond_14c
    :goto_14c
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_27f

    .line 574
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_15f

    .line 575
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_15f

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 591
    :cond_15f
    :goto_15f
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntentLocked()V

    .line 596
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_2a4

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_2a4

    .line 597
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    :cond_174
    :goto_174
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 619
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    :cond_187
    :goto_187
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 643
    if-eqz v11, :cond_197

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_197

    .line 644
    invoke-direct {p0, v8, v9}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 647
    :cond_197
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 648
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 649
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 650
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 651
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 652
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 653
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 654
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 655
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 656
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    .line 657
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 658
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 659
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDashCharger:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastDashCharger:Z

    .line 455
    :cond_1dd
    return-void

    .line 459
    :cond_1de
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 462
    :cond_1e1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_1ec

    .line 463
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_17

    .line 464
    :cond_1ec
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_1f7

    .line 465
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_17

    .line 467
    :cond_1f7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_17

    .line 515
    :cond_1fc
    const/4 v0, 0x0

    goto/16 :goto_69

    .line 519
    :cond_1ff
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_7d

    .line 520
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_7d

    .line 521
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v1, :cond_7d

    .line 522
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_7d

    .line 523
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v0, v1, :cond_7d

    .line 524
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v0, v1, :cond_7d

    .line 525
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v0, v1, :cond_7d

    .line 526
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    if-ne v0, v1, :cond_7d

    .line 527
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-ne v0, v1, :cond_7d

    .line 528
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDashCharger:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastDashCharger:Z

    if-eq v0, v1, :cond_1dd

    goto/16 :goto_7d

    .line 544
    :cond_24b
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_c7

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 547
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_c7

    .line 552
    :cond_25d
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_d7

    .line 553
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_113

    goto/16 :goto_d7

    .line 555
    :cond_26d
    const/4 v0, 0x0

    goto/16 :goto_f7

    .line 565
    :cond_270
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_14c

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v8, v0, v2

    .line 569
    const/4 v11, 0x1

    goto/16 :goto_14c

    .line 580
    :cond_27f
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_288

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_15f

    .line 582
    :cond_288
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_295

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_15f

    .line 584
    :cond_295
    if-eqz p1, :cond_15f

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v1, :cond_15f

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_15f

    .line 606
    :cond_2a4
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_174

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_174

    .line 607
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_174

    .line 627
    :cond_2b8
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_187

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_187

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 629
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$9;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_187

    .line 494
    :catch_2d1
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    goto/16 :goto_36
.end method

.method private sendIntentLocked()V
    .registers 5

    .prologue
    .line 665
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x60000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v0

    .line 671
    .local v0, "icon":I
    const-string/jumbo v2, "status"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const-string/jumbo v2, "health"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    const-string/jumbo v2, "present"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v3, v3, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    const-string/jumbo v2, "level"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    const-string/jumbo v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    const-string/jumbo v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    const-string/jumbo v2, "voltage"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    const-string/jumbo v2, "temperature"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    const-string/jumbo v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string/jumbo v2, "invalid_charger"

    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    const-string/jumbo v2, "max_charging_current"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    const-string/jumbo v2, "max_charging_voltage"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    const-string/jumbo v2, "charge_counter"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    const-string/jumbo v2, "dash_charger"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mDashCharger:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$10;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    return-void
.end method

.method private shouldSendBatteryLowLocked()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_25

    const/4 v1, 0x1

    .line 331
    .local v1, "plugged":Z
    :goto_7
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v4, :cond_27

    const/4 v0, 0x1

    .line 339
    .local v0, "oldPlugged":Z
    :goto_c
    if-nez v1, :cond_2b

    .line 340
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v4, v2, :cond_2b

    .line 341
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_2b

    .line 342
    if-nez v0, :cond_24

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_29

    .line 339
    :cond_24
    :goto_24
    return v2

    .line 330
    .end local v0    # "oldPlugged":Z
    .end local v1    # "plugged":Z
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "plugged":Z
    goto :goto_7

    .line 331
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "oldPlugged":Z
    goto :goto_c

    :cond_29
    move v2, v3

    .line 342
    goto :goto_24

    :cond_2b
    move v2, v3

    .line 339
    goto :goto_24
.end method

.method private shutdownIfNoPowerLocked()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v0, :cond_d

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 406
    :cond_d
    :goto_d
    return-void

    .line 410
    :cond_e
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method

.method private shutdownIfOverTempLocked()V
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_12

    .line 429
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    :cond_12
    return-void
.end method

.method private shutdownIfWeakChargerEmptySOCLocked()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v1, :cond_49

    .line 348
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mInitiateShutdown:Z

    if-eqz v1, :cond_34

    .line 349
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 350
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "silent_reboot shutdownIfWeakChargerEmptySOCLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 345
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_33
    :goto_33
    return-void

    .line 358
    :cond_34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mInitiateShutdown:Z

    .line 359
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 363
    :cond_49
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mInitiateShutdown:Z

    .line 364
    sput v3, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    goto :goto_33
.end method

.method private shutdownIfWeakChargerVoltageCheckLocked()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 369
    const/4 v5, 0x0

    .line 374
    .local v5, "vbattNow":I
    :try_start_2
    new-instance v3, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mVoltageNowFile:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 375
    .local v3, "fileReader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 376
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 378
    div-int/lit16 v5, v5, 0x3e8

    .line 379
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 380
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_1e} :catch_5b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1e} :catch_51

    .line 387
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    :goto_1e
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v6, :cond_76

    .line 388
    iget v6, p0, Lcom/android/server/BatteryService;->mWeakChgCutoffVoltageMv:I

    if-gt v5, v6, :cond_65

    .line 389
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 390
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "silent_reboot shutdownIfWeakChargerVoltageCheckLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 395
    iget-object v6, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 368
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_50
    :goto_50
    return-void

    .line 383
    :catch_51
    move-exception v2

    .line 384
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failure in reading battery voltage"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 381
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5b
    move-exception v1

    .line 382
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failure in reading battery voltage"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 398
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_65
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/BatteryService;->runnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    .line 402
    :cond_76
    sput v8, Lcom/android/server/BatteryService;->mWeakChgSocCheckStarted:I

    goto :goto_50
.end method

.method private update(Landroid/os/BatteryProperties;)V
    .registers 4
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_f

    .line 446
    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    :goto_d
    monitor-exit v1

    .line 443
    return-void

    .line 450
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v0, p1}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_d

    .line 444
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateBatteryWarningLevelLocked()V
    .registers 6

    .prologue
    .line 295
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 296
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 297
    const v3, 0x10e005a

    .line 296
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 299
    .local v0, "defWarnLevel":I
    const-string/jumbo v2, "low_power_trigger_level"

    .line 298
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 300
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v2, :cond_22

    .line 301
    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 303
    :cond_22
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_2c

    .line 304
    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 306
    :cond_2c
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 307
    const v4, 0x10e005b

    .line 306
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 308
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 294
    return-void
.end method

.method private declared-synchronized updateLedPulse()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 965
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 964
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 9
    .param p1, "phase"    # I

    .prologue
    .line 271
    const/16 v3, 0x226

    if-ne p1, v3, :cond_28

    .line 273
    iget-object v4, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 274
    :try_start_7
    new-instance v0, Lcom/android/server/BatteryService$3;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 282
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 284
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "low_power_trigger_level"

    .line 283
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 285
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 283
    invoke-virtual {v2, v3, v5, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 286
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_25

    monitor-exit v4

    .line 270
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_24
    :goto_24
    return-void

    .line 273
    :catchall_25
    move-exception v3

    monitor-exit v4

    throw v3

    .line 288
    :cond_28
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_24

    .line 289
    new-instance v1, Lcom/android/server/BatteryService$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 290
    .local v1, "observer":Lcom/android/server/BatteryService$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/BatteryService$SettingsObserver;->observe()V

    goto :goto_24
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .registers 16
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 836
    if-nez p2, :cond_b

    .line 837
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v7

    return v7

    .line 839
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 840
    .local v4, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v9, "unplug"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 842
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 843
    const-string/jumbo v9, "android.permission.DEVICE_POWER"

    .line 842
    invoke-virtual {v7, v9, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v7, :cond_2d

    .line 845
    iget-object v7, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v7, v9}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 847
    :cond_2d
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput-boolean v8, v7, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 848
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput-boolean v8, v7, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 849
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iput-boolean v8, v7, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 850
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 852
    .local v2, "ident":J
    const/4 v7, 0x1

    :try_start_3e
    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 853
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_95

    .line 855
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    .end local v2    # "ident":J
    :cond_47
    :goto_47
    return v8

    .line 840
    :cond_48
    const-string/jumbo v9, "set"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 859
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 860
    const-string/jumbo v10, "android.permission.DEVICE_POWER"

    .line 859
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_9a

    .line 863
    const-string/jumbo v7, "No property specified"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    return v12

    .line 840
    .end local v1    # "key":Ljava/lang/String;
    :cond_68
    const-string/jumbo v7, "reset"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_179

    .line 917
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 918
    const-string/jumbo v9, "android.permission.DEVICE_POWER"

    .line 917
    invoke-virtual {v7, v9, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 921
    .restart local v2    # "ident":J
    :try_start_7f
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v7, :cond_91

    .line 922
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 923
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v7, v9}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 924
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_91
    .catchall {:try_start_7f .. :try_end_91} :catchall_174

    .line 927
    :cond_91
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_47

    .line 854
    :catchall_95
    move-exception v7

    .line 855
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    throw v7

    .line 867
    .end local v2    # "ident":J
    .restart local v1    # "key":Ljava/lang/String;
    :cond_9a
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_a7

    .line 869
    const-string/jumbo v7, "No value specified"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    return v12

    .line 874
    :cond_a7
    :try_start_a7
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v9, :cond_b2

    .line 875
    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v9, v10}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 877
    :cond_b2
    const/4 v5, 0x1

    .line 878
    .local v5, "update":Z
    const-string/jumbo v9, "ac"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f1

    .line 880
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_14e

    :goto_c4
    iput-boolean v7, v9, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 902
    :goto_c6
    if-eqz v5, :cond_47

    .line 903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_a7 .. :try_end_cb} :catch_d8

    move-result-wide v2

    .line 905
    .restart local v2    # "ident":J
    const/4 v7, 0x1

    :try_start_cd
    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 906
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_d3
    .catchall {:try_start_cd .. :try_end_d3} :catchall_16f

    .line 908
    :try_start_d3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d6
    .catch Ljava/lang/NumberFormatException; {:try_start_d3 .. :try_end_d6} :catch_d8

    goto/16 :goto_47

    .line 911
    .end local v2    # "ident":J
    .end local v5    # "update":Z
    :catch_d8
    move-exception v0

    .line 912
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    return v12

    .line 878
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v5    # "update":Z
    :cond_f1
    :try_start_f1
    const-string/jumbo v9, "usb"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    .line 883
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_151

    :goto_102
    iput-boolean v7, v9, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    goto :goto_c6

    .line 878
    :cond_105
    const-string/jumbo v9, "wireless"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_119

    .line 886
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_153

    :goto_116
    iput-boolean v7, v9, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    goto :goto_c6

    .line 878
    :cond_119
    const-string/jumbo v7, "status"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12b

    .line 889
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    goto :goto_c6

    .line 878
    :cond_12b
    const-string/jumbo v7, "level"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13d

    .line 892
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    goto :goto_c6

    .line 878
    :cond_13d
    const-string/jumbo v7, "invalid"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_155

    .line 895
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_c6

    :cond_14e
    move v7, v8

    .line 880
    goto/16 :goto_c4

    :cond_151
    move v7, v8

    .line 883
    goto :goto_102

    :cond_153
    move v7, v8

    .line 886
    goto :goto_116

    .line 898
    :cond_155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown set option: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    const/4 v5, 0x0

    .line 900
    goto/16 :goto_c6

    .line 907
    .restart local v2    # "ident":J
    :catchall_16f
    move-exception v7

    .line 908
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    throw v7
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_174} :catch_d8

    .line 926
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "update":Z
    .end local v6    # "value":Ljava/lang/String;
    :catchall_174
    move-exception v7

    .line 927
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    throw v7

    .line 931
    .end local v2    # "ident":J
    :cond_179
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v7

    return v7
.end method

.method public onStart()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 255
    const-string/jumbo v3, "batteryproperties"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 257
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v1

    .line 259
    .local v1, "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    :try_start_c
    new-instance v3, Lcom/android/server/BatteryService$BatteryListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryListener;)V

    invoke-interface {v1, v3}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_2f

    .line 264
    :goto_15
    new-instance v3, Lcom/android/server/BatteryService$BinderService;

    invoke-direct {v3, p0, v5}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BinderService;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 265
    const-string/jumbo v3, "battery"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 266
    const-class v3, Landroid/os/BatteryManagerInternal;

    new-instance v4, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v4, p0, v5}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 254
    return-void

    .line 260
    :catch_2f
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_15
.end method
