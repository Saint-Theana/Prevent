.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$1;,
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$Metrics;,
        Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final RULE_INSTANCE_GRACE_PERIOD:I = 0xf731400

.field public static final SUPPRESSED_EFFECT_ALL:J = 0x3L

.field public static final SUPPRESSED_EFFECT_CALLS:J = 0x2L

.field public static final SUPPRESSED_EFFECT_NOTIFICATIONS:J = 0x1L

.field static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private mAllowLights:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

.field private final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field private final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

.field private final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mSuppressedEffects:J

.field private mUser:I

.field private mVibrationMode:I

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$H;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 2

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/ZenModeHelper;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeSetting()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "setRingerMode"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V
    .registers 2
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/notification/ZenModeHelper;I)V
    .registers 2
    .param p1, "zen"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    const-string/jumbo v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 103
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 931
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ZenModeHelper$1;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    .line 117
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 119
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 120
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 122
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 125
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 127
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 128
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 129
    new-instance v0, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {v0, p0, p3}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 130
    invoke-virtual {p3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 116
    return-void
.end method

.method private appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V
    .registers 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v2, 0x0

    .line 906
    if-nez p1, :cond_4

    return-void

    .line 908
    :cond_4
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 909
    .local v0, "events":Landroid/service/notification/ZenModeConfig$EventInfo;
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 910
    const/4 v2, 0x1

    iput v2, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 911
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 912
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 913
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040663

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 914
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 915
    const/4 v2, 0x3

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 916
    sget-object v2, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 917
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 919
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    return-void
.end method

.method private appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V
    .registers 10
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 871
    if-nez p1, :cond_5

    return-void

    .line 873
    :cond_5
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 874
    .local v3, "weeknights":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 875
    const/16 v4, 0x16

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 876
    const/4 v4, 0x7

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 877
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 878
    .local v0, "rule1":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 879
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 880
    const v5, 0x1040661

    .line 879
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 881
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 882
    iput v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 883
    sget-object v4, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 884
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 886
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 889
    .local v2, "weekends":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 890
    const/16 v4, 0x17

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 891
    const/16 v4, 0x1e

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 892
    const/16 v4, 0xa

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 893
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 894
    .local v1, "rule2":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v6, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 895
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 896
    const v5, 0x1040662

    .line 895
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 897
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 898
    iput v7, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 899
    sget-object v4, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 900
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 902
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    return-void
.end method

.method private applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode_config_etag"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 672
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 673
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 675
    :cond_1d
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    .line 669
    return-void
.end method

.method private applyRestrictions()V
    .registers 11

    .prologue
    .line 775
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v6, :cond_47

    const/4 v5, 0x1

    .line 779
    .local v5, "zen":Z
    :goto_5
    iget-wide v6, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_49

    const/4 v2, 0x1

    .line 781
    .local v2, "muteNotifications":Z
    :goto_11
    if-eqz v5, :cond_19

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v6, :cond_4b

    .line 782
    :cond_19
    iget-wide v6, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v8, 0x2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_53

    const/4 v0, 0x1

    .line 784
    .local v0, "muteCalls":Z
    :goto_25
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_55

    const/4 v1, 0x1

    .line 786
    .local v1, "muteEverything":Z
    :goto_2b
    sget-object v8, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    const/4 v6, 0x0

    array-length v9, v8

    move v7, v6

    :goto_30
    if-ge v7, v9, :cond_69

    aget v4, v8, v7

    .line 787
    .local v4, "usage":I
    sget-object v6, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 788
    .local v3, "suppressionBehavior":I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_59

    .line 789
    if-nez v2, :cond_57

    move v6, v1

    :goto_40
    invoke-direct {p0, v6, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    .line 786
    :goto_43
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_30

    .line 775
    .end local v0    # "muteCalls":Z
    .end local v1    # "muteEverything":Z
    .end local v2    # "muteNotifications":Z
    .end local v3    # "suppressionBehavior":I
    .end local v4    # "usage":I
    .end local v5    # "zen":Z
    :cond_47
    const/4 v5, 0x0

    .restart local v5    # "zen":Z
    goto :goto_5

    .line 779
    :cond_49
    const/4 v2, 0x0

    .restart local v2    # "muteNotifications":Z
    goto :goto_11

    .line 781
    :cond_4b
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-nez v6, :cond_19

    const/4 v0, 0x1

    .restart local v0    # "muteCalls":Z
    goto :goto_25

    .line 782
    .end local v0    # "muteCalls":Z
    :cond_53
    const/4 v0, 0x0

    .restart local v0    # "muteCalls":Z
    goto :goto_25

    .line 784
    :cond_55
    const/4 v1, 0x0

    .restart local v1    # "muteEverything":Z
    goto :goto_2b

    .line 789
    .restart local v3    # "suppressionBehavior":I
    .restart local v4    # "usage":I
    :cond_57
    const/4 v6, 0x1

    goto :goto_40

    .line 790
    :cond_59
    const/4 v6, 0x2

    if-ne v3, v6, :cond_65

    .line 791
    if-nez v0, :cond_63

    move v6, v1

    :goto_5f
    invoke-direct {p0, v6, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    goto :goto_43

    :cond_63
    const/4 v6, 0x1

    goto :goto_5f

    .line 793
    :cond_65
    invoke-direct {p0, v1, v4}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZI)V

    goto :goto_43

    .line 797
    .end local v3    # "suppressionBehavior":I
    .end local v4    # "usage":I
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->readAllowLightsFromSettings()V

    .line 774
    return-void
.end method

.method private applyRestrictions(ZI)V
    .registers 9
    .param p1, "mute"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 803
    if-eqz p1, :cond_16

    move v1, v2

    .line 802
    :goto_8
    const/4 v5, 0x3

    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 806
    if-eqz p1, :cond_18

    .line 805
    :goto_10
    const/16 v3, 0x1c

    invoke-virtual {v1, v3, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 800
    return-void

    :cond_16
    move v1, v3

    .line 803
    goto :goto_8

    :cond_18
    move v2, v3

    .line 806
    goto :goto_10
.end method

.method private applyZenToRingerMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 811
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v2, :cond_6

    return-void

    .line 813
    :cond_6
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v1

    .line 814
    .local v1, "ringerModeInternal":I
    move v0, v1

    .line 815
    .local v0, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_34

    .line 831
    :cond_12
    :goto_12
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1d

    .line 832
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string/jumbo v3, "ZenModeHelper"

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 810
    :cond_1d
    return-void

    .line 818
    :pswitch_1e
    if-eqz v1, :cond_12

    .line 819
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 820
    const/4 v0, 0x0

    goto :goto_12

    .line 825
    :pswitch_29
    if-nez v1, :cond_12

    .line 826
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->getPreviousRingerModeSetting()I

    move-result v0

    .line 827
    invoke-direct {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    goto :goto_12

    .line 815
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private cleanUpZenRules()V
    .registers 13

    .prologue
    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 598
    .local v0, "currentTime":J
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v7

    .line 599
    :try_start_7
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    .line 600
    .local v4, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v6, :cond_4e

    .line 601
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_19
    if-ltz v3, :cond_4e

    .line 602
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 603
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-wide v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_4b

    sub-long v8, v0, v8

    const-wide/32 v10, 0xf731400

    cmp-long v6, v10, v8

    if-gez v6, :cond_41

    .line 605
    :try_start_34
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 606
    const/16 v9, 0x2000

    .line 605
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_41} :catch_44
    .catchall {:try_start_34 .. :try_end_41} :catchall_4b

    .line 601
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 607
    :catch_44
    move-exception v2

    .line 608
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_45
    iget-object v6, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    goto :goto_41

    .line 598
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i":I
    .end local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_4b
    move-exception v6

    monitor-exit v7

    throw v6

    .line 613
    .restart local v4    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_4e
    :try_start_4e
    const-string/jumbo v6, "cleanUpZenRules"

    invoke-virtual {p0, v4, v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_4b

    monitor-exit v7

    .line 596
    return-void
.end method

.method private computeZenMode()I
    .registers 7

    .prologue
    .line 724
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v4

    .line 725
    :try_start_3
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_48

    if-nez v3, :cond_a

    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 726
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_48

    monitor-exit v4

    return v3

    .line 727
    :cond_18
    const/4 v2, 0x0

    .line 728
    .local v2, "zen":I
    :try_start_19
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 729
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 730
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->zenSeverity(I)I

    move-result v5

    if-le v3, v5, :cond_25

    .line 731
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_48

    goto :goto_25

    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_46
    monitor-exit v4

    .line 735
    return v2

    .line 724
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v2    # "zen":I
    :catchall_48
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .registers 10
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 458
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 459
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v4

    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 460
    iget-wide v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 458
    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZJ)V

    return-object v0
.end method

.method private dispatchOnConfigChanged()V
    .registers 4

    .prologue
    .line 837
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 838
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_6

    .line 836
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private dispatchOnPolicyChanged()V
    .registers 4

    .prologue
    .line 843
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 844
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged()V

    goto :goto_6

    .line 842
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .registers 4

    .prologue
    .line 849
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 850
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_6

    .line 848
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_16
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "var"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v5, 0x0

    .line 517
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 518
    if-nez p3, :cond_12

    .line 519
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 520
    return-void

    .line 522
    :cond_12
    const-string/jumbo v2, "allow(calls=%s,callsFrom=%s,repeatCallers=%s,messages=%s,messagesFrom=%s,events=%s,reminders=%s,whenScreenOff,whenScreenOn=%s)\n"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    .line 524
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 525
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 526
    iget v4, p3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 527
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 528
    iget-boolean v4, p3, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 522
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 529
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  manualRule="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 530
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_84

    return-void

    .line 531
    :cond_84
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 532
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8b
    if-ge v1, v0, :cond_a8

    .line 533
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_a4

    const-string/jumbo v2, "  automaticRules="

    :goto_95
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 533
    :cond_a4
    const-string/jumbo v2, "                 "

    goto :goto_95

    .line 516
    :cond_a8
    return-void
.end method

.method private evaluateZenMode(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "setRingerMode"    # Z

    .prologue
    .line 698
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "ZenModeHelper"

    const-string/jumbo v3, "evaluateZenMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_d
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 700
    .local v1, "zenBefore":I
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->computeZenMode()I

    move-result v0

    .line 701
    .local v0, "zen":I
    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 702
    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 703
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->updateRingerModeAffectedStreams()V

    .line 704
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->readAllowLightsFromSettings()V

    .line 705
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->readVibrationModeFromSettings()V

    .line 706
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 707
    if-eqz p2, :cond_2b

    .line 708
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 710
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 711
    if-eq v0, v1, :cond_35

    .line 712
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap1(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 714
    :cond_35
    const/4 v2, 0x1

    return v2
.end method

.method private static getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;
    .registers 2
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v0, 0x0

    .line 581
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    goto :goto_3
.end method

.method private getPreviousRingerModeSetting()I
    .registers 4

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 688
    const-string/jumbo v1, "zen_mode_ringer_level"

    const/4 v2, 0x2

    .line 687
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 12
    .param p1, "owner"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x0

    .line 421
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v4, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 423
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 426
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 425
    const/16 v8, 0x84

    .line 423
    invoke-virtual {v6, v4, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 427
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_36

    .line 428
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1c
    if-ge v1, v0, :cond_36

    .line 429
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 430
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 431
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 432
    return-object v2

    .line 428
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 436
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_36
    return-object v9
.end method

.method private getZenModeSetting()I
    .registers 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isSystemRule(Landroid/app/AutomaticZenRule;)Z
    .registers 4
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;

    .prologue
    .line 417
    const-string/jumbo v0, "android"

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadConfigForUser(ILjava/lang/String;)V
    .registers 7
    .param p1, "user"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 218
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v1, p1, :cond_6

    if-gez p1, :cond_7

    :cond_6
    return-void

    .line 219
    :cond_7
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 220
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2b
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 222
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_5f

    .line 223
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_57

    const-string/jumbo v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " generating default config for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_57
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 225
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 227
    :cond_5f
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 228
    :try_start_62
    invoke-virtual {p0, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6a

    monitor-exit v1

    .line 230
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 217
    return-void

    .line 227
    :catchall_6a
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .registers 7
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p2, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "isNew"    # Z

    .prologue
    const/4 v2, 0x0

    .line 440
    if-eqz p3, :cond_15

    .line 441
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 443
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 446
    :cond_15
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 447
    iput-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 449
    :cond_1f
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 450
    const/4 v0, 0x0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 451
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 452
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 454
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    .line 453
    invoke-static {v0, v2}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v0

    iput v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 439
    return-void
.end method

.method private readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .registers 7
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 855
    const/4 v2, 0x0

    .line 857
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110005

    :try_start_4
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 858
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :cond_8
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    .line 859
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_24
    .catchall {:try_start_4 .. :try_end_14} :catchall_32

    move-result-object v0

    .line 860
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_8

    .line 865
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 860
    return-object v0

    .line 865
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :cond_1b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 867
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_1e
    new-instance v3, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v3

    .line 862
    :catch_24
    move-exception v1

    .line 863
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    const-string/jumbo v3, "ZenModeHelper"

    const-string/jumbo v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_32

    .line 865
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1e

    .line 864
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_32
    move-exception v3

    .line 865
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 864
    throw v3
.end method

.method private setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 639
    .local v0, "identity":J
    if-eqz p1, :cond_3f

    :try_start_8
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 643
    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-eq v3, v4, :cond_5d

    .line 645
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_3b

    const-string/jumbo v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked: store config for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_c0

    .line 665
    :cond_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    return v7

    .line 640
    :cond_3f
    :try_start_3f
    const-string/jumbo v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid config in setConfigLocked; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_c0

    .line 665
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    return v6

    .line 649
    :cond_5d
    :try_start_5d
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V

    .line 650
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 651
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_8d

    const-string/jumbo v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConfigLocked reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    :cond_8d
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v3, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 653
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    .line 654
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    .line 653
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    const/4 v2, 0x0

    .line 655
    .local v2, "policyChanged":Z
    :goto_a3
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v3}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 656
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 658
    :cond_ae
    if-eqz v2, :cond_b3

    .line 659
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnPolicyChanged()V

    .line 661
    :cond_b3
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 662
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap0(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    :try_end_ba
    .catchall {:try_start_5d .. :try_end_ba} :catchall_c0

    .line 665
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    return v7

    .line 653
    .end local v2    # "policyChanged":Z
    :cond_be
    const/4 v2, 0x1

    .restart local v2    # "policyChanged":Z
    goto :goto_a3

    .line 664
    .end local v2    # "policyChanged":Z
    :catchall_c0
    move-exception v3

    .line 665
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw v3
.end method

.method private setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .param p5, "setRingerMode"    # Z

    .prologue
    .line 470
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v5

    .line 471
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7f

    if-nez v4, :cond_9

    monitor-exit v5

    return-void

    .line 472
    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_7f

    move-result v4

    if-nez v4, :cond_11

    monitor-exit v5

    return-void

    .line 473
    :cond_11
    :try_start_11
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_54

    const-string/jumbo v4, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setManualZenMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 474
    const-string/jumbo v7, " conditionId="

    .line 473
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 474
    const-string/jumbo v7, " reason="

    .line 473
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 475
    const-string/jumbo v7, " setRingerMode="

    .line 473
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_54
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 477
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-nez p1, :cond_82

    .line 478
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 479
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_69
    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 480
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 481
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z
    :try_end_7e
    .catchall {:try_start_11 .. :try_end_7e} :catchall_7f

    goto :goto_69

    .line 470
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_7f
    move-exception v4

    monitor-exit v5

    throw v4

    .line 485
    .restart local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_82
    :try_start_82
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 486
    .local v3, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 487
    iput p1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 488
    iput-object p2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 489
    iput-object p4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 490
    iput-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 492
    .end local v3    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_92
    invoke-direct {p0, v2, p3, p5}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    :try_end_95
    .catchall {:try_start_82 .. :try_end_95} :catchall_7f

    monitor-exit v5

    .line 468
    return-void
.end method

.method private setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "previousRingerLevel"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode_ringer_level"

    .line 694
    if-nez p1, :cond_10

    .line 692
    :goto_c
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 691
    return-void

    .line 694
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private setZenModeSetting(I)V
    .registers 4
    .param p1, "zen"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 682
    return-void
.end method

.method private updateRingerModeAffectedStreams()V
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_9

    .line 719
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->updateRingerModeAffectedStreamsInternal()V

    .line 717
    :cond_9
    return-void
.end method

.method private static zenSeverity(I)I
    .registers 2
    .param p0, "zen"    # I

    .prologue
    .line 923
    packed-switch p0, :pswitch_data_c

    .line 927
    const/4 v0, 0x0

    return v0

    .line 924
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 925
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 926
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 923
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isSystemRule(Landroid/app/AutomaticZenRule;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 287
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 288
    .local v1, "owner":Landroid/content/pm/ServiceInfo;
    if-nez v1, :cond_19

    .line 289
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Owner is not a condition provider service"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 292
    :cond_19
    const/4 v3, -0x1

    .line 293
    .local v3, "ruleInstanceLimit":I
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_28

    .line 294
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 295
    const-string/jumbo v5, "android.service.zen.automatic.ruleInstanceLimit"

    const/4 v6, -0x1

    .line 294
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 297
    :cond_28
    if-lez v3, :cond_3f

    .line 298
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 297
    if-ge v3, v4, :cond_3f

    .line 299
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Rule instance limit exceeded"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    .end local v1    # "owner":Landroid/content/pm/ServiceInfo;
    .end local v3    # "ruleInstanceLimit":I
    :cond_3f
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v5

    .line 305
    :try_start_42
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v4, :cond_52

    .line 306
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v6, "Could not create rule"

    invoke-direct {v4, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_4f

    .line 304
    :catchall_4f
    move-exception v4

    monitor-exit v5

    throw v4

    .line 308
    :cond_52
    :try_start_52
    sget-boolean v4, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v4, :cond_7b

    .line 309
    const-string/jumbo v4, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addAutomaticZenRule rule= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_7b
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 312
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    new-instance v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 313
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v4, 0x1

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 314
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const/4 v4, 0x1

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 316
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_52 .. :try_end_9a} :catchall_4f

    monitor-exit v5

    return-object v4

    .line 318
    :cond_9c
    :try_start_9c
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v6, "Could not create rule"

    invoke-direct {v4, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_4f
.end method

.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public allowVibrationForCalls()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 760
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mVibrationMode:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public allowVibrationForNotifications()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 764
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mVibrationMode:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 10
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 397
    .local v0, "callingUid":I
    if-eqz v0, :cond_c

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_d

    .line 398
    :cond_c
    return v7

    .line 399
    :cond_d
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_19

    .line 401
    return v7

    .line 403
    :cond_19
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 405
    array-length v2, v3

    .line 406
    .local v2, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    if-ge v1, v2, :cond_3b

    .line 407
    aget-object v4, v3, v1

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 408
    return v7

    .line 406
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 412
    .end local v1    # "i":I
    .end local v2    # "packageCount":I
    :cond_3b
    return v6
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mZenMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    const-string/jumbo v2, "mDefaultConfig"

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 500
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 501
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_52

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConfigs[u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v3, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 504
    :cond_52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mUser="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 505
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v3

    .line 506
    :try_start_63
    const-string/jumbo v2, "mConfig"

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p1, p2, v2, v4}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)V
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_a1

    monitor-exit v3

    .line 509
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSuppressedEffects="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAllowLights="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAllowLights:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 511
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mVibrationMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mVibrationMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 512
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeFiltering;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ZenModeConditions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 496
    return-void

    .line 505
    :catchall_a1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getAllowLights()Z
    .registers 2

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAllowLights:Z

    return v0
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 275
    :try_start_4
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_18

    if-nez v1, :cond_a

    monitor-exit v2

    return-object v3

    .line 276
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .local v0, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    monitor-exit v2

    .line 278
    if-nez v0, :cond_1b

    return-object v3

    .line 274
    .end local v0    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1

    .line 279
    .restart local v0    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 280
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    return-object v1

    .line 282
    :cond_26
    return-object v3
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 3

    .prologue
    .line 621
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 622
    :try_start_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 621
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCurrentInstanceCount(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "owner"    # Landroid/content/ComponentName;

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v4

    .line 386
    :try_start_4
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rule$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 387
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_10

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2d

    move-result v3

    if-eqz v3, :cond_10

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2b
    monitor-exit v4

    .line 392
    return v0

    .line 385
    .end local v2    # "rule$iterator":Ljava/util/Iterator;
    :catchall_2d
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/service/notification/ZenModeConfig;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressedEffects()J
    .registers 3

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    return-wide v0
.end method

.method public getZenMode()I
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    return v0
.end method

.method public getZenRules()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v2, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v4

    .line 262
    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_30

    if-nez v3, :cond_e

    monitor-exit v4

    return-object v2

    .line 263
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 264
    .local v0, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 265
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_30

    goto :goto_1a

    .line 261
    .end local v0    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "rule$iterator":Ljava/util/Iterator;
    :catchall_30
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "rule$iterator":Ljava/util/Iterator;
    :cond_33
    monitor-exit v4

    .line 269
    return-object v2
.end method

.method public initZenMode()V
    .registers 3

    .prologue
    .line 187
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "ZenModeHelper"

    const-string/jumbo v1, "initZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_d
    const-string/jumbo v0, "init"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    .line 186
    return-void
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)[Z
    .registers 17
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    .line 144
    iget-object v10, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v10

    .line 145
    :try_start_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/notification/ZenModeFiltering;->matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v8

    .line 147
    .local v8, "matches":Z
    if-nez v8, :cond_24

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->allowVibrationForCalls()Z

    move-result v9

    .line 148
    :goto_19
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v8, v0, v1

    const/4 v1, 0x1

    aput-boolean v9, v0, v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    monitor-exit v10

    return-object v0

    .line 147
    :cond_24
    const/4 v9, 0x1

    .local v9, "matchesForVibration":Z
    goto :goto_19

    .line 144
    .end local v8    # "matches":Z
    .end local v9    # "matchesForVibration":Z
    :catchall_26
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 192
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "ZenModeHelper"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_d
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_22

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeDelegate:Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 197
    :cond_22
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 198
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->-wrap2(Lcom/android/server/notification/ZenModeHelper$H;)V

    .line 199
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 200
    const-string/jumbo v0, "onSystemReady"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenMode(Ljava/lang/String;Z)Z

    .line 191
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5
    .param p1, "user"    # I

    .prologue
    .line 208
    if-gez p1, :cond_3

    return-void

    .line 209
    :cond_3
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserRemoved u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_21
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 207
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3
    .param p1, "user"    # I

    .prologue
    .line 204
    const-string/jumbo v0, "onUserSwitched"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 203
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 3
    .param p1, "user"    # I

    .prologue
    .line 214
    const-string/jumbo v0, "onUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->loadConfigForUser(ILjava/lang/String;)V

    .line 213
    return-void
.end method

.method public readAllowLightsFromSettings()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 744
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_32

    .line 755
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAllowLights:Z

    .line 743
    :goto_9
    return-void

    .line 747
    :pswitch_a
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 748
    const-string/jumbo v3, "allow_lights"

    .line 747
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1c

    :goto_19
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAllowLights:Z

    goto :goto_9

    :cond_1c
    move v0, v1

    goto :goto_19

    .line 751
    :pswitch_1e
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 752
    const-string/jumbo v3, "zen_priority_allow_lights"

    .line 751
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_30

    :goto_2d
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAllowLights:Z

    goto :goto_9

    :cond_30
    move v0, v1

    goto :goto_2d

    .line 744
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public readVibrationModeFromSettings()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 768
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 769
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 770
    const-string/jumbo v2, "zen_priority_vibration_mode"

    invoke-static {v0, v2, v1}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 769
    :cond_13
    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mVibrationMode:I

    .line 767
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 540
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigMigration:Landroid/service/notification/ZenModeConfig$Migration;

    invoke-static {p1, v3}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 541
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v2, :cond_4f

    .line 542
    if-eqz p2, :cond_38

    .line 544
    iget v3, v2, Landroid/service/notification/ZenModeConfig;->user:I

    if-eqz v3, :cond_11

    .line 545
    return-void

    .line 547
    :cond_11
    iput-object v6, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 549
    .local v4, "time":J
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v3, :cond_38

    .line 550
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 552
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 553
    iput-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 554
    iput-wide v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    goto :goto_25

    .line 558
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v1    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v4    # "time":J
    :cond_38
    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_45

    const-string/jumbo v3, "ZenModeHelper"

    const-string/jumbo v6, "readXml"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_45
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v6

    .line 560
    :try_start_48
    const-string/jumbo v3, "readXml"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_50

    monitor-exit v6

    .line 539
    :cond_4f
    return-void

    .line 559
    :catchall_50
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method public recordCaller(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeFiltering;->recordCall(Lcom/android/server/notification/NotificationRecord;)V

    .line 156
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 351
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v3

    .line 352
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_60

    if-nez v2, :cond_a

    monitor-exit v3

    return v4

    .line 353
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 354
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_60

    .line 355
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v1, :cond_1c

    monitor-exit v3

    return v4

    .line 356
    :cond_1c
    :try_start_1c
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 357
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_50

    const-string/jumbo v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_50
    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    :try_end_54
    .catchall {:try_start_1c .. :try_end_54} :catchall_60

    move-result v2

    monitor-exit v3

    return v2

    .line 360
    :cond_57
    :try_start_57
    new-instance v2, Ljava/lang/SecurityException;

    .line 361
    const-string/jumbo v4, "Cannot delete rules not owned by your condition provider"

    .line 360
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_60

    .line 351
    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :catchall_60
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 369
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v4

    .line 370
    :try_start_4
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_49

    if-nez v3, :cond_a

    monitor-exit v4

    return v5

    .line 371
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 372
    .local v1, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_42

    .line 373
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 374
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 375
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    .line 374
    if-eqz v3, :cond_3f

    .line 376
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 372
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 379
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_42
    const/4 v3, 0x1

    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_49

    move-result v3

    monitor-exit v4

    return v3

    .line 369
    .end local v0    # "i":I
    .end local v1    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_49
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "filter"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 238
    invoke-static {p2, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v0

    .line 239
    .local v0, "newZen":I
    if-eq v0, v1, :cond_2b

    .line 240
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    :goto_20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2b
    return-void

    :cond_2c
    move-object v1, v2

    .line 240
    goto :goto_e

    :cond_2e
    move-object v3, v2

    .line 241
    goto :goto_20
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .registers 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v0

    .line 632
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 630
    return-void

    .line 631
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .registers 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 627
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    return-void
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 5
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    .line 585
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_7

    :cond_6
    return-void

    .line 586
    :cond_7
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v2

    .line 587
    :try_start_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 588
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 589
    const-string/jumbo v1, "setNotificationPolicy"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    monitor-exit v2

    .line 584
    return-void

    .line 586
    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSuppressedEffects(J)V
    .registers 6
    .param p1, "suppressedEffects"    # J

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 247
    :cond_7
    iput-wide p1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 248
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 245
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 162
    :try_start_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 161
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shouldSuppressWhenScreenOff()Z
    .registers 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 168
    :try_start_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_a
    monitor-exit v1

    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_a

    .line 167
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shouldSuppressWhenScreenOn()Z
    .registers 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v1

    .line 174
    :try_start_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_a
    monitor-exit v1

    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_a

    .line 173
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    const-string/jumbo v0, "ZenModeHelper"

    return-object v0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z
    .registers 10
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    monitor-enter v3

    .line 327
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_44

    if-nez v2, :cond_a

    monitor-exit v3

    return v4

    .line 328
    :cond_a
    :try_start_a
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 329
    const-string/jumbo v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAutomaticZenRule zenRule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 330
    const-string/jumbo v5, " reason="

    .line 329
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_33
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 334
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    if-nez p1, :cond_47

    .line 335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Rule doesn\'t exist"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_44

    .line 326
    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :catchall_44
    move-exception v2

    monitor-exit v3

    throw v2

    .line 337
    .restart local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_47
    :try_start_47
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 338
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v1, :cond_67

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 343
    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->populateZenRule(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 344
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const/4 v2, 0x1

    invoke-direct {p0, v0, p3, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)Z
    :try_end_64
    .catchall {:try_start_47 .. :try_end_64} :catchall_44

    move-result v2

    monitor-exit v3

    return v2

    .line 339
    :cond_67
    :try_start_67
    new-instance v2, Ljava/lang/SecurityException;

    .line 340
    const-string/jumbo v4, "Cannot update rules not owned by your condition provider"

    .line 339
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_44
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 567
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 569
    if-eqz p2, :cond_16

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_16

    .line 567
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 572
    :cond_16
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_13

    .line 565
    :cond_22
    return-void
.end method
