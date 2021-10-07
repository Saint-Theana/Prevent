.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$1;,
        Lcom/android/server/DeviceIdleController$2;,
        Lcom/android/server/DeviceIdleController$3;,
        Lcom/android/server/DeviceIdleController$4;,
        Lcom/android/server/DeviceIdleController$5;,
        Lcom/android/server/DeviceIdleController$6;,
        Lcom/android/server/DeviceIdleController$7;,
        Lcom/android/server/DeviceIdleController$8;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$MotionListener;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Shell;
    }
.end annotation


# static fields
.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field private static final LIGHT_STATE_ACTIVE:I = 0x0

.field private static final LIGHT_STATE_IDLE:I = 0x4

.field private static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final LIGHT_STATE_INACTIVE:I = 0x1

.field private static final LIGHT_STATE_OVERRIDE:I = 0x7

.field private static final LIGHT_STATE_PRE_IDLE:I = 0x3

.field private static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field private static final MSG_FINISH_IDLE_OP:I = 0x8

.field private static final MSG_REPORT_ACTIVE:I = 0x5

.field private static final MSG_REPORT_IDLE_OFF:I = 0x4

.field private static final MSG_REPORT_IDLE_ON:I = 0x2

.field private static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field private static final MSG_REPORT_MAINTENANCE_ACTIVITY:I = 0x7

.field private static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field private static final MSG_WRITE_CONFIG:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurDisplay:Landroid/view/Display;

.field private mCurIdleBudget:J

