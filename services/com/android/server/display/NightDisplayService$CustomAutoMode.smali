.class Lcom/android/server/display/NightDisplayService$CustomAutoMode;
.super Lcom/android/server/display/NightDisplayService$AutoMode;
.source "NightDisplayService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

.field private mLastActivatedTime:Ljava/util/Calendar;

.field private mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService$AutoMode;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/NightDisplayService$AutoMode;)V

    .line 482
    invoke-virtual {p1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 483
    new-instance v0, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;-><init>(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    return-void
.end method

.method private updateActivated()V
    .registers 16

    .prologue
    const/16 v14, 0xc

    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v10, 0x1

    .line 492
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 493
    .local v6, "now":Ljava/util/Calendar;
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v11, v6}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v8

    .line 494
    .local v8, "startTime":Ljava/util/Calendar;
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v11, v8}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 495
    .local v3, "endTime":Ljava/util/Calendar;
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    .line 497
    .local v0, "activated":Z
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v11}, Lcom/android/server/display/NightDisplayService;->-get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_26

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    if-nez v11, :cond_b1

    :cond_26
    move v7, v10

    .line 498
    .local v7, "setActivated":Z
    :goto_27
    if-nez v7, :cond_9c

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v11}, Lcom/android/server/display/NightDisplayService;->-get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v11, v0, :cond_9c

    .line 499
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 500
    .local v1, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_76

    .line 501
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 502
    .local v9, "year":I
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 503
    .local v2, "dayOfYear":I
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 504
    .local v4, "hourOfDay":I
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 506
    .local v5, "minute":I
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 507
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 508
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v12, v2}, Ljava/util/Calendar;->set(II)V

    .line 509
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 510
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v14, v5}, Ljava/util/Calendar;->set(II)V

    .line 513
    .end local v2    # "dayOfYear":I
    .end local v4    # "hourOfDay":I
    .end local v5    # "minute":I
    .end local v9    # "year":I
    :cond_76
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b6

    .line 514
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b4

    .line 515
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    .line 522
    .end local v1    # "currentTimeZone":Ljava/util/TimeZone;
    .end local v7    # "setActivated":Z
    :cond_9c
    :goto_9c
    if-eqz v7, :cond_a7

    .line 523
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get5(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 525
    :cond_a7
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    .line 491
    return-void

    .line 497
    :cond_b1
    const/4 v7, 0x0

    goto/16 :goto_27

    .line 514
    .restart local v1    # "currentTimeZone":Ljava/util/TimeZone;
    .restart local v7    # "setActivated":Z
    :cond_b4
    const/4 v7, 0x1

    .local v7, "setActivated":Z
    goto :goto_9c

    .line 517
    .local v7, "setActivated":Z
    :cond_b6
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d1

    .line 518
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_9c

    .line 517
    :cond_d1
    const/4 v7, 0x1

    .local v7, "setActivated":Z
    goto :goto_9c
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V
    .registers 11
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x0

    .line 529
    if-eqz p1, :cond_1d

    .line 530
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    .line 532
    .local v7, "next":Ljava/util/Calendar;
    :goto_f
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string/jumbo v4, "NightDisplayService"

    const/4 v1, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 528
    .end local v7    # "next":Ljava/util/Calendar;
    :cond_1d
    return-void

    .line 531
    :cond_1e
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    .restart local v7    # "next":Ljava/util/Calendar;
    goto :goto_f
.end method


# virtual methods
.method public onActivated(Z)V
    .registers 4
    .param p1, "activated"    # Z

    .prologue
    .line 559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 560
    .local v0, "now":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 561
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 563
    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    .line 558
    return-void
.end method

.method public onAlarm()V
    .registers 3

    .prologue
    .line 582
    const-string/jumbo v0, "NightDisplayService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    .line 581
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .registers 3
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 577
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    .line 574
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .registers 3
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 570
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    .line 567
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 538
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get5(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 543
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get5(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 546
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    .line 537
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 550
    return-void
.end method
