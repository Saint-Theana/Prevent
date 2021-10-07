.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field protected mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasListeners:Z

.field protected mLastLocation:Landroid/location/Location;

.field protected mLastTwilightState:Lcom/android/server/twilight/TwilightState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListeners"
    .end annotation
.end field

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/twilight/TwilightListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/twilight/TwilightService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .registers 14
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "timeMillis"    # J

    .prologue
    .line 284
    if-nez p0, :cond_4

    .line 285
    const/4 v6, 0x0

    return-object v6

    .line 288
    :cond_4
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    .line 289
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 288
    invoke-direct {v0, v6, v7, v8, v9}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 291
    .local v0, "ca":Landroid/icu/impl/CalendarAstronomer;
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    .line 292
    .local v1, "noon":Landroid/icu/util/Calendar;
    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 293
    const/16 v6, 0xb

    const/16 v7, 0xc

    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->set(II)V

    .line 294
    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->set(II)V

    .line 295
    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->set(II)V

    .line 296
    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->set(II)V

    .line 297
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 299
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v2

    .line 300
    .local v2, "sunriseTimeMillis":J
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v4

    .line 302
    .local v4, "sunsetTimeMillis":J
    cmp-long v6, v4, p1

    if-gez v6, :cond_5d

    .line 303
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->add(II)V

    .line 304
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 305
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v2

    .line 312
    :cond_57
    :goto_57
    new-instance v6, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object v6

    .line 306
    :cond_5d
    cmp-long v6, v2, p1

    if-lez v6, :cond_57

    .line 307
    const/4 v6, 0x5

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/icu/util/Calendar;->add(II)V

    .line 308
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 309
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v4

    goto :goto_57
.end method

.method private startListening()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string/jumbo v1, "TwilightService"

    const-string/jumbo v2, "startListening"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v3, p0, v2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 161
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_32

    .line 162
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 163
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 164
    const-string/jumbo v2, "network"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 163
    invoke-virtual {v1, v2, p0, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 172
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_54

    .line 173
    new-instance v1, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_54
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 153
    return-void

    .line 165
    :cond_58
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 166
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 167
    const-string/jumbo v2, "gps"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 166
    invoke-virtual {v1, v2, p0, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_32
.end method

.method private stopListening()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 191
    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_19

    .line 194
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iput-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    :cond_19
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_22

    .line 199
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 202
    :cond_22
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 203
    iput-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 190
    return-void
.end method

.method private updateTwilightState()V
    .registers 15

    .prologue
    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 209
    .local v8, "currentTimeMillis":J
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_40

    iget-object v12, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 211
    .local v12, "location":Landroid/location/Location;
    :goto_a
    invoke-static {v12, v8, v9}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v13

    .line 217
    .local v13, "state":Lcom/android/server/twilight/TwilightState;
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 218
    :try_start_11
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v0, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 219
    iput-object v13, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 221
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_23
    if-ltz v10, :cond_47

    .line 222
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/twilight/TwilightListener;

    .line 223
    .local v11, "listener":Lcom/android/server/twilight/TwilightListener;
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    .line 224
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v0, p0, v11, v13}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_61

    .line 221
    add-int/lit8 v10, v10, -0x1

    goto :goto_23

    .line 210
    .end local v7    # "handler":Landroid/os/Handler;
    .end local v10    # "i":I
    .end local v11    # "listener":Lcom/android/server/twilight/TwilightListener;
    .end local v12    # "location":Landroid/location/Location;
    .end local v13    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_40
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v12

    goto :goto_a

    .restart local v12    # "location":Landroid/location/Location;
    .restart local v13    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_47
    monitor-exit v1

    .line 235
    if-eqz v13, :cond_60

    .line 236
    invoke-virtual {v13}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 237
    invoke-virtual {v13}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v2

    .line 238
    .local v2, "triggerAtMillis":J
    :goto_54
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v4, "TwilightService"

    iget-object v6, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 206
    .end local v2    # "triggerAtMillis":J
    :cond_60
    return-void

    .line 217
    :catchall_61
    move-exception v0

    monitor-exit v1

    throw v0

    .line 237
    :cond_64
    invoke-virtual {v13}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v2

    .restart local v2    # "triggerAtMillis":J
    goto :goto_54
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 150
    return v2

    .line 134
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez v0, :cond_15

    .line 135
    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 136
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_15

    .line 137
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 140
    :cond_15
    return v1

    .line 142
    :pswitch_16
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v0, :cond_23

    .line 143
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 144
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_23

    .line 145
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    .line 148
    :cond_23
    return v1

    .line 132
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_8
        :pswitch_16
    .end packed-switch
.end method

.method public onAlarm()V
    .registers 3

    .prologue
    .line 244
    const-string/jumbo v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 243
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 118
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_28

    .line 119
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "c":Landroid/content/Context;
    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 121
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 124
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v1, :cond_28

    .line 125
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 117
    .end local v0    # "c":Landroid/content/Context;
    :cond_28
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide/16 v2, 0x0

    .line 253
    if-eqz p1, :cond_14

    .line 254
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_15

    .line 249
    :cond_14
    :goto_14
    return-void

    .line 255
    :cond_15
    const-string/jumbo v0, "TwilightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocationChanged: provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    const-string/jumbo v2, " accuracy="

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    const-string/jumbo v2, " time="

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 255
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 260
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    goto :goto_14
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 273
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 269
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 81
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    new-instance v1, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 265
    return-void
.end method
