.class public Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 41
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)V

    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private static audienceMatches(IF)Z
    .registers 6
    .param p0, "source"    # I
    .param p1, "contactAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 228
    packed-switch p0, :pswitch_data_34

    .line 236
    const-string/jumbo v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v0

    .line 230
    :pswitch_20
    return v0

    .line 232
    :pswitch_21
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_28

    :goto_27
    return v0

    :cond_28
    move v0, v1

    goto :goto_27

    .line 234
    :pswitch_2a
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_31

    :goto_30
    return v0

    :cond_31
    move v0, v1

    goto :goto_30

    .line 228
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_2a
    .end packed-switch
.end method

.method private static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .registers 3
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v0, 0x0

    .line 98
    if-eqz p0, :cond_17

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 99
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 98
    :cond_17
    return-object v0
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x4

    .line 185
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    move-result v0

    .line 185
    if-nez v0, :cond_15

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    .line 185
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 217
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_b

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    :cond_b
    const/4 v2, 0x0

    return v2

    .line 218
    :cond_d
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 219
    const-string/jumbo v3, "sms_default_application"

    .line 218
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v2, :cond_38

    .line 206
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 207
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    :cond_16
    iput-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 208
    sget-boolean v1, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v1, :cond_38

    const-string/jumbo v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_38
    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_49

    .line 211
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 210
    :goto_48
    return v1

    :cond_49
    const/4 v1, 0x0

    goto :goto_48
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 191
    const-string/jumbo v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 224
    const-string/jumbo v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 195
    const-string/jumbo v0, "reminder"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 181
    const-string/jumbo v0, "sys"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p6, "contactsTimeoutMs"    # I
    .param p7, "timeoutAffinity"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    return v2

    .line 82
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    return v2

    .line 83
    :cond_a
    if-ne p1, v3, :cond_2b

    .line 84
    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1, p0, p4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-wrap0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 85
    return v3

    .line 87
    :cond_19
    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v1, :cond_1e

    return v2

    .line 88
    :cond_1e
    if-eqz p5, :cond_2b

    .line 89
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 91
    .local v0, "contactAffinity":F
    iget v1, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result v1

    return v1

    .line 94
    .end local v0    # "contactAffinity":F
    :cond_2b
    return v3
.end method

.method private static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "source"    # I
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result v0

    if-nez v0, :cond_12

    .line 174
    const-string/jumbo v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private static ts(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDefaultPhoneApp="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get1(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 55
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    monitor-enter v2

    .line 56
    :try_start_23
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RepeatCallers.mCalls="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, " at "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-get0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeFiltering;->ts(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_23 .. :try_end_7a} :catchall_7f

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .end local v0    # "i":I
    :cond_7d
    monitor-exit v2

    .line 51
    return-void

    .line 55
    :catchall_7f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 199
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 200
    const-string/jumbo v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    .line 199
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15

    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected recordCall(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-wrap1(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 9
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 108
    return v3

    .line 110
    :cond_9
    packed-switch p1, :pswitch_data_ac

    .line 168
    return v3

    .line 113
    :pswitch_d
    const-string/jumbo v0, "none"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 114
    return v4

    .line 116
    :pswitch_14
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 118
    return v3

    .line 120
    :cond_1b
    const-string/jumbo v0, "alarmsOnly"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 121
    return v4

    .line 123
    :pswitch_22
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 125
    return v3

    .line 128
    :cond_29
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 129
    const-string/jumbo v0, "priorityApp"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 130
    return v3

    .line 132
    :cond_37
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 133
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v0, :cond_56

    .line 134
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-wrap0(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    .line 133
    if-eqz v0, :cond_56

    .line 135
    const-string/jumbo v0, "repeatCaller"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 136
    return v3

    .line 138
    :cond_56
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_61

    .line 139
    const-string/jumbo v0, "!allowCalls"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 140
    return v4

    .line 142
    :cond_61
    iget v0, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0

    .line 144
    :cond_68
    invoke-direct {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 145
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_79

    .line 146
    const-string/jumbo v0, "!allowMessages"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 147
    return v4

    .line 149
    :cond_79
    iget v0, p2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0

    .line 151
    :cond_80
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 152
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_91

    .line 153
    const-string/jumbo v0, "!allowEvents"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 154
    return v4

    .line 156
    :cond_91
    return v3

    .line 158
    :cond_92
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 159
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-nez v0, :cond_a3

    .line 160
    const-string/jumbo v0, "!allowReminders"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 161
    return v4

    .line 163
    :cond_a3
    return v3

    .line 165
    :cond_a4
    const-string/jumbo v0, "!priority"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 166
    return v4

    .line 110
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_22
        :pswitch_d
        :pswitch_14
    .end packed-switch
.end method
