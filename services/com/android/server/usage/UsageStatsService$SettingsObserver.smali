.class Lcom/android/server/usage/UsageStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final KEY_IDLE_DURATION:Ljava/lang/String; = "idle_duration2"

.field private static final KEY_IDLE_DURATION_OLD:Ljava/lang/String; = "idle_duration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_PAROLE_DURATION:Ljava/lang/String; = "parole_duration"

.field private static final KEY_PAROLE_INTERVAL:Ljava/lang/String; = "parole_interval"

.field private static final KEY_WALLCLOCK_THRESHOLD:Ljava/lang/String; = "wallclock_threshold"


# instance fields
.field private final mParser:Landroid/util/KeyValueListParser;

.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1189
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1186
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1188
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->updateSettings()V

    .line 1200
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->postOneTimeCheckIdleStates()V

    .line 1198
    return-void
.end method

.method registerObserver()V
    .registers 4

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1194
    const-string/jumbo v1, "app_idle_constants"

    .line 1193
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1194
    const/4 v2, 0x0

    .line 1193
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1192
    return-void
.end method

.method updateSettings()V
    .registers 9

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-get1(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1208
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1209
    const-string/jumbo v4, "app_idle_constants"

    .line 1208
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1d} :catch_82
    .catchall {:try_start_7 .. :try_end_1d} :catchall_a3

    .line 1216
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "idle_duration2"

    .line 1217
    const-wide/32 v6, 0x2932e00

    .line 1216
    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleScreenThresholdMillis:J

    .line 1219
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "wallclock_threshold"

    .line 1220
    const-wide/32 v6, 0xa4cb800

    .line 1219
    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    .line 1222
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-wide v4, v3, Lcom/android/server/usage/UsageStatsService;->mAppIdleScreenThresholdMillis:J

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    .line 1223
    const-wide/32 v6, 0x1b77400

    .line 1222
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    .line 1226
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "parole_interval"

    .line 1227
    const-wide/32 v6, 0x5265c00

    .line 1226
    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleIntervalMillis:J

    .line 1229
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "parole_duration"

    .line 1230
    const-wide/32 v6, 0x927c0

    .line 1229
    invoke-virtual {v3, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/usage/UsageStatsService;->mAppIdleParoleDurationMillis:J

    .line 1231
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-get0(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/AppIdleHistory;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-wide v4, v3, Lcom/android/server/usage/UsageStatsService;->mAppIdleWallclockThresholdMillis:J

    .line 1232
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-wide v6, v3, Lcom/android/server/usage/UsageStatsService;->mAppIdleScreenThresholdMillis:J

    .line 1231
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->setThresholds(JJ)V
    :try_end_80
    .catchall {:try_start_1d .. :try_end_80} :catchall_a3

    monitor-exit v2

    .line 1203
    return-void

    .line 1210
    :catch_82
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_83
    const-string/jumbo v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad value for app idle settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_83 .. :try_end_a1} :catchall_a3

    goto/16 :goto_1d

    .line 1204
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_a3
    move-exception v1

    monitor-exit v2

    throw v1
.end method
