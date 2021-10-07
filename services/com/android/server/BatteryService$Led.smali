.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 976
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 979
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/BatteryService;->-set10(Lcom/android/server/BatteryService;Z)Z

    .line 983
    const/16 v1, 0x20

    .line 982
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;Z)Z

    .line 987
    const/4 v1, 0x4

    .line 986
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/BatteryService;->-set12(Lcom/android/server/BatteryService;Z)Z

    .line 989
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 990
    const v2, 0x10e0061

    .line 989
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 991
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 992
    const v2, 0x10e0062

    .line 991
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 997
    const/16 v1, 0x10

    .line 996
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->doLightsSupport(I)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/BatteryService;->-set14(Lcom/android/server/BatteryService;Z)Z

    .line 974
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 1005
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1006
    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateLightsLocked: mBatteryProps is null; skipping"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void

    .line 1010
    :cond_15
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 1011
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 1012
    .local v1, "status":I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get21(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_72

    move v2, v0

    :goto_30
    invoke-static {v3, v2}, Lcom/android/server/BatteryService;->-set13(Lcom/android/server/BatteryService;I)I

    .line 1014
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get11(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1017
    :cond_4b
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get15(Lcom/android/server/BatteryService;)I

    move-result v2

    if-gt v0, v2, :cond_9a

    .line 1018
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 1019
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get17(Lcom/android/server/BatteryService;)Z

    move-result v4

    .line 1018
    invoke-virtual {v2, v3, v4}, Lcom/android/server/lights/Light;->setModes(IZ)V

    .line 1020
    if-ne v1, v5, :cond_7b

    .line 1022
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 1003
    :goto_71
    return-void

    .line 1013
    :cond_72
    const/16 v2, 0xff

    goto :goto_30

    .line 1016
    :cond_75
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_71

    .line 1023
    :cond_7b
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get12(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 1025
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 1026
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1025
    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_71

    .line 1029
    :cond_94
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_71

    .line 1031
    :cond_9a
    if-eq v1, v5, :cond_9e

    .line 1032
    if-ne v1, v6, :cond_dd

    .line 1033
    :cond_9e
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 1034
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get17(Lcom/android/server/BatteryService;)Z

    move-result v4

    .line 1033
    invoke-virtual {v2, v3, v4}, Lcom/android/server/lights/Light;->setModes(IZ)V

    .line 1035
    if-eq v1, v6, :cond_b5

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_d1

    .line 1036
    :cond_b5
    const/16 v2, 0x64

    if-ne v0, v2, :cond_c5

    .line 1038
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_71

    .line 1041
    :cond_c5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get3(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_71

    .line 1045
    :cond_d1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_71

    .line 1049
    :cond_dd
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_71
.end method