.field private final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mDeepEnabled:Z

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mEventCmds:[I

.field private final mEventTimes:[J

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private mLightState:I

.field private mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private final mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/IMaintenanceActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceStartTime:J

.field private final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mNetworkConnected:Z

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportedMaintenanceActivity:Z

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/DeviceIdleController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/DeviceIdleController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 1323
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 227
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 226
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    .line 233
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 239
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 244
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 250
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 249
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 255
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 261
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 268
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 273
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 279
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 284
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 290
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 297
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 296
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 307
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 316
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 317
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 328
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 353
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 364
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 363
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 376
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 375
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 385
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 400
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 467
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$MotionListener;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 469
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 490
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 1324
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    .line 1325
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 1322
    return-void
.end method

.method private addEvent(I)V
    .registers 7
    .param p1, "cmd"    # I

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v0, v0, v4

    if-eq v0, p1, :cond_24

    .line 321
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 322
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 323
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v4

    .line 324
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 319
    :cond_24
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 8
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .prologue
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 2361
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2362
    if-eqz p0, :cond_1d

    .line 2363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 2364
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2363
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2367
    .end local v1    # "i":I
    :cond_1d
    if-eqz p1, :cond_36

    .line 2368
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_20
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 2369
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2368
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 2372
    .end local v1    # "i":I
    :cond_36
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2373
    .local v2, "size":I
    new-array v0, v2, [I

    .line 2374
    .local v0, "appids":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3d
    if-ge v1, v2, :cond_48

    .line 2375
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v1

    .line 2374
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 2377
    :cond_48
    return-object v0
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2556
    const-string/jumbo v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2558
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2559
    const-string/jumbo v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    const-string/jumbo v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    const-string/jumbo v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2562
    const-string/jumbo v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2563
    const-string/jumbo v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2564
    const-string/jumbo v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2565
    const-string/jumbo v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    const-string/jumbo v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2567
    const-string/jumbo v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2568
    const-string/jumbo v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2569
    const-string/jumbo v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    const-string/jumbo v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    const-string/jumbo v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    const-string/jumbo v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    const-string/jumbo v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2574
    const-string/jumbo v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    const-string/jumbo v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2576
    const-string/jumbo v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    const-string/jumbo v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    const-string/jumbo v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    const-string/jumbo v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    const-string/jumbo v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2581
    const-string/jumbo v0, "  tempwhitelist [-u] [package ..]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2582
    const-string/jumbo v0, "    Temporarily place packages in whitelist for 10 seconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 1335
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static lightStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 190
    packed-switch p0, :pswitch_data_24

    .line 198
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_8
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    .line 192
    :pswitch_c
    const-string/jumbo v0, "INACTIVE"

    return-object v0

    .line 193
    :pswitch_10
    const-string/jumbo v0, "PRE_IDLE"

    return-object v0

    .line 194
    :pswitch_14
    const-string/jumbo v0, "IDLE"

    return-object v0

    .line 195
    :pswitch_18
    const-string/jumbo v0, "WAITING_FOR_NETWORK"

    return-object v0

    .line 196
    :pswitch_1c
    const-string/jumbo v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 197
    :pswitch_20
    const-string/jumbo v0, "OVERRIDE"

    return-object v0

    .line 190
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_3
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1743
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 19
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 2455
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2459
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :cond_8
    :try_start_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_12

    .line 2460
    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 2464
    :cond_12
    const/4 v14, 0x2

    if-eq v13, v14, :cond_3a

    .line 2465
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "no start tag found"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_1e} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1e} :catch_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_1e} :catch_121
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_1e} :catch_104
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_e7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_1e} :catch_ca

    .line 2494
    .end local v13    # "type":I
    :catch_1e
    move-exception v4

    .line 2495
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v14, "DeviceIdleController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed parsing config "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_39
    :goto_39
    return-void

    .line 2468
    .restart local v13    # "type":I
    :cond_3a
    :try_start_3a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 2469
    .local v10, "outerDepth":I
    :cond_3e
    :goto_3e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_39

    .line 2470
    const/4 v14, 0x3

    if-ne v13, v14, :cond_4e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v10, :cond_39

    .line 2471
    :cond_4e
    const/4 v14, 0x3

    if-eq v13, v14, :cond_3e

    const/4 v14, 0x4

    if-eq v13, v14, :cond_3e

    .line 2475
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2476
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "wl"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8b

    .line 2477
    const-string/jumbo v14, "n"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_6a} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_6a} :catch_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_6a} :catch_121
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_6a} :catch_104
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_6a} :catch_e7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_6a} :catch_ca

    move-result-object v9

    .line 2478
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_3e

    .line 2481
    const/16 v14, 0x2000

    .line 2480
    :try_start_6f
    invoke-virtual {v11, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2482
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2483
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 2482
    invoke-virtual/range {v14 .. v16}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6f .. :try_end_88} :catch_89
    .catch Ljava/lang/IllegalStateException; {:try_start_6f .. :try_end_88} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_6f .. :try_end_88} :catch_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_88} :catch_121
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_88} :catch_104
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_88} :catch_e7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6f .. :try_end_88} :catch_ca

    goto :goto_3e

    .line 2484
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_89
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3e

    .line 2488
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "name":Ljava/lang/String;
    :cond_8b
    :try_start_8b
    const-string/jumbo v14, "DeviceIdleController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unknown element under <config>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2489
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 2488
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_8b .. :try_end_ac} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_8b .. :try_end_ac} :catch_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_ac} :catch_121
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_ac} :catch_104
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_ac} :catch_e7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8b .. :try_end_ac} :catch_ca

    goto :goto_3e

    .line 2496
    .end local v10    # "outerDepth":I
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_ad
    move-exception v6

    .line 2497
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v14, "DeviceIdleController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed parsing config "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2504
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_ca
    move-exception v5

    .line 2505
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v14, "DeviceIdleController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed parsing config "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2502
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_e7
    move-exception v3

    .line 2503
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v14, "DeviceIdleController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed parsing config "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2500
    .end local v3    # "e":Ljava/io/IOException;
    :catch_104
    move-exception v8

    .line 2501
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v14, "DeviceIdleController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed parsing config "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2498
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_121
    move-exception v7

    .line 2499
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DeviceIdleController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed parsing config "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .registers 4

    .prologue
    .line 2421
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2422
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2423
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2420
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .registers 4

    .prologue
    .line 2427
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2428
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2426
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_24

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :pswitch_8
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    .line 164
    :pswitch_c
    const-string/jumbo v0, "INACTIVE"

    return-object v0

    .line 165
    :pswitch_10
    const-string/jumbo v0, "IDLE_PENDING"

    return-object v0

    .line 166
    :pswitch_14
    const-string/jumbo v0, "SENSING"

    return-object v0

    .line 167
    :pswitch_18
    const-string/jumbo v0, "LOCATING"

    return-object v0

    .line 168
    :pswitch_1c
    const-string/jumbo v0, "IDLE"

    return-object v0

    .line 169
    :pswitch_20
    const-string/jumbo v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 162
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked()V
    .registers 5

    .prologue
    .line 2404
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2405
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v2, v2

    if-eq v2, v1, :cond_f

    .line 2406
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 2408
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1f

    .line 2409
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 2408
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2411
    :cond_1f
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_2a

    .line 2416
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 2403
    :cond_2a
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2381
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 2382
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 2381
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2383
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 2384
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 2383
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 2386
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 2385
    invoke-static {v3, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 2387
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_2e

    .line 2392
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2394
    :cond_2e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    if-eqz v0, :cond_39

    .line 2399
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$LocalService;->setDeviceIdleUserWhitelist([I)V

    .line 2380
    :cond_39
    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1652
    const-string/jumbo v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    .line 1653
    const-string/jumbo v3, "No permission to change device idle whitelist"

    .line 1651
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1655
    .local v2, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1656
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1661
    const-string/jumbo v6, "addPowerSaveTempWhitelistApp"

    .line 1659
    const/4 v4, 0x0

    .line 1660
    const/4 v5, 0x0

    .line 1661
    const/4 v7, 0x0

    move/from16 v3, p4

    .line 1655
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 1662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1665
    .local v10, "token":J
    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 1664
    :try_start_31
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_38

    .line 1667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1650
    return-void

    .line 1666
    :catchall_38
    move-exception v0

    .line 1667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1666
    throw v0
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .registers 20
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "duration"    # J
    .param p5, "sync"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    .line 1691
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1692
    .local v8, "timeNow":J
    const/4 v5, 0x0

    .line 1693
    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    monitor-enter p0

    .line 1694
    :try_start_6
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1695
    .local v2, "callingAppId":I
    const/16 v7, 0x2710

    if-lt v2, v7, :cond_3e

    .line 1696
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 1697
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Calling app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1698
    const-string/jumbo v11, " is not on whitelist"

    .line 1697
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_3b

    .line 1693
    .end local v2    # "callingAppId":I
    .end local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :catchall_3b
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1701
    .restart local v2    # "callingAppId":I
    .restart local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :cond_3e
    :try_start_3e
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v7, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 1702
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1703
    .local v4, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v4, :cond_9b

    const/4 v6, 0x1

    .line 1705
    .local v6, "newEntry":Z
    :goto_53
    if-eqz v6, :cond_68

    .line 1706
    new-instance v4, Landroid/util/Pair;

    .end local v4    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    new-instance v7, Landroid/util/MutableLong;

    const-wide/16 v10, 0x0

    invoke-direct {v7, v10, v11}, Landroid/util/MutableLong;-><init>(J)V

    move-object/from16 v0, p6

    invoke-direct {v4, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1707
    .restart local v4    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v7, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1709
    :cond_68
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/util/MutableLong;

    add-long v10, v8, p3

    iput-wide v10, v7, Landroid/util/MutableLong;->value:J
    :try_end_70
    .catchall {:try_start_3e .. :try_end_70} :catchall_3b

    .line 1713
    if-eqz v6, :cond_94

    .line 1716
    :try_start_72
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v10, 0x8011

    move-object/from16 v0, p6

    invoke-interface {v7, v10, v0, p2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7c} :catch_a0
    .catchall {:try_start_72 .. :try_end_7c} :catchall_3b

    .line 1720
    :goto_7c
    :try_start_7c
    move-wide/from16 v0, p3

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 1721
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked()V

    .line 1722
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    if-eqz v7, :cond_91

    .line 1723
    if-nez p5, :cond_9d

    .line 1724
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    invoke-virtual {v7, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1729
    .end local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :cond_91
    :goto_91
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_3b

    :cond_94
    monitor-exit p0

    .line 1732
    if-eqz v5, :cond_9a

    .line 1733
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1690
    :cond_9a
    return-void

    .line 1703
    .end local v6    # "newEntry":Z
    .restart local v5    # "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :cond_9b
    const/4 v6, 0x0

    goto :goto_53

    .line 1726
    .restart local v6    # "newEntry":Z
    :cond_9d
    :try_start_9d
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_9f
    .catchall {:try_start_9d .. :try_end_9f} :catchall_3b

    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    goto :goto_91

    .line 1718
    .local v5, "networkPolicyTempWhitelistCallback":Ljava/lang/Runnable;
    :catch_a0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_7c
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 17
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .prologue
    .line 1678
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    .line 1679
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .local v3, "appId":I
    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object/from16 v7, p7

    .line 1680
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1676
    .end local v3    # "appId":I
    .end local v8    # "uid":I
    :goto_19
    return-void

    .line 1681
    :catch_1a
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_19
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1481
    monitor-enter p0

    .line 1483
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1484
    const/16 v3, 0x2000

    .line 1483
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1485
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 1486
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1487
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2d
    .catchall {:try_start_1 .. :try_end_2a} :catchall_31

    .line 1490
    :cond_2a
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 1491
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_2d
    move-exception v1

    .line 1492
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 1481
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_31
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public addSystemPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1510
    monitor-enter p0

    .line 1512
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1513
    const/16 v3, 0x2000

    .line 1512
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1514
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 1515
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1516
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2d
    .catchall {:try_start_1 .. :try_end_2a} :catchall_31

    .line 1519
    :cond_2a
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 1520
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_2d
    move-exception v1

    .line 1521
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 1510
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_31
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1872
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_2c

    .line 1873
    :cond_b
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1874
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 1875
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 1876
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1877
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1878
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 1879
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 1880
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1881
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 1883
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 1870
    :cond_2c
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1889
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_44

    .line 1892
    :cond_e
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v0, :cond_28

    .line 1893
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1895
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 1896
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 1897
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1899
    :cond_28
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_44

    .line 1900
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 1903
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 1904
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 1887
    :cond_44
    return-void
.end method

.method cancelAlarmLocked()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2298
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2299
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 2300
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2297
    :cond_11
    return-void
.end method

.method cancelLightAlarmLocked()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2305
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2306
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 2307
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2304
    :cond_11
    return-void
.end method

.method cancelLocatingLocked()V
    .registers 3

    .prologue
    .line 2312
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_15

    .line 2313
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2314
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 2311
    :cond_15
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2320
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2321
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2322
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2319
    :cond_11
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 1752
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1756
    .local v2, "timeNow":J
    monitor-enter p0

    .line 1757
    :try_start_5
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_49

    .line 1758
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v1, :cond_11

    monitor-exit p0

    .line 1760
    return-void

    .line 1762
    :cond_11
    :try_start_11
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/MutableLong;

    iget-wide v4, v4, Landroid/util/MutableLong;->value:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3e

    .line 1763
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1767
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked()V

    .line 1768
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_2e

    .line 1769
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/DeviceIdleController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1771
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_49

    .line 1773
    :try_start_31
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1774
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1773
    const/16 v6, 0x4011

    invoke-interface {v5, v6, v4, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_4c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_49

    :goto_3c
    monitor-exit p0

    .line 1751
    return-void

    .line 1782
    :cond_3e
    :try_start_3e
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/MutableLong;

    iget-wide v4, v4, Landroid/util/MutableLong;->value:J

    sub-long/2addr v4, v2

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_49

    goto :goto_3c

    .line 1756
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catchall_49
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1775
    .restart local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :catch_4c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3c
.end method

.method decActiveIdleOps()V
    .registers 2

    .prologue
    .line 2138
    monitor-enter p0

    .line 2139
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2140
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_13

    .line 2141
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 2142
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    .line 2137
    return-void

    .line 2138
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2893
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_48

    .line 2895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump DeviceIdleController from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2896
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2896
    const-string/jumbo v6, ", uid="

    .line 2895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2896
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2897
    const-string/jumbo v6, " without permission "

    .line 2895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2897
    const-string/jumbo v6, "android.permission.DUMP"

    .line 2895
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    return-void

    .line 2901
    :cond_48
    if-eqz p3, :cond_d9

    .line 2902
    const/16 v18, 0x0

    .line 2903
    .local v18, "userId":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4d
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v13, v5, :cond_d9

    .line 2904
    aget-object v11, p3, v13

    .line 2905
    .local v11, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-h"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 2906
    invoke-static/range {p2 .. p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2907
    return-void

    .line 2908
    :cond_61
    const-string/jumbo v5, "-u"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 2909
    add-int/lit8 v13, v13, 0x1

    .line 2910
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v13, v5, :cond_77

    .line 2911
    aget-object v11, p3, v13

    .line 2912
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2903
    :cond_77
    add-int/lit8 v13, v13, 0x1

    goto :goto_4d

    .line 2914
    :cond_7a
    const-string/jumbo v5, "-a"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    .line 2916
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_ac

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_ac

    .line 2917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    return-void

    .line 2920
    :cond_ac
    new-instance v4, Lcom/android/server/DeviceIdleController$Shell;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 2921
    .local v4, "shell":Lcom/android/server/DeviceIdleController$Shell;
    move/from16 v0, v18

    iput v0, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 2922
    move-object/from16 v0, p3

    array-length v5, v0

    sub-int/2addr v5, v13

    new-array v9, v5, [Ljava/lang/String;

    .line 2923
    .local v9, "newArgs":[Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v5, v0

    sub-int/2addr v5, v13

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v13, v9, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2924
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    new-instance v10, Landroid/os/ResultReceiver;

    const/4 v6, 0x0

    invoke-direct {v10, v6}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 2925
    return-void

    .line 2930
    .end local v4    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local v9    # "newArgs":[Ljava/lang/String;
    .end local v11    # "arg":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v18    # "userId":I
    :cond_d9
    monitor-enter p0

    .line 2931
    :try_start_da
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 2933
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eqz v5, :cond_150

    .line 2934
    const-string/jumbo v5, "  Idling history:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 2936
    .local v16, "now":J
    const/16 v13, 0x63

    .restart local v13    # "i":I
    :goto_fa
    if-ltz v13, :cond_150

    .line 2937
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v12, v5, v13

    .line 2938
    .local v12, "cmd":I
    if-nez v12, :cond_107

    .line 2936
    :goto_104
    add-int/lit8 v13, v13, -0x1

    goto :goto_fa

    .line 2942
    :cond_107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v5, v5, v13

    packed-switch v5, :pswitch_data_530

    .line 2948
    const-string/jumbo v14, "         ??"

    .line 2950
    .local v14, "label":Ljava/lang/String;
    :goto_113
    const-string/jumbo v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2951
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2952
    const-string/jumbo v5, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2953
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v6, v5, v13

    move-wide/from16 v0, v16

    move-object/from16 v2, p2

    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2954
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_138
    .catchall {:try_start_da .. :try_end_138} :catchall_139

    goto :goto_104

    .line 2930
    .end local v12    # "cmd":I
    .end local v13    # "i":I
    .end local v14    # "label":Ljava/lang/String;
    .end local v16    # "now":J
    :catchall_139
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2943
    .restart local v12    # "cmd":I
    .restart local v13    # "i":I
    .restart local v16    # "now":J
    :pswitch_13c
    :try_start_13c
    const-string/jumbo v14, "     normal"

    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_113

    .line 2944
    .end local v14    # "label":Ljava/lang/String;
    :pswitch_140
    const-string/jumbo v14, " light-idle"

    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_113

    .line 2945
    .end local v14    # "label":Ljava/lang/String;
    :pswitch_144
    const-string/jumbo v14, "light-maint"

    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_113

    .line 2946
    .end local v14    # "label":Ljava/lang/String;
    :pswitch_148
    const-string/jumbo v14, "  deep-idle"

    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_113

    .line 2947
    .end local v14    # "label":Ljava/lang/String;
    :pswitch_14c
    const-string/jumbo v14, " deep-maint"

    .restart local v14    # "label":Ljava/lang/String;
    goto :goto_113

    .line 2958
    .end local v12    # "cmd":I
    .end local v13    # "i":I
    .end local v14    # "label":Ljava/lang/String;
    .end local v16    # "now":J
    :cond_150
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 2959
    .local v15, "size":I
    if-lez v15, :cond_17f

    .line 2960
    const-string/jumbo v5, "  Whitelist (except idle) system apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_163
    if-ge v13, v15, :cond_17f

    .line 2962
    const-string/jumbo v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2963
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    add-int/lit8 v13, v13, 0x1

    goto :goto_163

    .line 2966
    .end local v13    # "i":I
    :cond_17f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 2967
    if-lez v15, :cond_1ae

    .line 2968
    const-string/jumbo v5, "  Whitelist system apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2969
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_192
    if-ge v13, v15, :cond_1ae

    .line 2970
    const-string/jumbo v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2971
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2969
    add-int/lit8 v13, v13, 0x1

    goto :goto_192

    .line 2974
    .end local v13    # "i":I
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 2975
    if-lez v15, :cond_1dd

    .line 2976
    const-string/jumbo v5, "  Whitelist user apps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_1c1
    if-ge v13, v15, :cond_1dd

    .line 2978
    const-string/jumbo v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2979
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c1

    .line 2982
    .end local v13    # "i":I
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 2983
    if-lez v15, :cond_20d

    .line 2984
    const-string/jumbo v5, "  Whitelist (except idle) all app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_1f0
    if-ge v13, v15, :cond_20d

    .line 2986
    const-string/jumbo v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2987
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2988
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2985
    add-int/lit8 v13, v13, 0x1

    goto :goto_1f0

    .line 2991
    .end local v13    # "i":I
    :cond_20d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 2992
    if-lez v15, :cond_23d

    .line 2993
    const-string/jumbo v5, "  Whitelist user app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_220
    if-ge v13, v15, :cond_23d

    .line 2995
    const-string/jumbo v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2996
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2997
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2994
    add-int/lit8 v13, v13, 0x1

    goto :goto_220

    .line 3000
    .end local v13    # "i":I
    :cond_23d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 3001
    if-lez v15, :cond_26d

    .line 3002
    const-string/jumbo v5, "  Whitelist all app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_250
    if-ge v13, v15, :cond_26d

    .line 3004
    const-string/jumbo v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3005
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3006
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3003
    add-int/lit8 v13, v13, 0x1

    goto :goto_250

    .line 3009
    .end local v13    # "i":I
    :cond_26d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 3011
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v5, :cond_2a6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v15, v5

    .line 3012
    :goto_280
    if-lez v15, :cond_2a8

    .line 3013
    const-string/jumbo v5, "  Temp whitelist app ids:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_28b
    if-ge v13, v15, :cond_2a8

    .line 3015
    const-string/jumbo v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3016
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v5, v5, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3017
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3014
    add-int/lit8 v13, v13, 0x1

    goto :goto_28b

    .line 3011
    .end local v13    # "i":I
    :cond_2a6
    const/4 v15, 0x0

    goto :goto_280

    .line 3021
    :cond_2a8
    const-string/jumbo v5, "  mLightEnabled="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 3022
    const-string/jumbo v5, "  mDeepEnabled="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3023
    const-string/jumbo v5, "  mForceIdle="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3024
    const-string/jumbo v5, "  mMotionSensor="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3025
    const-string/jumbo v5, "  mCurDisplay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3026
    const-string/jumbo v5, "  mScreenOn="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3027
    const-string/jumbo v5, "  mNetworkConnected="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3028
    const-string/jumbo v5, "  mCharging="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3029
    const-string/jumbo v5, "  mMotionActive="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3030
    const-string/jumbo v5, "  mNotMoving="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3031
    const-string/jumbo v5, "  mLocating="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v5, " mHasGps="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3032
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v5, " mHasNetwork="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3033
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v5, " mLocated="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3034
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v5, :cond_3af

    .line 3035
    const-string/jumbo v5, "  mLastGenericLocation="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3037
    :cond_3af
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v5, :cond_3c6

    .line 3038
    const-string/jumbo v5, "  mLastGpsLocation="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3040
    :cond_3c6
    const-string/jumbo v5, "  mState="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3041
    const-string/jumbo v5, " mLightState="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3042
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    const-string/jumbo v5, "  mInactiveTimeout="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3044
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3045
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz v5, :cond_41b

    .line 3046
    const-string/jumbo v5, "  mActiveIdleOpCount="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3048
    :cond_41b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v20, 0x0

    cmp-long v5, v6, v20

    if-eqz v5, :cond_43f

    .line 3049
    const-string/jumbo v5, "  mNextAlarmTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3050
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3051
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3053
    :cond_43f
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    const-wide/16 v20, 0x0

    cmp-long v5, v6, v20

    if-eqz v5, :cond_45d

    .line 3054
    const-string/jumbo v5, "  mNextIdlePendingDelay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3055
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3056
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3058
    :cond_45d
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    const-wide/16 v20, 0x0

    cmp-long v5, v6, v20

    if-eqz v5, :cond_47b

    .line 3059
    const-string/jumbo v5, "  mNextIdleDelay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3060
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3061
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3063
    :cond_47b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    const-wide/16 v20, 0x0

    cmp-long v5, v6, v20

    if-eqz v5, :cond_499

    .line 3064
    const-string/jumbo v5, "  mNextIdleDelay="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3065
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3066
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3068
    :cond_499
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v20, 0x0

    cmp-long v5, v6, v20

    if-eqz v5, :cond_4bd

    .line 3069
    const-string/jumbo v5, "  mNextLightAlarmTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3070
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3071
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3073
    :cond_4bd
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    const-wide/16 v20, 0x0

    cmp-long v5, v6, v20

    if-eqz v5, :cond_4db

    .line 3074
    const-string/jumbo v5, "  mCurIdleBudget="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3075
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3076
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3078
    :cond_4db
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    const-wide/16 v20, 0x0

    cmp-long v5, v6, v20

    if-eqz v5, :cond_4ff

    .line 3079
    const-string/jumbo v5, "  mMaintenanceStartTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3080
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3081
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3083
    :cond_4ff
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v5, :cond_516

    .line 3084
    const-string/jumbo v5, "  mJobsActive="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3086
    :cond_516
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz v5, :cond_52d

    .line 3087
    const-string/jumbo v5, "  mAlarmsActive="

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_52d
    .catchall {:try_start_13c .. :try_end_52d} :catchall_139

    :cond_52d
    monitor-exit p0

    .line 2892
    return-void

    .line 2942
    nop

    :pswitch_data_530
    .packed-switch 0x1
        :pswitch_13c
        :pswitch_140
        :pswitch_144
        :pswitch_148
        :pswitch_14c
    .end packed-switch
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "printTitle"    # Z

    .prologue
    .line 3093
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3094
    .local v3, "size":I
    if-lez v3, :cond_56

    .line 3095
    const-string/jumbo v2, ""

    .line 3096
    .local v2, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_16

    .line 3097
    const-string/jumbo v6, "  Temp whitelist schedule:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    const-string/jumbo v2, "    "

    .line 3100
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3101
    .local v4, "timeNow":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v3, :cond_56

    .line 3102
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3103
    const-string/jumbo v6, "UID="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3104
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 3105
    const-string/jumbo v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3106
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3107
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/MutableLong;

    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    invoke-static {v6, v7, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3108
    const-string/jumbo v6, " - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3109
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 3092
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "timeNow":J
    :cond_56
    return-void
.end method

.method exitForceIdleLocked()V
    .registers 3

    .prologue
    .line 1925
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_19

    .line 1926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 1927
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_19

    .line 1928
    :cond_f
    const-string/jumbo v0, "exit-force"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 1924
    :cond_19
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1788
    monitor-enter p0

    .line 1789
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    .line 1787
    return-void

    .line 1788
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x6

    .line 2195
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eq v2, v3, :cond_a

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v2, v3, :cond_1f

    .line 2197
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2207
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v2, v3, :cond_24

    .line 2208
    const-string/jumbo v2, "s:early"

    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2194
    .end local v0    # "now":J
    :cond_1e
    :goto_1e
    return-void

    .line 2196
    :cond_1f
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v2, v4, :cond_1e

    goto :goto_a

    .line 2209
    .restart local v0    # "now":J
    :cond_24
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v2, v4, :cond_2f

    .line 2210
    const-string/jumbo v2, "s:predone"

    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_1e

    .line 2212
    :cond_2f
    const-string/jumbo v2, "s:early"

    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .prologue
    .line 1644
    monitor-enter p0

    .line 1645
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1644
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .registers 2

    .prologue
    .line 1638
    monitor-enter p0

    .line 1639
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1638
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .prologue
    .line 1626
    monitor-enter p0

    .line 1627
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1626
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .prologue
    .line 1632
    monitor-enter p0

    .line 1633
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1632
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1578
    monitor-enter p0

    .line 1579
    :try_start_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int v3, v4, v5

    .line 1580
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    .line 1581
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1582
    .local v1, "cur":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    .line 1583
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1584
    add-int/lit8 v1, v1, 0x1

    .line 1582
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1586
    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_42

    .line 1587
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_44

    .line 1588
    add-int/lit8 v1, v1, 0x1

    .line 1586
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_42
    monitor-exit p0

    .line 1590
    return-object v0

    .line 1578
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "cur":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_44
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1595
    monitor-enter p0

    .line 1596
    :try_start_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int v3, v4, v5

    .line 1597
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    .line 1598
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1599
    .local v1, "cur":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2a

    .line 1600
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1601
    add-int/lit8 v1, v1, 0x1

    .line 1599
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1603
    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_42

    .line 1604
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_44

    .line 1605
    add-int/lit8 v1, v1, 0x1

    .line 1603
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_42
    monitor-exit p0

    .line 1607
    return-object v0

    .line 1595
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "cur":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_44
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1539
    monitor-enter p0

    .line 1540
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    .line 1539
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .prologue
    .line 1329
    monitor-enter p0

    .line 1330
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1329
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1545
    monitor-enter p0

    .line 1546
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1547
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 1548
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_19

    .line 1549
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b

    .line 1548
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_19
    monitor-exit p0

    .line 1551
    return-object v0

    .line 1545
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_1b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1556
    monitor-enter p0

    .line 1557
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1558
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 1559
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_19

    .line 1560
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b

    .line 1559
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_19
    monitor-exit p0

    .line 1562
    return-object v0

    .line 1556
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_1b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1567
    monitor-enter p0

    .line 1568
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1569
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 1570
    .local v0, "apps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    .line 1571
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    .line 1570
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1f
    monitor-exit p0

    .line 1573
    return-object v0

    .line 1567
    .end local v0    # "apps":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_21
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2228
    const/4 v0, 0x0

    .line 2229
    .local v0, "becomeInactive":Z
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v1, :cond_21

    .line 2230
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 2231
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2232
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2233
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2234
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2235
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v1, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2236
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 2237
    const/4 v0, 0x1

    .line 2239
    :cond_21
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2e

    .line 2242
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2243
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v1, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2244
    const/4 v0, 0x1

    .line 2246
    :cond_2e
    if-eqz v0, :cond_33

    .line 2247
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2224
    :cond_33
    return-void
.end method

.method handleWriteConfigFile()V
    .registers 8

    .prologue
    .line 2515
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2518
    .local v1, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_38

    .line 2519
    :try_start_6
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2520
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2521
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_35

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_18} :catch_38

    .line 2526
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_18
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v5

    .line 2527
    const/4 v3, 0x0

    .line 2529
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2530
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2531
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 2532
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2533
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2534
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_33} :catch_3a
    .catchall {:try_start_1c .. :try_end_33} :catchall_4a

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_33
    monitor-exit v5

    .line 2514
    return-void

    .line 2518
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit p0

    throw v4
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_38} :catch_38

    .line 2523
    :catch_38
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_18

    .line 2535
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3a
    move-exception v0

    .line 2536
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3b
    const-string/jumbo v4, "DeviceIdleController"

    const-string/jumbo v6, "Error writing config file"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2537
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_4a

    goto :goto_33

    .line 2526
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4a
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method incActiveIdleOps()V
    .registers 2

    .prologue
    .line 2132
    monitor-enter p0

    .line 2133
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 2131
    return-void

    .line 2132
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2191
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1619
    monitor-enter p0

    .line 1620
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1621
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    move-result v0

    :goto_f
    monitor-exit p0

    .line 1620
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_f

    .line 1619
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1612
    monitor-enter p0

    .line 1613
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1614
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    move-result v0

    :goto_f
    monitor-exit p0

    .line 1613
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_f

    .line 1612
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method motionLocked()V
    .registers 4

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 2218
    return-void
.end method

.method public onAnyMotionResult(I)V
    .registers 5
    .param p1, "result"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 976
    if-eq p1, v1, :cond_9

    .line 977
    monitor-enter p0

    .line 978
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1a

    monitor-exit p0

    .line 981
    :cond_9
    if-eq p1, v0, :cond_d

    .line 982
    if-ne p1, v1, :cond_20

    .line 983
    :cond_d
    monitor-enter p0

    .line 984
    :try_start_e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "non_stationary"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    :cond_18
    :goto_18
    monitor-exit p0

    .line 974
    :cond_19
    return-void

    .line 977
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 983
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 986
    :cond_20
    if-nez p1, :cond_19

    .line 987
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 989
    monitor-enter p0

    .line 990
    const/4 v0, 0x1

    :try_start_29
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 991
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_32

    goto :goto_18

    .line 989
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    .line 993
    :cond_35
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 996
    monitor-enter p0

    .line 997
    const/4 v0, 0x1

    :try_start_3c
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 998
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_18

    .line 999
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    goto :goto_18

    .line 996
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 11
    .param p1, "phase"    # I

    .prologue
    const/4 v8, 0x0

    .line 1398
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1cc

    .line 1399
    monitor-enter p0

    .line 1400
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1401
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1402
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 1403
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 1404
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 1405
    const-string/jumbo v1, "deviceidle_maint"

    .line 1404
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1406
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1407
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 1408
    const-string/jumbo v1, "deviceidle_going_idle"

    .line 1407
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1409
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1411
    const-string/jumbo v0, "connectivity"

    .line 1410
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 1412
    const-class v0, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$LocalService;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    .line 1414
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1413
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1416
    const-string/jumbo v1, "display"

    .line 1415
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1418
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1419
    const v1, 0x10e000d

    .line 1418
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1420
    .local v7, "sigMotionSensorId":I
    if-lez v7, :cond_b1

    .line 1421
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1423
    :cond_b1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_d1

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1424
    const v1, 0x1120016

    .line 1423
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1425
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1426
    const/16 v1, 0x1a

    const/4 v2, 0x1

    .line 1425
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1428
    :cond_d1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_e0

    .line 1430
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1431
    const/16 v1, 0x11

    const/4 v2, 0x1

    .line 1430
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1434
    :cond_e0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1435
    const v1, 0x1120017

    .line 1434
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1437
    const-string/jumbo v1, "location"

    .line 1436
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    .line 1438
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    .line 1439
    const/16 v1, 0x64

    .line 1438
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1440
    const-wide/16 v2, 0x0

    .line 1438
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1441
    const-wide/16 v2, 0x0

    .line 1438
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1442
    const/4 v1, 0x1

    .line 1438
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 1445
    :cond_11e
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1446
    const v1, 0x10e000c

    .line 1445
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 1446
    const/high16 v1, 0x42c80000    # 100.0f

    .line 1445
    div-float v5, v0, v1

    .line 1447
    .local v5, "angleThreshold":F
    new-instance v0, Lcom/android/server/AnyMotionDetector;

    .line 1448
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1449
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object v4, p0

    .line 1447
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 1451
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 1452
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1454
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 1455
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1458
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1459
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1462
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1463
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1464
    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1467
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1468
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1471
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 1472
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$LocalService;->setDeviceIdleUserWhitelist([I)V

    .line 1473
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateDisplayLocked()V
    :try_end_1c8
    .catchall {:try_start_6 .. :try_end_1c8} :catchall_1cd

    monitor-exit p0

    .line 1476
    invoke-virtual {p0, v8}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 1397
    .end local v5    # "angleThreshold":F
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "sigMotionSensorId":I
    :cond_1cc
    return-void

    .line 1399
    :catchall_1cd
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .registers 24
    .param p1, "shell"    # Lcom/android/server/DeviceIdleController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2601
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v16

    .line 2602
    .local v16, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "step"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 2603
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 2604
    const/4 v5, 0x0

    .line 2603
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    monitor-enter p0

    .line 2606
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2607
    .local v18, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_7d

    move-result-object v3

    .line 2609
    .local v3, "arg":Ljava/lang/String;
    if-eqz v3, :cond_2e

    :try_start_25
    const-string/jumbo v2, "deep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2610
    :cond_2e
    const-string/jumbo v2, "s:shell"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2611
    const-string/jumbo v2, "Stepped to deep: "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2612
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_78

    .line 2620
    :goto_4b
    :try_start_4b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_7d

    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :cond_4e
    :goto_4e
    monitor-exit p0

    .line 2889
    :goto_4f
    const/4 v2, 0x0

    return v2

    .line 2613
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v18    # "token":J
    :cond_51
    :try_start_51
    const-string/jumbo v2, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 2614
    const-string/jumbo v2, "s:shell"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2615
    const-string/jumbo v2, "Stepped to light: "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_51 .. :try_end_77} :catchall_78

    goto :goto_4b

    .line 2619
    :catchall_78
    move-exception v2

    .line 2620
    :try_start_79
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2619
    throw v2
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 2605
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :catchall_7d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2617
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v18    # "token":J
    :cond_80
    :try_start_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown idle mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_80 .. :try_end_99} :catchall_78

    goto :goto_4b

    .line 2623
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :cond_9a
    const-string/jumbo v2, "force-idle"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 2624
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 2625
    const/4 v5, 0x0

    .line 2624
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    monitor-enter p0

    .line 2627
    :try_start_b1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2628
    .restart local v18    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_125

    move-result-object v3

    .line 2630
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_c4

    :try_start_bb
    const-string/jumbo v2, "deep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 2631
    :cond_c4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v2, :cond_d8

    .line 2632
    const-string/jumbo v2, "Unable to go deep idle; not enabled"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_bb .. :try_end_d2} :catchall_17a

    .line 2668
    :try_start_d2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_125

    .line 2633
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 2635
    :cond_d8
    const/4 v2, 0x1

    :try_start_d9
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2637
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2638
    .local v11, "curState":I
    :goto_e4
    const/4 v2, 0x5

    if-eq v11, v2, :cond_118

    .line 2639
    const-string/jumbo v2, "s:shell"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2640
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v11, v2, :cond_113

    .line 2641
    const-string/jumbo v2, "Unable to go deep idle; stopped at "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2642
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_10d
    .catchall {:try_start_d9 .. :try_end_10d} :catchall_17a

    .line 2668
    :try_start_10d
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_125

    .line 2644
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 2646
    :cond_113
    :try_start_113
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/DeviceIdleController;->mState:I

    goto :goto_e4

    .line 2648
    :cond_118
    const-string/jumbo v2, "Now forced in to deep idle mode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_113 .. :try_end_120} :catchall_17a

    .line 2668
    .end local v11    # "curState":I
    :goto_120
    :try_start_120
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_125

    goto/16 :goto_4e

    .line 2626
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :catchall_125
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2649
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v18    # "token":J
    :cond_128
    :try_start_128
    const-string/jumbo v2, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    .line 2650
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2652
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2653
    .local v10, "curLightState":I
    :goto_13d
    const/4 v2, 0x4

    if-eq v10, v2, :cond_171

    .line 2654
    const-string/jumbo v2, "s:shell"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2655
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v10, v2, :cond_16c

    .line 2656
    const-string/jumbo v2, "Unable to go light idle; stopped at "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2657
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2658
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_166
    .catchall {:try_start_128 .. :try_end_166} :catchall_17a

    .line 2668
    :try_start_166
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_169
    .catchall {:try_start_166 .. :try_end_169} :catchall_125

    .line 2659
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 2661
    :cond_16c
    :try_start_16c
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    goto :goto_13d

    .line 2663
    :cond_171
    const-string/jumbo v2, "Now forced in to light idle mode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_16c .. :try_end_179} :catchall_17a

    goto :goto_120

    .line 2667
    .end local v10    # "curLightState":I
    :catchall_17a
    move-exception v2

    .line 2668
    :try_start_17b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2667
    throw v2
    :try_end_17f
    .catchall {:try_start_17b .. :try_end_17f} :catchall_125

    .line 2665
    :cond_17f
    :try_start_17f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown idle mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_198
    .catchall {:try_start_17f .. :try_end_198} :catchall_17a

    goto :goto_120

    .line 2671
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :cond_199
    const-string/jumbo v2, "force-inactive"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 2672
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 2673
    const/4 v5, 0x0

    .line 2672
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    monitor-enter p0

    .line 2675
    :try_start_1b0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b3
    .catchall {:try_start_1b0 .. :try_end_1b3} :catchall_1eb

    move-result-wide v18

    .line 2677
    .restart local v18    # "token":J
    const/4 v2, 0x1

    :try_start_1b5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2678
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2679
    const-string/jumbo v2, "Light state: "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2680
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2681
    const-string/jumbo v2, ", deep state: "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2682
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e6
    .catchall {:try_start_1b5 .. :try_end_1e6} :catchall_1ee

    .line 2684
    :try_start_1e6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1e9
    .catchall {:try_start_1e6 .. :try_end_1e9} :catchall_1eb

    goto/16 :goto_4e

    .line 2674
    .end local v18    # "token":J
    :catchall_1eb
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2683
    .restart local v18    # "token":J
    :catchall_1ee
    move-exception v2

    .line 2684
    :try_start_1ef
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2683
    throw v2
    :try_end_1f3
    .catchall {:try_start_1ef .. :try_end_1f3} :catchall_1eb

    .line 2687
    .end local v18    # "token":J
    :cond_1f3
    const-string/jumbo v2, "unforce"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_248

    .line 2688
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 2689
    const/4 v5, 0x0

    .line 2688
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    monitor-enter p0

    .line 2691
    :try_start_20a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20d
    .catchall {:try_start_20a .. :try_end_20d} :catchall_240

    move-result-wide v18

    .line 2693
    .restart local v18    # "token":J
    :try_start_20e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 2694
    const-string/jumbo v2, "Light state: "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2695
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2696
    const-string/jumbo v2, ", deep state: "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2697
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_23b
    .catchall {:try_start_20e .. :try_end_23b} :catchall_243

    .line 2699
    :try_start_23b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_23e
    .catchall {:try_start_23b .. :try_end_23e} :catchall_240

    goto/16 :goto_4e

    .line 2690
    .end local v18    # "token":J
    :catchall_240
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2698
    .restart local v18    # "token":J
    :catchall_243
    move-exception v2

    .line 2699
    :try_start_244
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2698
    throw v2
    :try_end_248
    .catchall {:try_start_244 .. :try_end_248} :catchall_240

    .line 2702
    .end local v18    # "token":J
    :cond_248
    const-string/jumbo v2, "get"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    .line 2703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 2704
    const/4 v5, 0x0

    .line 2703
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    monitor-enter p0

    .line 2706
    :try_start_25f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2707
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_30a

    .line 2708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_268
    .catchall {:try_start_25f .. :try_end_268} :catchall_284

    move-result-wide v18

    .line 2710
    .restart local v18    # "token":J
    :try_start_269
    const-string/jumbo v2, "light"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_287

    .line 2711
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27f
    .catchall {:try_start_269 .. :try_end_27f} :catchall_29e

    .line 2720
    :goto_27f
    :try_start_27f
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_282
    .catchall {:try_start_27f .. :try_end_282} :catchall_284

    goto/16 :goto_4e

    .line 2705
    .end local v3    # "arg":Ljava/lang/String;
    .end local v18    # "token":J
    :catchall_284
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2710
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v18    # "token":J
    :cond_287
    :try_start_287
    const-string/jumbo v2, "deep"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a3

    .line 2712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_29d
    .catchall {:try_start_287 .. :try_end_29d} :catchall_29e

    goto :goto_27f

    .line 2719
    :catchall_29e
    move-exception v2

    .line 2720
    :try_start_29f
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2719
    throw v2
    :try_end_2a3
    .catchall {:try_start_29f .. :try_end_2a3} :catchall_284

    .line 2710
    :cond_2a3
    :try_start_2a3
    const-string/jumbo v2, "force"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b6

    .line 2713
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_27f

    .line 2710
    :cond_2b6
    const-string/jumbo v2, "screen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c9

    .line 2714
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_27f

    .line 2710
    :cond_2c9
    const-string/jumbo v2, "charging"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2dc

    .line 2715
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_27f

    .line 2710
    :cond_2dc
    const-string/jumbo v2, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ef

    .line 2716
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_27f

    .line 2717
    :cond_2ef
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown get option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_308
    .catchall {:try_start_2a3 .. :try_end_308} :catchall_29e

    goto/16 :goto_27f

    .line 2723
    .end local v18    # "token":J
    :cond_30a
    :try_start_30a
    const-string/jumbo v2, "Argument required"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_312
    .catchall {:try_start_30a .. :try_end_312} :catchall_284

    goto/16 :goto_4e

    .line 2726
    .end local v3    # "arg":Ljava/lang/String;
    :cond_314
    const-string/jumbo v2, "disable"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d8

    .line 2727
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 2728
    const/4 v5, 0x0

    .line 2727
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    monitor-enter p0

    .line 2730
    :try_start_32b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2731
    .restart local v18    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_332
    .catchall {:try_start_32b .. :try_end_332} :catchall_3ce

    move-result-object v3

    .line 2733
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2734
    .local v8, "becomeActive":Z
    const/16 v20, 0x0

    .line 2735
    .local v20, "valid":Z
    if-eqz v3, :cond_34a

    :try_start_338
    const-string/jumbo v2, "deep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34a

    const-string/jumbo v2, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_360

    .line 2736
    :cond_34a
    const/16 v20, 0x1

    .line 2737
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_360

    .line 2738
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 2739
    const/4 v8, 0x1

    .line 2740
    const-string/jumbo v2, "Deep idle mode disabled"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2743
    :cond_360
    if-eqz v3, :cond_374

    const-string/jumbo v2, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_374

    const-string/jumbo v2, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38a

    .line 2744
    :cond_374
    const/16 v20, 0x1

    .line 2745
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_38a

    .line 2746
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2747
    const/4 v8, 0x1

    .line 2748
    const-string/jumbo v2, "Light idle mode disabled"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2751
    :cond_38a
    if-eqz v8, :cond_3ae

    .line 2752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_3d1

    const-string/jumbo v2, "all"

    :goto_396
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "-disabled"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2753
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 2752
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2755
    :cond_3ae
    if-nez v20, :cond_3c9

    .line 2756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown idle mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c9
    .catchall {:try_start_338 .. :try_end_3c9} :catchall_3d3

    .line 2759
    :cond_3c9
    :try_start_3c9
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3cc
    .catchall {:try_start_3c9 .. :try_end_3cc} :catchall_3ce

    goto/16 :goto_4e

    .line 2729
    .end local v3    # "arg":Ljava/lang/String;
    .end local v8    # "becomeActive":Z
    .end local v18    # "token":J
    .end local v20    # "valid":Z
    :catchall_3ce
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v8    # "becomeActive":Z
    .restart local v18    # "token":J
    .restart local v20    # "valid":Z
    :cond_3d1
    move-object v2, v3

    .line 2752
    goto :goto_396

    .line 2758
    :catchall_3d3
    move-exception v2

    .line 2759
    :try_start_3d4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2758
    throw v2
    :try_end_3d8
    .catchall {:try_start_3d4 .. :try_end_3d8} :catchall_3ce

    .line 2762
    .end local v3    # "arg":Ljava/lang/String;
    .end local v8    # "becomeActive":Z
    .end local v18    # "token":J
    .end local v20    # "valid":Z
    :cond_3d8
    const-string/jumbo v2, "enable"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47b

    .line 2763
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    .line 2764
    const/4 v5, 0x0

    .line 2763
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    monitor-enter p0

    .line 2766
    :try_start_3ef
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2767
    .restart local v18    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_3f6
    .catchall {:try_start_3ef .. :try_end_3f6} :catchall_473

    move-result-object v3

    .line 2769
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2770
    .local v9, "becomeInactive":Z
    const/16 v20, 0x0

    .line 2771
    .restart local v20    # "valid":Z
    if-eqz v3, :cond_40e

    :try_start_3fc
    const-string/jumbo v2, "deep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40e

    const-string/jumbo v2, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_424

    .line 2772
    :cond_40e
    const/16 v20, 0x1

    .line 2773
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v2, :cond_424

    .line 2774
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 2775
    const/4 v9, 0x1

    .line 2776
    const-string/jumbo v2, "Deep idle mode enabled"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    :cond_424
    if-eqz v3, :cond_438

    const-string/jumbo v2, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_438

    const-string/jumbo v2, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44e

    .line 2780
    :cond_438
    const/16 v20, 0x1

    .line 2781
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v2, :cond_44e

    .line 2782
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2783
    const/4 v9, 0x1

    .line 2784
    const-string/jumbo v2, "Light idle mode enable"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2787
    :cond_44e
    if-eqz v9, :cond_453

    .line 2788
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2790
    :cond_453
    if-nez v20, :cond_46e

    .line 2791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown idle mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_46e
    .catchall {:try_start_3fc .. :try_end_46e} :catchall_476

    .line 2794
    :cond_46e
    :try_start_46e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_471
    .catchall {:try_start_46e .. :try_end_471} :catchall_473

    goto/16 :goto_4e

    .line 2765
    .end local v3    # "arg":Ljava/lang/String;
    .end local v9    # "becomeInactive":Z
    .end local v18    # "token":J
    .end local v20    # "valid":Z
    :catchall_473
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2793
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v9    # "becomeInactive":Z
    .restart local v18    # "token":J
    .restart local v20    # "valid":Z
    :catchall_476
    move-exception v2

    .line 2794
    :try_start_477
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2793
    throw v2
    :try_end_47b
    .catchall {:try_start_477 .. :try_end_47b} :catchall_473

    .line 2797
    .end local v3    # "arg":Ljava/lang/String;
    .end local v9    # "becomeInactive":Z
    .end local v18    # "token":J
    .end local v20    # "valid":Z
    :cond_47b
    const-string/jumbo v2, "enabled"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50e

    .line 2798
    monitor-enter p0

    .line 2799
    :try_start_487
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2800
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_496

    const-string/jumbo v2, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b5

    .line 2801
    :cond_496
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_4af

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_4af

    const-string/jumbo v2, "1"

    :goto_4a5
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_4aa
    .catchall {:try_start_487 .. :try_end_4aa} :catchall_4ac

    goto/16 :goto_4e

    .line 2798
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_4ac
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2801
    .restart local v3    # "arg":Ljava/lang/String;
    :cond_4af
    const/4 v2, 0x0

    :try_start_4b0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4a5

    .line 2802
    :cond_4b5
    const-string/jumbo v2, "deep"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d4

    .line 2803
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_4ce

    const-string/jumbo v2, "1"

    :goto_4c7
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_4e

    :cond_4ce
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4c7

    .line 2804
    :cond_4d4
    const-string/jumbo v2, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f3

    .line 2805
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_4ed

    const-string/jumbo v2, "1"

    :goto_4e6
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_4e

    :cond_4ed
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4e6

    .line 2807
    :cond_4f3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown idle mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_50c
    .catchall {:try_start_4b0 .. :try_end_50c} :catchall_4ac

    goto/16 :goto_4e

    .line 2810
    .end local v3    # "arg":Ljava/lang/String;
    :cond_50e
    const-string/jumbo v2, "whitelist"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6ab

    .line 2811
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2812
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_5f9

    .line 2813
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2814
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    .line 2813
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2818
    .restart local v18    # "token":J
    :cond_52e
    :try_start_52e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_550

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_56e

    .line 2819
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_56e

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_56e

    .line 2820
    :cond_550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_569
    .catchall {:try_start_52e .. :try_end_569} :catchall_5c2

    .line 2821
    const/4 v2, -0x1

    .line 2840
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2821
    return v2

    .line 2823
    :cond_56e
    const/4 v2, 0x0

    :try_start_56f
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 2824
    .local v13, "op":C
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2825
    .local v15, "pkg":Ljava/lang/String;
    const/16 v2, 0x2b

    if-ne v13, v2, :cond_5c7

    .line 2826
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a8

    .line 2827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Added: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    :cond_59d
    :goto_59d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_5a0
    .catchall {:try_start_56f .. :try_end_5a0} :catchall_5c2

    move-result-object v3

    if-nez v3, :cond_52e

    .line 2840
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4f

    .line 2829
    :cond_5a8
    :try_start_5a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5c1
    .catchall {:try_start_5a8 .. :try_end_5c1} :catchall_5c2

    goto :goto_59d

    .line 2839
    .end local v13    # "op":C
    .end local v15    # "pkg":Ljava/lang/String;
    :catchall_5c2
    move-exception v2

    .line 2840
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2839
    throw v2

    .line 2831
    .restart local v13    # "op":C
    .restart local v15    # "pkg":Ljava/lang/String;
    :cond_5c7
    const/16 v2, 0x2d

    if-ne v13, v2, :cond_5ed

    .line 2832
    :try_start_5cb
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59d

    .line 2833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_59d

    .line 2836
    :cond_5ed
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_5f8
    .catchall {:try_start_5cb .. :try_end_5f8} :catchall_5c2

    goto :goto_59d

    .line 2843
    .end local v13    # "op":C
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v18    # "token":J
    :cond_5f9
    monitor-enter p0

    .line 2844
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5fb
    :try_start_5fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_634

    .line 2845
    const-string/jumbo v2, "system-excidle,"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2847
    const-string/jumbo v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2844
    add-int/lit8 v12, v12, 0x1

    goto :goto_5fb

    .line 2850
    :cond_634
    const/4 v12, 0x0

    :goto_635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_66e

    .line 2851
    const-string/jumbo v2, "system,"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2853
    const-string/jumbo v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2850
    add-int/lit8 v12, v12, 0x1

    goto :goto_635

    .line 2856
    :cond_66e
    const/4 v12, 0x0

    :goto_66f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v12, v2, :cond_4e

    .line 2857
    const-string/jumbo v2, "user,"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2859
    const-string/jumbo v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_6a5
    .catchall {:try_start_5fb .. :try_end_6a5} :catchall_6a8

    .line 2856
    add-int/lit8 v12, v12, 0x1

    goto :goto_66f

    .line 2843
    :catchall_6a8
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2864
    .end local v3    # "arg":Ljava/lang/String;
    .end local v12    # "j":I
    :cond_6ab
    const-string/jumbo v2, "tempwhitelist"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71c

    .line 2866
    :cond_6b6
    :goto_6b6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v14

    .local v14, "opt":Ljava/lang/String;
    if-eqz v14, :cond_6de

    .line 2867
    const-string/jumbo v2, "-u"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b6

    .line 2868
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v14

    .line 2869
    if-nez v14, :cond_6d5

    .line 2870
    const-string/jumbo v2, "-u requires a user number"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    const/4 v2, -0x1

    return v2

    .line 2873
    :cond_6d5
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_6b6

    .line 2876
    :cond_6de
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2877
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_712

    .line 2879
    :try_start_6e4
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const-string/jumbo v7, "shell"

    const-wide/16 v4, 0x2710

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_6f2
    .catch Landroid/os/RemoteException; {:try_start_6e4 .. :try_end_6f2} :catch_6f4

    goto/16 :goto_4f

    .line 2880
    :catch_6f4
    move-exception v17

    .line 2881
    .local v17, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 2884
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_712
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    goto/16 :goto_4f

    .line 2887
    .end local v3    # "arg":Ljava/lang/String;
    .end local v14    # "opt":Ljava/lang/String;
    :cond_71c
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public onStart()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 1340
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1342
    .local v7, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 1343
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1344
    const v11, 0x1120015

    .line 1343
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "com.google.android.gms"

    invoke-static {v9, v10}, Lorg/cyanogenmod/internal/util/PackageManagerUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 1343
    :cond_26
    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1346
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v8

    .line 1347
    .local v8, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    .line 1348
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_33
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v5, v9, :cond_5f

    .line 1349
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_e9

    .line 1352
    .local v6, "pkg":Ljava/lang/String;
    const/high16 v9, 0x100000

    .line 1351
    :try_start_41
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1353
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1354
    .local v3, "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_5c} :catch_ee
    .catchall {:try_start_41 .. :try_end_5c} :catchall_e9

    .line 1348
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 1359
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_5f
    :try_start_5f
    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v1

    .line 1360
    .local v1, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :goto_64
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v5, v9, :cond_a1

    .line 1361
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_e9

    .line 1364
    .restart local v6    # "pkg":Ljava/lang/String;
    const/high16 v9, 0x100000

    .line 1363
    :try_start_72
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1365
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1368
    .restart local v3    # "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1370
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_72 .. :try_end_9e} :catch_ec
    .catchall {:try_start_72 .. :try_end_9e} :catchall_e9

    .line 1360
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    :goto_9e
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 1376
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_a1
    :try_start_a1
    new-instance v9, Lcom/android/server/DeviceIdleController$Constants;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v9, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 1379
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1381
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 1382
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1385
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1386
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1387
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1388
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v9, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v10, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J
    :try_end_cd
    .catchall {:try_start_a1 .. :try_end_cd} :catchall_e9

    monitor-exit p0

    .line 1391
    new-instance v9, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService;)V

    iput-object v9, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 1392
    const-string/jumbo v9, "deviceidle"

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1393
    const-class v9, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v10, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v10, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1339
    return-void

    .line 1342
    .end local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v8    # "sysConfig":Lcom/android/server/SystemConfig;
    :catchall_e9
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1372
    .restart local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v8    # "sysConfig":Lcom/android/server/SystemConfig;
    :catch_ec
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_9e

    .line 1356
    .end local v1    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_ee
    move-exception v4

    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_5c
.end method

.method readConfigFileLocked()V
    .registers 7

    .prologue
    .line 2434
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 2437
    :try_start_5
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_1f

    move-result-object v4

    .line 2442
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2443
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2444
    invoke-direct {p0, v3}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1b} :catch_23
    .catchall {:try_start_b .. :try_end_1b} :catchall_2a

    .line 2448
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_21

    .line 2432
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1e
    return-void

    .line 2438
    .end local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1f
    move-exception v0

    .line 2439
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 2449
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_21
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1e

    .line 2445
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_23
    move-exception v2

    .line 2448
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_24
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_1e

    .line 2449
    :catch_28
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1e

    .line 2446
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_2a
    move-exception v5

    .line 2448
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 2446
    :goto_2e
    throw v5

    .line 2449
    :catch_2f
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2e
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 2252
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2254
    return-void

    .line 2257
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 2258
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz v0, :cond_21

    .line 2259
    return-void

    .line 2261
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2262
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2e

    .line 2263
    const-string/jumbo v0, "s:location"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2251
    :cond_2e
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 2268
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2270
    return-void

    .line 2273
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 2274
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 2275
    return-void

    .line 2277
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2278
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2a

    .line 2279
    const-string/jumbo v0, "s:gps"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2267
    :cond_2a
    return-void
.end method

.method registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    .prologue
    .line 2167
    monitor-enter p0

    .line 2168
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2169
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    .line 2167
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1498
    monitor-enter p0

    .line 1499
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1500
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1501
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 1503
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_15
    monitor-exit p0

    .line 1506
    const/4 v0, 0x0

    return v0

    .line 1498
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeSystemPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1527
    monitor-enter p0

    .line 1528
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1529
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1530
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1531
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 1532
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_15
    monitor-exit p0

    .line 1535
    const/4 v0, 0x0

    return v0

    .line 1527
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method reportMaintenanceActivityIfNeededLocked()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2180
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 2181
    .local v0, "active":Z
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-ne v0, v2, :cond_8

    .line 2182
    return-void

    .line 2184
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    .line 2185
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2186
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    .line 2185
    :goto_11
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2187
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2179
    return-void

    .end local v1    # "msg":Landroid/os/Message;
    :cond_1c
    move v2, v3

    .line 2186
    goto :goto_11
.end method

.method resetIdleManagementLocked()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 1910
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 1911
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 1912
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 1914
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 1916
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringMotionLocked()V

    .line 1917
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 1909
    return-void
.end method

.method resetLightIdleManagementLocked()V
    .registers 1

    .prologue
    .line 1921
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 1920
    return-void
.end method

.method scheduleAlarmLocked(JZ)V
    .registers 11
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    .prologue
    const/4 v1, 0x2

    .line 2328
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_6

    .line 2333
    return-void

    .line 2335
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 2336
    if-eqz p3, :cond_1e

    .line 2337
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2338
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string/jumbo v4, "DeviceIdleController.deep"

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2337
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2326
    :goto_1d
    return-void

    .line 2340
    :cond_1e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2341
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string/jumbo v4, "DeviceIdleController.deep"

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2340
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_1d
.end method

.method scheduleLightAlarmLocked(J)V
    .registers 10
    .param p1, "delay"    # J

    .prologue
    .line 2347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 2348
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2349
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-string/jumbo v4, "DeviceIdleController.light"

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2348
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2345
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .prologue
    .line 1866
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1867
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1865
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .registers 10
    .param p1, "delay"    # J

    .prologue
    .line 2354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2355
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2356
    const-string/jumbo v4, "DeviceIdleController.sensing"

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2355
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2352
    return-void
.end method

.method setAlarmsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .prologue
    .line 2158
    monitor-enter p0

    .line 2159
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 2160
    if-nez p1, :cond_8

    .line 2161
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    .line 2157
    return-void

    .line 2158
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setJobsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .prologue
    .line 2148
    monitor-enter p0

    .line 2149
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 2150
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportMaintenanceActivityIfNeededLocked()V

    .line 2151
    if-nez p1, :cond_b

    .line 2152
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    .line 2147
    return-void

    .line 2148
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1738
    monitor-enter p0

    .line 1739
    :try_start_1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 1737
    return-void

    .line 1738
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startMonitoringMotionLocked()V
    .registers 2

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_b

    .line 2283
    :cond_a
    :goto_a
    return-void

    .line 2286
    :cond_b
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    goto :goto_a
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .registers 14
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2018
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 2020
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2021
    .local v8, "now":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v0, v8

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    .line 2023
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v0, :cond_2c

    .line 2024
    const-string/jumbo v0, "alarm"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2025
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2027
    :cond_2c
    return-void

    .line 2030
    :cond_2d
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    packed-switch v0, :pswitch_data_176

    .line 2016
    :cond_32
    :goto_32
    return-void

    .line 2034
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 2035
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2037
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2038
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2039
    iput v11, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2041
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_32

    .line 2044
    :pswitch_51
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2046
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2047
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 2048
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2049
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 2050
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2051
    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 2052
    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 2053
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    goto :goto_32

    .line 2056
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 2057
    iput v10, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2059
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2060
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2061
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_126

    .line 2062
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_126

    .line 2063
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 2064
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 2063
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2065
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 2069
    :goto_a2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_12a

    .line 2070
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_12a

    .line 2071
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 2072
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x40a00000    # 5.0f

    .line 2073
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v6}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 2072
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2074
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 2080
    :goto_c9
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-nez v0, :cond_32

    .line 2086
    :pswitch_cd
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 2087
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2088
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 2091
    :pswitch_d8
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {p0, v0, v1, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2094
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2096
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2097
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_104

    .line 2098
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2100
    :cond_104
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2101
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_112

    .line 2102
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2103
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 2105
    :cond_112
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2106
    invoke-direct {p0, v10}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 2107
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v11}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_32

    .line 2067
    :cond_126
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    goto/16 :goto_a2

    .line 2076
    :cond_12a
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    goto :goto_c9

    .line 2112
    :pswitch_12d
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2113
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2114
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2118
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 2119
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 2118
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2120
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_162

    .line 2121
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2123
    :cond_162
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2124
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2125
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 2126
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_32

    .line 2030
    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_33
        :pswitch_51
        :pswitch_71
        :pswitch_cd
        :pswitch_12d
        :pswitch_d8
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .registers 12
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x4

    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    .line 1934
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_b

    .line 1937
    return-void

    .line 1941
    :cond_b
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 1943
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    packed-switch v2, :pswitch_data_100

    .line 1933
    :goto_13
    :pswitch_13
    return-void

    .line 1945
    :pswitch_14
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 1947
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1948
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1949
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v2

    if-nez v2, :cond_37

    .line 1952
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1953
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 1954
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    goto :goto_13

    .line 1960
    :cond_37
    :pswitch_37
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_57

    .line 1961
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long v0, v2, v4

    .line 1962
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_98

    .line 1964
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 1970
    .end local v0    # "duration":J
    :cond_57
    :goto_57
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1971
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 1972
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1973
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v4, v5

    float-to-long v4, v4

    .line 1972
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1974
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_81

    .line 1975
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1978
    :cond_81
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1979
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 1980
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 1981
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1982
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    .line 1967
    .restart local v0    # "duration":J
    :cond_98
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_57

    .line 1986
    .end local v0    # "duration":J
    :pswitch_a4
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v2, :cond_ac

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v2, v4, :cond_f2

    .line 1988
    :cond_ac
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 1989
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1991
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_e1

    .line 1992
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 1996
    :cond_ca
    :goto_ca
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 1999
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2000
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2001
    invoke-direct {p0, v6}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 2002
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    .line 1993
    :cond_e1
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_ca

    .line 1994
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_ca

    .line 2007
    :cond_f2
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2009
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2010
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 1943
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_37
        :pswitch_a4
        :pswitch_a4
        :pswitch_37
    .end packed-switch
