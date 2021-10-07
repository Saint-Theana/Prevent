.class public Lcom/android/server/location/GnssLocationProvider;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$1;,
        Lcom/android/server/location/GnssLocationProvider$2;,
        Lcom/android/server/location/GnssLocationProvider$3;,
        Lcom/android/server/location/GnssLocationProvider$4;,
        Lcom/android/server/location/GnssLocationProvider$5;,
        Lcom/android/server/location/GnssLocationProvider$6;,
        Lcom/android/server/location/GnssLocationProvider$7;,
        Lcom/android/server/location/GnssLocationProvider$BackOff;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final MAX_SVS:I = 0x40

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final RELEASE_SUPL_CONNECTION:I = 0xf

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_SUPL_CONNECTION:I = 0xe

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final VERBOSE:Z

.field private static final VzwGid1List:[Ljava/lang/String;

.field private static final VzwMccMncList:[Ljava/lang/String;

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private mCn0s:[F

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mItarSpeedLimitExceeded:Z

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNmeaBuffer:[B

.field private mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mOnDemandTimeInjection:Z

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvidWithFlags:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

.field private mYearOfHardware:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/location/GnssLocationProvider;)Landroid/util/NtpTrustedTime;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnDemandTimeInjection:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic -wrap0(IDDDIIII)Z
    .registers 12
    .param p0, "geofenceId"    # I
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D
    .param p7, "lastTransition"    # I
    .param p8, "monitorTransitions"    # I
    .param p9, "notificationResponsivenes"    # I
    .param p10, "unknownTimer"    # I

    .prologue
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssLocationProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 2
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestSuplConnection(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic -wrap2()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateNetworkState(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/location/GnssLocationProvider;JJI)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/location/GnssLocationProvider;[BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/location/GnssLocationProvider;II)V
    .registers 3
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 2
    .param p1, "connStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    return-void
.end method

.method static synthetic -wrap3()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/location/GnssLocationProvider;Z)V
    .registers 2
    .param p1, "singleShot"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    return-void
.end method

.method static synthetic -wrap4()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(I)Z
    .registers 2
    .param p0, "geofenceId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(I)Z
    .registers 2
    .param p0, "geofenceId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(II)Z
    .registers 3
    .param p0, "geofenceId"    # I
    .param p1, "transitions"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 108
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    .line 109
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    .line 111
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 400
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v2, "311480"

    aput-object v2, v0, v3

    const-string/jumbo v2, "310004"

    aput-object v2, v0, v1

    const-string/jumbo v2, "20404"

    aput-object v2, v0, v10

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    .line 402
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v0, v3

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const-string/jumbo v1, "BAE0000000000000"

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    .line 2498
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/32 v8, 0x493e0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 266
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 269
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 297
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$BackOff;

    const-wide/32 v2, 0xdbba00

    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    .line 298
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$BackOff;

    const-wide/32 v2, 0xdbba00

    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/GnssLocationProvider$BackOff;

    .line 310
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 311
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 323
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 338
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 340
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 347
    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 349
    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 351
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 360
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 363
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 368
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 414
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 418
    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    .line 424
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 426
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    .line 458
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 457
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 476
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 475
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 494
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 521
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1360
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$6;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    .line 1962
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2490
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    .line 2491
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    .line 2492
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    .line 2493
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    .line 2496
    const/16 v0, 0x78

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    .line 717
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 718
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 719
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 721
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 724
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 725
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "GnssLocationProvider"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 726
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 729
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 730
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 732
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 736
    const-string/jumbo v0, "appops"

    .line 735
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 740
    const-string/jumbo v0, "batterystats"

    .line 739
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 743
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 750
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    .line 751
    const/16 v0, 0xd

    invoke-direct {p0, v0, v4, v7}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 754
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 755
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 756
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 754
    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 758
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$8;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 770
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$9;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$9;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 792
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$10;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$10;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 716
    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2403
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    packed-switch v0, :pswitch_data_16

    .line 2411
    const-string/jumbo v0, "<Unknown>"

    return-object v0

    .line 2405
    :pswitch_9
    const-string/jumbo v0, "CLOSED"

    return-object v0

    .line 2407
    :pswitch_d
    const-string/jumbo v0, "OPEN"

    return-object v0

    .line 2409
    :pswitch_11
    const-string/jumbo v0, "OPENING"

    return-object v0

    .line 2403
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    .line 2419
    packed-switch p1, :pswitch_data_1c

    .line 2431
    const-string/jumbo v0, "<Unknown>"

    return-object v0

    .line 2421
    :pswitch_7
    const-string/jumbo v0, "CONNECTED"

    return-object v0

    .line 2423
    :pswitch_b
    const-string/jumbo v0, "DONE"

    return-object v0

    .line 2425
    :pswitch_f
    const-string/jumbo v0, "FAILED"

    return-object v0

    .line 2427
    :pswitch_13
    const-string/jumbo v0, "RELEASE"

    return-object v0

    .line 2429
    :pswitch_17
    const-string/jumbo v0, "REQUEST"

    return-object v0

    .line 2419
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .registers 19
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1818
    new-instance v2, Landroid/location/Location;

    const-string/jumbo v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1819
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 1820
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1821
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1822
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1823
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1825
    :cond_1f
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 1826
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1828
    :cond_27
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    .line 1829
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    .line 1831
    :cond_2f
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_38

    .line 1832
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    .line 1834
    :cond_38
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_43

    .line 1835
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1837
    :cond_43
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 575
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 576
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-nez v1, :cond_10

    .line 577
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v4, "Message does not exist in the intent."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void

    .line 581
    :cond_10
    const/4 v3, 0x0

    array-length v4, v1

    :goto_12
    if-ge v3, v4, :cond_29

    aget-object v0, v1, v3

    .line 582
    .local v0, "message":Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_26

    iget-object v5, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v5, :cond_26

    .line 583
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 584
    .local v2, "suplInit":[B
    if-eqz v2, :cond_26

    .line 585
    array-length v5, v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V

    .line 581
    .end local v2    # "suplInit":[B
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 574
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    :cond_29
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 592
    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 593
    .local v0, "suplInit":[B
    if-nez v0, :cond_a

    .line 594
    return-void

    .line 596
    :cond_a
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V

    .line 591
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1388
    if-nez p1, :cond_d

    .line 1389
    const v0, 0xffff

    .line 1407
    .local v0, "flags":I
    :cond_6
    :goto_6
    if-eqz v0, :cond_a2

    .line 1408
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1409
    const/4 v1, 0x1

    return v1

    .line 1391
    .end local v0    # "flags":I
    :cond_d
    const/4 v0, 0x0

    .line 1392
    .restart local v0    # "flags":I
    const-string/jumbo v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 1393
    :cond_18
    const-string/jumbo v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    or-int/lit8 v0, v0, 0x2

    .line 1394
    :cond_23
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    or-int/lit8 v0, v0, 0x4

    .line 1395
    :cond_2e
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    or-int/lit8 v0, v0, 0x8

    .line 1396
    :cond_39
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    or-int/lit8 v0, v0, 0x10

    .line 1397
    :cond_44
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    or-int/lit8 v0, v0, 0x20

    .line 1398
    :cond_4f
    const-string/jumbo v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    or-int/lit8 v0, v0, 0x40

    .line 1399
    :cond_5a
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    or-int/lit16 v0, v0, 0x80

    .line 1400
    :cond_65
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    or-int/lit16 v0, v0, 0x100

    .line 1401
    :cond_70
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    or-int/lit16 v0, v0, 0x200

    .line 1402
    :cond_7b
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    or-int/lit16 v0, v0, 0x400

    .line 1403
    :cond_86
    const-string/jumbo v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1404
    :cond_93
    const-string/jumbo v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_6

    .line 1412
    :cond_a2
    return v2
.end method

.method private ensureInHandlerThread()V
    .registers 3

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 2394
    return-void

    .line 2396
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .registers 11
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 2315
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->ensureInHandlerThread()V

    .line 2316
    if-nez p1, :cond_8

    .line 2317
    return v8

    .line 2320
    :cond_8
    const-string/jumbo v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2321
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2323
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_14
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2324
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2325
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "protocol"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2328
    const-string/jumbo v5, "name ASC"

    .line 2327
    const/4 v4, 0x0

    .line 2323
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2330
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_44

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2331
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3d} :catch_64
    .catchall {:try_start_14 .. :try_end_3d} :catchall_85

    move-result v0

    .line 2338
    if-eqz v6, :cond_43

    .line 2339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2331
    :cond_43
    return v0

    .line 2333
    :cond_44
    :try_start_44
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No entry found in query for APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5e} :catch_64
    .catchall {:try_start_44 .. :try_end_5e} :catchall_85

    .line 2338
    if-eqz v6, :cond_63

    .line 2339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2343
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_63
    :goto_63
    return v8

    .line 2335
    :catch_64
    move-exception v7

    .line 2336
    .local v7, "e":Ljava/lang/Exception;
    :try_start_65
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_85

    .line 2338
    if-eqz v6, :cond_63

    .line 2339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_63

    .line 2337
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_85
    move-exception v0

    .line 2338
    if-eqz v6, :cond_8b

    .line 2339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2337
    :cond_8b
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 1844
    sparse-switch p1, :sswitch_data_12

    .line 1858
    const/4 v0, -0x1

    return v0

    .line 1846
    :sswitch_5
    const/4 v0, 0x0

    return v0

    .line 1848
    :sswitch_7
    const/4 v0, 0x5

    return v0

    .line 1850
    :sswitch_9
    const/4 v0, 0x2

    return v0

    .line 1852
    :sswitch_b
    const/4 v0, 0x4

    return v0

    .line 1854
    :sswitch_d
    const/4 v0, 0x1

    return v0

    .line 1856
    :sswitch_f
    const/4 v0, 0x3

    return v0

    .line 1844
    nop

    :sswitch_data_12
    .sparse-switch
        -0x95 -> :sswitch_7
        -0x67 -> :sswitch_b
        -0x66 -> :sswitch_f
        -0x65 -> :sswitch_9
        0x0 -> :sswitch_5
        0x64 -> :sswitch_d
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2289
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2290
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2292
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2294
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "apn"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2297
    const-string/jumbo v5, "name ASC"

    .line 2295
    const/4 v3, 0x0

    .line 2296
    const/4 v4, 0x0

    .line 2292
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2298
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2299
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_43
    .catchall {:try_start_9 .. :try_end_2d} :catchall_53

    move-result-object v0

    .line 2306
    if-eqz v6, :cond_33

    .line 2307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2299
    :cond_33
    return-object v0

    .line 2301
    :cond_34
    :try_start_34
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "No APN found to select."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_43
    .catchall {:try_start_34 .. :try_end_3d} :catchall_53

    .line 2306
    if-eqz v6, :cond_42

    .line 2307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2311
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_42
    :goto_42
    return-object v8

    .line 2303
    :catch_43
    move-exception v7

    .line 2304
    .local v7, "e":Ljava/lang/Exception;
    :try_start_44
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "Error encountered on selecting the APN."

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_53

    .line 2306
    if-eqz v6, :cond_42

    .line 2307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 2305
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_53
    move-exception v0

    .line 2306
    if-eqz v6, :cond_59

    .line 2307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2305
    :cond_59
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .registers 11
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 1111
    if-eqz p2, :cond_4c

    .line 1112
    const-string/jumbo v3, "SUPL_MODE"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1114
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1116
    :try_start_12
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_15} :catch_22

    move-result v2

    .line 1124
    :cond_16
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_3e

    .line 1125
    const/4 v3, 0x1

    return v3

    .line 1117
    :catch_22
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to parse SUPL_MODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return v6

    .line 1130
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3e
    if-eqz p3, :cond_4c

    .line 1131
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    .line 1130
    if-eqz v3, :cond_4c

    .line 1132
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_4c

    .line 1133
    return v4

    .line 1136
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_4c
    return v6
.end method

.method private handleDisable()V
    .registers 3

    .prologue
    .line 1181
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_d
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1184
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1185
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1186
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 1191
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1192
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1180
    return-void
.end method

.method private handleDownloadXtraData()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1015
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-nez v0, :cond_f

    .line 1017
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDownloadXtraData() called when Xtra not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void

    .line 1020
    :cond_f
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    if-ne v0, v1, :cond_14

    .line 1022
    return-void

    .line 1024
    :cond_14
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1026
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1027
    return-void

    .line 1029
    :cond_1e
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1032
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1033
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "WakeLock acquired by handleDownloadXtraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$12;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$12;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1014
    return-void
.end method

.method private handleEnable()V
    .registers 5

    .prologue
    .line 1140
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "handleEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_d
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 1144
    .local v0, "enabled":Z
    if-eqz v0, :cond_3c

    .line 1145
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    .line 1148
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 1149
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1151
    :cond_25
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 1152
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    const/4 v3, 0x2

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1155
    :cond_31
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1156
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1139
    :goto_3b
    return-void

    .line 1158
    :cond_3c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1159
    const/4 v2, 0x0

    :try_start_40
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_4d

    monitor-exit v1

    .line 1161
    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1158
    :catchall_4d
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private handleInjectNtpTime()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 943
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_6

    .line 945
    return-void

    .line 947
    :cond_6
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_10

    .line 949
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 950
    return-void

    .line 952
    :cond_10
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mInjectNtpTimePending:I

    .line 955
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 956
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "WakeLock acquired by handleInjectNtpTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$11;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$11;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 942
    return-void
.end method

.method private handleReleaseSuplConnection(I)V
    .registers 8
    .param p1, "agpsDataConnStatus"    # I

    .prologue
    const/4 v5, 0x0

    .line 916
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 918
    const-string/jumbo v1, "releaseSuplConnection, state=%s, status=%s"

    .line 917
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 919
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 920
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 917
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    .end local v0    # "message":Ljava/lang/String;
    :cond_22
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-nez v1, :cond_27

    .line 925
    return-void

    .line 927
    :cond_27
    iput v5, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 929
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 930
    packed-switch p1, :pswitch_data_56

    .line 938
    :pswitch_33
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid status to release SUPL connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :goto_4d
    return-void

    .line 932
    :pswitch_4e
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_4d

    .line 935
    :pswitch_52
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_closed()V

    goto :goto_4d

    .line 930
    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_52
        :pswitch_33
        :pswitch_33
        :pswitch_4e
    .end packed-switch
.end method

.method private handleRequestSuplConnection(Ljava/net/InetAddress;)V
    .registers 10
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 891
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_1e

    .line 893
    const-string/jumbo v3, "requestSuplConnection, state=%s, address=%s"

    .line 892
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 894
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 895
    aput-object p1, v4, v7

    .line 892
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .end local v0    # "message":Ljava/lang/String;
    :cond_1e
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v3, :cond_23

    .line 900
    return-void

    .line 902
    :cond_23
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 903
    iput v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 905
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 906
    .local v2, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v2, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 907
    invoke-virtual {v2, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 908
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 909
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 911
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 912
    const v5, 0x5b8d80

    .line 909
    invoke-virtual {v3, v1, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 890
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1231
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1232
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1229
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1062
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1063
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1064
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object v1, p0

    .line 1063
    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    .line 1061
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 831
    .local v10, "info":Landroid/net/NetworkInfo;
    if-nez v10, :cond_9

    .line 832
    return-void

    .line 835
    :cond_9
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 836
    .local v1, "isConnected":Z
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_3b

    .line 838
    const-string/jumbo v0, "UpdateNetworkState, state=%s, connected=%s, info=%s, capabilities=%S"

    .line 837
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 839
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 840
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 841
    const/4 v3, 0x2

    aput-object v10, v2, v3

    .line 842
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 837
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 843
    .local v11, "message":Ljava/lang/String;
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v11    # "message":Ljava/lang/String;
    :cond_3b
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 847
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v9

    .line 848
    .local v9, "dataEnabled":Z
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a5

    move v4, v9

    .line 849
    :goto_50
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 850
    .local v6, "defaultApn":Ljava/lang/String;
    if-nez v6, :cond_59

    .line 851
    const-string/jumbo v6, "dummy-apn"

    .line 856
    :cond_59
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 857
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    .line 859
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 854
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 865
    .end local v6    # "defaultApn":Ljava/lang/String;
    .end local v9    # "dataEnabled":Z
    :cond_69
    :goto_69
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a4

    .line 866
    if-eqz v1, :cond_b5

    .line 867
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 868
    .local v8, "apnName":Ljava/lang/String;
    if-nez v8, :cond_79

    .line 871
    const-string/jumbo v8, "dummy-apn"

    .line 873
    :cond_79
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v7

    .line 874
    .local v7, "apnIpType":I
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->setRouting()V

    .line 875
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_9e

    .line 877
    const-string/jumbo v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    .line 876
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 878
    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 879
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 876
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 880
    .restart local v11    # "message":Ljava/lang/String;
    const-string/jumbo v0, "GnssLocationProvider"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v11    # "message":Ljava/lang/String;
    :cond_9e
    invoke-direct {p0, v8, v7}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 883
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 828
    .end local v7    # "apnIpType":I
    .end local v8    # "apnName":Ljava/lang/String;
    :cond_a4
    :goto_a4
    return-void

    .line 848
    .restart local v9    # "dataEnabled":Z
    :cond_a5
    const/4 v4, 0x0

    .local v4, "networkAvailable":Z
    goto :goto_50

    .line 861
    .end local v4    # "networkAvailable":Z
    .end local v9    # "dataEnabled":Z
    :cond_a7
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_69

    .line 862
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v2, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 885
    :cond_b5
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    goto :goto_a4
.end method

.method private hasCapability(I)Z
    .registers 4
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 1507
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private hibernate()V
    .registers 8

    .prologue
    .line 1499
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1500
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1501
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1503
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1497
    return-void
.end method

.method private isDataNetworkConnected()Z
    .registers 3

    .prologue
    .line 2385
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2386
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 616
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private final isVerizon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;

    .prologue
    .line 530
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simOperator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 543
    :cond_2a
    const/4 v1, 0x0

    return v1

    .line 532
    :cond_2c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 534
    :cond_42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwMccMncList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 533
    if-eqz v1, :cond_75

    .line 536
    :cond_52
    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    sget-object v1, Lcom/android/server/location/GnssLocationProvider;->VzwGid1List:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 537
    :cond_66
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_73

    const-string/jumbo v1, "GnssLocationProvider"

    const-string/jumbo v2, "Verizon UICC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_73
    const/4 v1, 0x1

    return v1

    .line 532
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 699
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_18

    .line 700
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 702
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 703
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_35

    .line 705
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 712
    const/4 v4, 0x1

    return v4

    .line 704
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_13
    move-exception v4

    .line 705
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :goto_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 704
    throw v4
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_18

    .line 708
    .end local v1    # "file":Ljava/io/File;
    :catch_18
    move-exception v0

    .line 709
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not open GPS configuration file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v4, 0x0

    return v4

    .line 704
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_35
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v2, "stream":Ljava/io/FileInputStream;
    goto :goto_14
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v4, 0x0

    .line 682
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 683
    const v5, 0x107004d

    .line 682
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "configValues":[Ljava/lang/String;
    array-length v5, v0

    move v3, v4

    :goto_e
    if-ge v3, v5, :cond_69

    aget-object v1, v0, v3

    .line 685
    .local v1, "item":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_30

    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GpsParamsResource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_30
    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "split":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4e

    .line 689
    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 684
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 691
    :cond_4e
    const-string/jumbo v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 681
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_69
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private releaseSuplConnection(I)V
    .registers 4
    .param p1, "connStatus"    # I

    .prologue
    .line 1722
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1721
    return-void
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v9, 0x1

    .line 620
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_23

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Reset GPS properties, previous size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_23
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 623
    const/4 v4, 0x0

    .line 624
    .local v4, "isPropertiesLoadedFromFile":Z
    const-string/jumbo v10, "ro.hardware.gps"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 628
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/etc/gps."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".conf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 630
    .local v7, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v7, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v4

    .line 632
    .end local v4    # "isPropertiesLoadedFromFile":Z
    .end local v7    # "propFilename":Ljava/lang/String;
    :cond_53
    if-nez v4, :cond_5b

    .line 633
    const-string/jumbo v10, "/etc/gps.conf"

    invoke-direct {p0, v10, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 635
    :cond_5b
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_7d

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "GPS properties reloaded, size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_7d
    const-string/jumbo v10, "persist.sys.gps.lpp"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, "lpp_prof":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_90

    .line 639
    const-string/jumbo v10, "LPP_PROFILE"

    invoke-virtual {p2, v10, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    :cond_90
    const-string/jumbo v10, "SUPL_HOST"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 643
    const-string/jumbo v11, "SUPL_PORT"

    invoke-virtual {p2, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 642
    invoke-direct {p0, v10, v11}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string/jumbo v10, "C2K_HOST"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 645
    const-string/jumbo v10, "C2K_PORT"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, "portString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v10, :cond_bd

    if-eqz v6, :cond_bd

    .line 648
    :try_start_b7
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I
    :try_end_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_bd} :catch_10b

    .line 654
    :cond_bd
    :goto_bd
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_configuration_supported()Z

    move-result v10

    if-eqz v10, :cond_132

    .line 657
    :try_start_c3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x1000

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 658
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x0

    invoke-virtual {p2, v0, v10}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/location/GnssLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    .line 660
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_f7

    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "final config = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_f7} :catch_127

    .line 670
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_f7
    :goto_f7
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string/jumbo v11, "SUPL_ES"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 671
    .local v8, "suplESProperty":Ljava/lang/String;
    if-eqz v8, :cond_10a

    .line 673
    :try_start_102
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_140

    :goto_108
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z
    :try_end_10a
    .catch Ljava/lang/NumberFormatException; {:try_start_102 .. :try_end_10a} :catch_142

    .line 619
    :cond_10a
    :goto_10a
    return-void

    .line 649
    .end local v8    # "suplESProperty":Ljava/lang/String;
    :catch_10b
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to parse C2K_PORT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 661
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_127
    move-exception v2

    .line 662
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "failed to dump properties contents"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 664
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_132
    sget-boolean v10, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v10, :cond_f7

    .line 665
    const-string/jumbo v10, "GnssLocationProvider"

    const-string/jumbo v11, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 673
    .restart local v8    # "suplESProperty":Ljava/lang/String;
    :cond_140
    const/4 v9, 0x0

    goto :goto_108

    .line 674
    :catch_142
    move-exception v1

    .line 675
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "GnssLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse SUPL_ES: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10a
.end method

.method private reportAGpsStatus(II[B)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .prologue
    .line 1688
    packed-switch p2, :pswitch_data_d6

    .line 1717
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received Unknown AGPS status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_21
    :goto_21
    return-void

    .line 1690
    :pswitch_22
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_2f
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received SUPL IP addr[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/4 v0, 0x0

    .line 1693
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    if-eqz p3, :cond_72

    .line 1695
    :try_start_50
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1696
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_72

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IP address converted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/net/UnknownHostException; {:try_start_50 .. :try_end_72} :catch_79

    .line 1701
    .end local v0    # "connectionIpAddress":Ljava/net/InetAddress;
    :cond_72
    :goto_72
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_21

    .line 1697
    :catch_79
    move-exception v1

    .line 1698
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    .line 1704
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :pswitch_95
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_a2

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_a2
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    goto/16 :goto_21

    .line 1708
    :pswitch_a8
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1711
    :pswitch_b7
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1714
    :pswitch_c6
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1688
    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_22
        :pswitch_95
        :pswitch_a8
        :pswitch_b7
        :pswitch_c6
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1924
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1926
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 1922
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1944
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1946
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 1942
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1934
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1936
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 1932
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1954
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1956
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 1952
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .registers 31
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_12

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_12
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1899
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GnssLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v15

    .line 1908
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    .line 1909
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_31

    .line 1910
    const/16 v16, 0x0

    .line 1912
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1916
    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 1913
    const/4 v4, 0x0

    .line 1912
    move/from16 v0, v16

    invoke-virtual {v2, v4, v0, v15, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 1895
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .registers 30
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1870
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_c
    move-object v0, p0

    move v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    .line 1872
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/GnssLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v2

    .line 1881
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1887
    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 1886
    const/4 v6, 0x0

    move v1, p1

    move/from16 v3, p14

    move-wide/from16 v4, p15

    .line 1881
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 1868
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .registers 21
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speedMetersPerSecond"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1516
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    .line 1517
    const/high16 v4, 0x43c80000    # 400.0f

    cmpl-float v4, p8, v4

    if-lez v4, :cond_1c

    const/4 v4, 0x1

    :goto_c
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 1520
    :cond_e
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v4, :cond_1e

    .line 1521
    const-string/jumbo v4, "GnssLocationProvider"

    const-string/jumbo v5, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    return-void

    .line 1517
    :cond_1c
    const/4 v4, 0x0

    goto :goto_c

    .line 1526
    :cond_1e
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v4, :cond_54

    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportLocation lat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1527
    const-string/jumbo v6, " timestamp: "

    .line 1526
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_54
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v5

    .line 1530
    :try_start_57
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 1531
    and-int/lit8 v4, p1, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_78

    .line 1532
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1533
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1534
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1537
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1539
    :cond_78
    and-int/lit8 v4, p1, 0x2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_159

    .line 1540
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1544
    :goto_82
    and-int/lit8 v4, p1, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_163

    .line 1545
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1549
    :goto_8e
    and-int/lit8 v4, p1, 0x8

    const/16 v6, 0x8

    if-ne v4, v6, :cond_16a

    .line 1550
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1554
    :goto_9b
    and-int/lit8 v4, p1, 0x10

    const/16 v6, 0x10

    if-ne v4, v6, :cond_171

    .line 1555
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1559
    :goto_a8
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_af
    .catchall {:try_start_57 .. :try_end_af} :catchall_160

    .line 1562
    :try_start_af
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b7} :catch_178
    .catchall {:try_start_af .. :try_end_b7} :catchall_160

    :goto_b7
    monitor-exit v5

    .line 1568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1570
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v4, :cond_f6

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f6

    .line 1571
    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1572
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_ef

    const-string/jumbo v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TTFF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_ef
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v4, v5}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1578
    :cond_f6
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    if-eqz v4, :cond_fd

    .line 1579
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1582
    :cond_fd
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v4, :cond_137

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_137

    .line 1585
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_11b

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v5, 0xea60

    if-ge v4, v5, :cond_11b

    .line 1586
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1590
    :cond_11b
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1591
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1592
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1593
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    const/4 v5, 0x2

    invoke-direct {p0, v5, v4}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1596
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_137
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_158

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v4, :cond_158

    .line 1597
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 v5, 0x2710

    if-le v4, v5, :cond_158

    .line 1598
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_155

    const-string/jumbo v4, "GnssLocationProvider"

    const-string/jumbo v5, "got fix, hibernating"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_155
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    .line 1515
    :cond_158
    return-void

    .line 1542
    :cond_159
    :try_start_159
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V
    :try_end_15e
    .catchall {:try_start_159 .. :try_end_15e} :catchall_160

    goto/16 :goto_82

    .line 1529
    :catchall_160
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1547
    :cond_163
    :try_start_163
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_8e

    .line 1552
    :cond_16a
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_9b

    .line 1557
    :cond_171
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_a8

    .line 1563
    :catch_178
    move-exception v2

    .line 1564
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GnssLocationProvider"

    const-string/jumbo v6, "RemoteException calling reportLocation"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catchall {:try_start_163 .. :try_end_182} :catchall_160

    goto/16 :goto_b7
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .prologue
    .line 1740
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_9

    .line 1741
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    .line 1739
    :cond_9
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .prologue
    .line 1749
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_9

    .line 1750
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    .line 1748
    :cond_9
    return-void
.end method

.method private reportNmea(J)V
    .registers 8
    .param p1, "timestamp"    # J

    .prologue
    .line 1729
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v2, :cond_1a

    .line 1730
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1731
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1732
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1728
    .end local v0    # "length":I
    .end local v1    # "nmea":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method private reportStatus(I)V
    .registers 9
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1607
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_20

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportStatus status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_20
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1610
    .local v1, "wasNavigating":Z
    packed-switch p1, :pswitch_data_58

    .line 1627
    :goto_25
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v1, v2, :cond_47

    .line 1628
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1631
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1633
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1606
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_47
    return-void

    .line 1612
    :pswitch_48
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1613
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    goto :goto_25

    .line 1616
    :pswitch_4d
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_25

    .line 1619
    :pswitch_50
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    goto :goto_25

    .line 1622
    :pswitch_53
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1623
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_25

    .line 1610
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_48
        :pswitch_4d
        :pswitch_50
        :pswitch_53
    .end packed-switch
.end method

.method private reportSvStatus()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1641
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->native_read_sv_status([I[F[F[F)I

    move-result v1

    .line 1642
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 1644
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    .line 1645
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    .line 1646
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    .line 1647
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    .line 1642
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F)V

    .line 1649
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_38

    .line 1650
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_38
    const/4 v8, 0x0

    .line 1654
    .local v8, "usedInFixCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3a
    if-ge v6, v1, :cond_d7

    .line 1655
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_46

    .line 1656
    add-int/lit8 v8, v8, 0x1

    .line 1658
    :cond_46
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_c7

    .line 1659
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "svid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v3, v3, v6

    shr-int/lit8 v3, v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1660
    const-string/jumbo v3, " cn0: "

    .line 1659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1660
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mCn0s:[F

    aget v3, v3, v6

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    .line 1659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1661
    const-string/jumbo v3, " elev: "

    .line 1659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1661
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvElevations:[F

    aget v3, v3, v6

    .line 1659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1662
    const-string/jumbo v3, " azimuth: "

    .line 1659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1662
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSvAzimuths:[F

    aget v3, v3, v6

    .line 1659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1663
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_cb

    .line 1664
    const-string/jumbo v0, "  "

    .line 1659
    :goto_9e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1665
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_cf

    .line 1666
    const-string/jumbo v0, "  "

    .line 1659
    :goto_ad
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1667
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvidWithFlags:[I

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_d3

    .line 1668
    const-string/jumbo v0, ""

    .line 1659
    :goto_bc
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_c7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3a

    .line 1664
    :cond_cb
    const-string/jumbo v0, " E"

    goto :goto_9e

    .line 1666
    :cond_cf
    const-string/jumbo v0, " A"

    goto :goto_ad

    .line 1668
    :cond_d3
    const-string/jumbo v0, "U"

    goto :goto_bc

    .line 1672
    :cond_d7
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v8}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1674
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_115

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_115

    iget-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_115

    .line 1675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_115

    .line 1677
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1678
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enabled"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1679
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1680
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1640
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_115
    return-void
.end method

.method private requestRefLocation(I)V
    .registers 13
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x3

    .line 2094
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2093
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 2095
    .local v9, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    .line 2096
    .local v10, "phoneType":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_78

    .line 2097
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v7

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    .line 2098
    .local v7, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v7, :cond_6e

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 2099
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_6e

    .line 2101
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2102
    .local v2, "mcc":I
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2103
    .local v3, "mnc":I
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 2104
    .local v8, "networkType":I
    if-eq v8, v5, :cond_4e

    .line 2105
    const/16 v0, 0x8

    if-ne v8, v0, :cond_60

    .line 2109
    :cond_4e
    const/4 v1, 0x2

    .line 2114
    .local v1, "type":I
    :goto_4f
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v6

    move-object v0, p0

    .line 2113
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIIII)V

    .line 2092
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "networkType":I
    :cond_5f
    :goto_5f
    return-void

    .line 2106
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v7    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v8    # "networkType":I
    :cond_60
    const/16 v0, 0x9

    if-eq v8, v0, :cond_4e

    .line 2107
    const/16 v0, 0xa

    if-eq v8, v0, :cond_4e

    .line 2108
    const/16 v0, 0xf

    if-eq v8, v0, :cond_4e

    .line 2111
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_4f

    .line 2116
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v8    # "networkType":I
    :cond_6e
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 2118
    .end local v7    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_78
    const/4 v0, 0x2

    if-ne v10, v0, :cond_5f

    .line 2119
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method private requestSetID(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 2053
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2052
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2054
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2055
    .local v3, "type":I
    const-string/jumbo v0, ""

    .line 2057
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_21

    .line 2058
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2059
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1e

    .line 2077
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_1a
    :goto_1a
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2051
    return-void

    .line 2063
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1e
    move-object v0, v1

    .line 2064
    const/4 v3, 0x1

    goto :goto_1a

    .line 2067
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_21
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    .line 2068
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2069
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 2073
    move-object v0, v1

    .line 2074
    const/4 v3, 0x2

    goto :goto_1a
.end method

.method private requestUtcTime()V
    .registers 4

    .prologue
    .line 2084
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_d
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2083
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2128
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WakeLock acquired by sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2123
    return-void
.end method

.method private setEngineCapabilities(I)V
    .registers 7
    .param p1, "capabilities"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1758
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    .line 1760
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1761
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mOnDemandTimeInjection:Z

    .line 1762
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1765
    :cond_11
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 1766
    and-int/lit8 v0, p1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_29

    move v0, v1

    .line 1765
    :goto_1a
    invoke-virtual {v3, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1767
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 1768
    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2b

    .line 1767
    :goto_25
    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1757
    return-void

    :cond_29
    move v0, v2

    .line 1766
    goto :goto_1a

    :cond_2b
    move v1, v2

    .line 1768
    goto :goto_25
.end method

.method private setGnssYearOfHardware(I)V
    .registers 5
    .param p1, "yearOfHardware"    # I

    .prologue
    .line 1775
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssYearOfHardware called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_1e
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mYearOfHardware:I

    .line 1774
    return-void
.end method

.method private setRouting()V
    .registers 5

    .prologue
    .line 2364
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v1, :cond_5

    .line 2365
    return-void

    .line 2369
    :cond_5
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 2371
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 2370
    const/4 v3, 0x3

    .line 2369
    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2373
    .local v0, "result":Z
    if-nez v0, :cond_2d

    .line 2374
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_2c
    :goto_2c
    return-void

    .line 2375
    :cond_2d
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 2376
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .prologue
    .line 1084
    if-eqz p1, :cond_4

    .line 1085
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1087
    :cond_4
    if-eqz p2, :cond_c

    .line 1089
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c} :catch_24

    .line 1094
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 1095
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_23

    .line 1096
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const v2, 0xffff

    if-gt v1, v2, :cond_23

    .line 1097
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1083
    :cond_23
    return-void

    .line 1090
    :catch_24
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private startNavigating(Z)V
    .registers 12
    .param p1, "singleShot"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1416
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_e3

    .line 1417
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNavigating, singleShot is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_24
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1419
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1420
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1421
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1422
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1425
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_3d

    .line 1426
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_3d
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1432
    const-string/jumbo v1, "assisted_gps_enabled"

    .line 1431
    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v6, 0x1

    .line 1433
    .local v6, "agpsEnabled":Z
    :goto_4d
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v6, p1}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1435
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_7b

    .line 1438
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    packed-switch v0, :pswitch_data_e4

    .line 1449
    const-string/jumbo v7, "unknown"

    .line 1452
    .local v7, "mode":Ljava/lang/String;
    :goto_61
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting position_mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    .end local v7    # "mode":Ljava/lang/String;
    :cond_7b
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1456
    .local v3, "interval":I
    :goto_83
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1458
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1459
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void

    .line 1431
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_9a
    const/4 v6, 0x0

    .restart local v6    # "agpsEnabled":Z
    goto :goto_4d

    .line 1440
    :pswitch_9c
    const-string/jumbo v7, "standalone"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_61

    .line 1443
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_a0
    const-string/jumbo v7, "MS_ASSISTED"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_61

    .line 1446
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_a4
    const-string/jumbo v7, "MS_BASED"

    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_61

    .line 1455
    .end local v7    # "mode":Ljava/lang/String;
    :cond_a8
    const/16 v3, 0x3e8

    .restart local v3    # "interval":I
    goto :goto_83

    .line 1462
    :cond_ab
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_bd

    .line 1463
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1464
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    return-void

    .line 1469
    :cond_bd
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 1471
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 1474
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_e3

    .line 1475
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1475
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1415
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_e3
    return-void

    .line 1438
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_a4
        :pswitch_a0
    .end packed-switch
.end method

.method private stopNavigating()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1483
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_25

    .line 1485
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1486
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1487
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    .line 1488
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1489
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1490
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationFlags:I

    .line 1493
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(II)V

    .line 1482
    :cond_25
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 547
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string/jumbo v5, "GnssLocationProvider"

    const-string/jumbo v6, "received SIM related action: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_d
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 548
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 550
    .local v4, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "mccMnc":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "groupId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 554
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_48

    const-string/jumbo v5, "GnssLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SIM MCC/MNC is available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_48
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 556
    :try_start_4b
    invoke-direct {p0, v3, v1, v0}, Lcom/android/server/location/GnssLocationProvider;->isVerizon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 558
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 559
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string/jumbo v7, "LPP_PROFILE"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "lpp_profile":Ljava/lang/String;
    const-string/jumbo v5, "persist.sys.gps.lpp"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .end local v2    # "lpp_profile":Ljava/lang/String;
    :goto_65
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 567
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v7, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v5, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V
    :try_end_71
    .catchall {:try_start_4b .. :try_end_71} :catchall_7d

    monitor-exit v6

    .line 546
    :cond_72
    :goto_72
    return-void

    .line 564
    :cond_73
    :try_start_73
    const-string/jumbo v5, "persist.sys.gps.lpp"

    const-string/jumbo v7, ""

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_7d

    goto :goto_65

    .line 555
    :catchall_7d
    move-exception v5

    monitor-exit v6

    throw v5

    .line 570
    :cond_80
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_72

    const-string/jumbo v5, "GnssLocationProvider"

    const-string/jumbo v6, "SIM MCC/MNC is still not available"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2347
    const-string/jumbo v1, "IP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2348
    return v4

    .line 2350
    :cond_d
    const-string/jumbo v1, "IPV6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2351
    return v2

    .line 2353
    :cond_17
    const-string/jumbo v1, "IPV4V6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2354
    const/4 v1, 0x3

    return v1

    .line 2358
    :cond_22
    const-string/jumbo v1, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2359
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1292
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 1293
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_9

    .line 1294
    return-void

    .line 1296
    :cond_9
    const/4 v7, 0x0

    aget-object v5, v0, v7

    .line 1297
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 1300
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_43

    .line 1301
    const/4 v4, -0x1

    .line 1302
    .local v4, "lastuid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_43

    .line 1304
    :try_start_19
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1305
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    .line 1306
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 1305
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    .line 1307
    if-eq v6, v4, :cond_35

    .line 1308
    move v4, v6

    .line 1309
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_35} :catch_38

    .line 1302
    .end local v6    # "uid":I
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1311
    :catch_38
    move-exception v1

    .line 1312
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 1318
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_43
    if-eqz v2, :cond_77

    .line 1319
    const/4 v4, -0x1

    .line 1320
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_47
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_77

    .line 1322
    :try_start_4d
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1323
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    .line 1324
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 1323
    invoke-interface {v7, v8, v10, v6, v9}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1325
    if-eq v6, v4, :cond_69

    .line 1326
    move v4, v6

    .line 1327
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_69} :catch_6c

    .line 1320
    .end local v6    # "uid":I
    :cond_69
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 1329
    :catch_6c
    move-exception v1

    .line 1330
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 1290
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_77
    return-void
.end method

.method private updateLowPowerMode()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 601
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 602
    .local v0, "disableGps":Z
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "batterySaverGpsMode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_36

    .line 609
    :goto_18
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_21

    .line 610
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 611
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 599
    :cond_21
    return-void

    .line 606
    :pswitch_22
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_32
    :goto_32
    or-int/2addr v0, v1

    .line 607
    goto :goto_18

    :cond_34
    move v1, v2

    .line 606
    goto :goto_32

    .line 602
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method

.method private updateRequirements()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1237
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_b

    .line 1238
    :cond_a
    return-void

    .line 1241
    :cond_b
    const/4 v8, 0x0

    .line 1244
    .local v8, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 1245
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 1248
    const/4 v8, 0x1

    .line 1250
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "lr$iterator":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationRequest;

    .line 1251
    .local v6, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-eq v0, v9, :cond_25

    .line 1252
    const/4 v8, 0x0

    goto :goto_25

    .line 1257
    .end local v6    # "lr":Landroid/location/LocationRequest;
    .end local v7    # "lr$iterator":Ljava/util/Iterator;
    :cond_39
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_59

    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_59
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eqz v0, :cond_7d

    .line 1282
    :cond_63
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1284
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1285
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1286
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1236
    :cond_7c
    :goto_7c
    return-void

    .line 1258
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1260
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1265
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_bd

    .line 1266
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1271
    :cond_bd
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_de

    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 1273
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1274
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    .line 1273
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1275
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 1277
    :cond_de
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_7c

    .line 1279
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    goto :goto_7c
.end method

.method private updateStatus(II)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 1211
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1a

    .line 1212
    :cond_8
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 1213
    iput p2, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    .line 1214
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 1210
    :cond_1a
    return-void
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .prologue
    .line 1802
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_d
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1801
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1172
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1173
    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_14

    if-nez v0, :cond_a

    monitor-exit v1

    return-void

    .line 1174
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_14

    monitor-exit v1

    .line 1177
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1171
    return-void

    .line 1172
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 2437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2438
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2439
    const-string/jumbo v1, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2440
    const-string/jumbo v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    const-string/jumbo v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    :cond_4a
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string/jumbo v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    :cond_57
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_64

    const-string/jumbo v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    :cond_64
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string/jumbo v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2446
    :cond_72
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_80

    const-string/jumbo v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    :cond_80
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string/jumbo v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    :cond_8e
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_9c

    const-string/jumbo v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    :cond_9c
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    const-string/jumbo v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2450
    :cond_aa
    const-string/jumbo v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2436
    return-void
.end method

.method public enable()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1075
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1076
    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_14

    if-eqz v0, :cond_a

    monitor-exit v1

    return-void

    .line 1077
    :cond_a
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_14

    monitor-exit v1

    .line 1080
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1074
    return-void

    .line 1075
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Landroid/location/IGnssStatusProvider;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .registers 2

    .prologue
    .line 1790
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$13;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$13;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 820
    const-string/jumbo v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .prologue
    .line 825
    sget-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1204
    if-eqz p1, :cond_a

    .line 1205
    const-string/jumbo v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1207
    :cond_a
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 1221
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 1197
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 21
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 1994
    const-string/jumbo v7, "GnssLocationProvider"

    const-string/jumbo v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1996
    const-string/jumbo v9, ", niType: "

    .line 1995
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1997
    const-string/jumbo v9, ", notifyFlags: "

    .line 1995
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1998
    const-string/jumbo v9, ", timeout: "

    .line 1995
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1999
    const-string/jumbo v9, ", defaultResponse: "

    .line 1995
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2002
    const-string/jumbo v9, ", text: "

    .line 2001
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2003
    const-string/jumbo v9, ", requestorIdEncoding: "

    .line 2001
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2004
    const-string/jumbo v9, ", textEncoding: "

    .line 2001
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2008
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2009
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2010
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_101

    const/4 v7, 0x1

    :goto_a0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2011
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_103

    const/4 v7, 0x1

    :goto_a7
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2012
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_105

    const/4 v7, 0x1

    :goto_ae
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2013
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2014
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2015
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2016
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2017
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2018
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2022
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2024
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_ce

    const-string/jumbo p10, ""

    .line 2025
    :cond_ce
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2028
    .local v5, "extraProp":Ljava/util/Properties;
    :try_start_d3
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_dd} :catch_107

    .line 2035
    :goto_dd
    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ent$iterator":Ljava/util/Iterator;
    :goto_e5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_125

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2037
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e5

    .line 2010
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    .end local v5    # "extraProp":Ljava/util/Properties;
    :cond_101
    const/4 v7, 0x0

    goto :goto_a0

    .line 2011
    :cond_103
    const/4 v7, 0x0

    goto :goto_a7

    .line 2012
    :cond_105
    const/4 v7, 0x0

    goto :goto_ae

    .line 2031
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "extraProp":Ljava/util/Properties;
    :catch_107
    move-exception v2

    .line 2032
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 2040
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "ent$iterator":Ljava/util/Iterator;
    :cond_125
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2042
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 1992
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1340
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1342
    .local v2, "result":Z
    const-string/jumbo v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1343
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1356
    .end local v2    # "result":Z
    :cond_12
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1357
    return v2

    .line 1344
    .restart local v2    # "result":Z
    :cond_16
    const-string/jumbo v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1345
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1346
    const/4 v2, 0x1

    goto :goto_12

    .line 1347
    :cond_24
    const-string/jumbo v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1348
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_12

    .line 1349
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    .line 1350
    const/4 v2, 0x1

    goto :goto_12

    .line 1353
    :cond_36
    const-string/jumbo v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1226
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1225
    return-void
.end method
