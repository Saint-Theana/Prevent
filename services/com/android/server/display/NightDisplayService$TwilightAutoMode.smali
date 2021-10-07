.class Lcom/android/server/display/NightDisplayService$TwilightAutoMode;
.super Lcom/android/server/display/NightDisplayService$AutoMode;
.source "NightDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# instance fields
.field private mLastActivatedTime:Ljava/util/Calendar;

.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService$AutoMode;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/NightDisplayService$AutoMode;)V

    .line 594
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/NightDisplayService;->-wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 593
    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .registers 7
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v1, 0x1

    .line 598
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    .line 599
    :goto_7
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v0, :cond_4d

    .line 600
    .local v1, "setActivated":Z
    :cond_1b
    :goto_1b
    if-eqz v1, :cond_3f

    if-eqz p1, :cond_3f

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    if-eqz v4, :cond_3f

    .line 601
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunrise()Ljava/util/Calendar;

    move-result-object v2

    .line 602
    .local v2, "sunrise":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunset()Ljava/util/Calendar;

    move-result-object v3

    .line 603
    .local v3, "sunset":Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 604
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 605
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    .line 612
    .end local v1    # "setActivated":Z
    .end local v2    # "sunrise":Ljava/util/Calendar;
    .end local v3    # "sunset":Ljava/util/Calendar;
    :cond_3f
    :goto_3f
    if-eqz v1, :cond_4a

    .line 613
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get5(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 597
    :cond_4a
    return-void

    .line 598
    :cond_4b
    const/4 v0, 0x0

    .local v0, "isNight":Z
    goto :goto_7

    .line 599
    .end local v0    # "isNight":Z
    :cond_4d
    const/4 v1, 0x0

    goto :goto_1b

    .line 604
    .restart local v1    # "setActivated":Z
    .restart local v2    # "sunrise":Ljava/util/Calendar;
    .restart local v3    # "sunset":Ljava/util/Calendar;
    :cond_4f
    const/4 v1, 0x1

    .local v1, "setActivated":Z
    goto :goto_3f

    .line 607
    .local v1, "setActivated":Z
    :cond_51
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 608
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3f

    .line 607
    :cond_60
    const/4 v1, 0x1

    .local v1, "setActivated":Z
    goto :goto_3f
.end method


# virtual methods
.method public onActivated(Z)V
    .registers 3
    .param p1, "activated"    # Z

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-get9(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 634
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 632
    :cond_e
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get7(Lcom/android/server/display/NightDisplayService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 622
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 618
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 626
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .registers 6
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v0, 0x0

    .line 640
    const-string/jumbo v1, "NightDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTwilightStateChanged: isNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 641
    if-nez p1, :cond_21

    .line 640
    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 639
    return-void

    .line 641
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_12
.end method