.end method

.method stopMonitoringMotionLocked()V
    .registers 2

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_f

    .line 2293
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 2290
    :cond_f
    return-void
.end method

.method unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    .prologue
    .line 2174
    monitor-enter p0

    .line 2175
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 2173
    return-void

    .line 2174
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateChargingLocked(Z)V
    .registers 4
    .param p1, "charging"    # Z

    .prologue
    .line 1852
    if-nez p1, :cond_11

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_11

    .line 1853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1854
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_10

    .line 1855
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1850
    :cond_10
    :goto_10
    return-void

    .line 1857
    :cond_11
    if-eqz p1, :cond_10

    .line 1858
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1859
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_10

    .line 1860
    const-string/jumbo v0, "charging"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    goto :goto_10
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .registers 8
    .param p1, "connIntent"    # Landroid/content/Intent;

    .prologue
    .line 1795
    monitor-enter p0

    .line 1796
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7

    .local v0, "cm":Lcom/android/server/ConnectivityService;
    monitor-exit p0

    .line 1798
    if-nez v0, :cond_a

    .line 1799
    return-void

    .line 1795
    .end local v0    # "cm":Lcom/android/server/ConnectivityService;
    :catchall_7
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1802
    .restart local v0    # "cm":Lcom/android/server/ConnectivityService;
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1803
    .local v3, "ni":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 1805
    if-nez v3, :cond_27

    .line 1806
    const/4 v1, 0x0

    .line 1821
    :goto_12
    :try_start_12
    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v1, v4, :cond_25

    .line 1822
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 1823
    if-eqz v1, :cond_25

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_25

    .line 1824
    const-string/jumbo v4, "network"

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_4c

    :cond_25
    monitor-exit p0

    .line 1793
    return-void

    .line 1808
    :cond_27
    if-nez p1, :cond_2e

    .line 1809
    :try_start_29
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .local v1, "conn":Z
    goto :goto_12

    .line 1812
    .end local v1    # "conn":Z
    :cond_2e
    const-string/jumbo v4, "networkType"

    .line 1813
    const/4 v5, -0x1

    .line 1812
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1814
    .local v2, "networkType":I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_4c

    move-result v4

    if-eq v4, v2, :cond_3e

    monitor-exit p0

    .line 1815
    return-void

    .line 1817
    :cond_3e
    :try_start_3e
    const-string/jumbo v4, "noConnectivity"

    .line 1818
    const/4 v5, 0x0

    .line 1817
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4c

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v1, 0x0

    .local v1, "conn":Z
    goto :goto_12

    .end local v1    # "conn":Z
    :cond_4a
    const/4 v1, 0x1

    .restart local v1    # "conn":Z
    goto :goto_12

    .line 1803
    .end local v1    # "conn":Z
    .end local v2    # "networkType":I
    :catchall_4c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method updateDisplayLocked()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1831
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    .line 1835
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mCurDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    move v0, v1

    .line 1837
    .local v0, "screenOn":Z
    :goto_14
    if-nez v0, :cond_26

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v3, :cond_26

    .line 1838
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1839
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_23

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1830
    :cond_23
    :goto_23
    return-void

    .end local v0    # "screenOn":Z
    :cond_24
    move v0, v2

    .line 1835
    goto :goto_14

    .line 1842
    .restart local v0    # "screenOn":Z
    :cond_26
    if-eqz v0, :cond_23

    .line 1843
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1844
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_23

    .line 1845
    const-string/jumbo v1, "screen"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    goto :goto_23
.end method

.method writeConfigFileLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2510
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 2511
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2509
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2543
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2544
    const-string/jumbo v2, "config"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2545
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 2546
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2547
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "wl"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2548
    const-string/jumbo v2, "n"

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2549
    const-string/jumbo v2, "wl"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2545
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2551
    .end local v1    # "name":Ljava/lang/String;
    :cond_35
    const-string/jumbo v2, "config"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2552
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2542
    return-void
.end method
