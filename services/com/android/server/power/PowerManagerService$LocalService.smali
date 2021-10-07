.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 4220
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public getFeature(I)I
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 4335
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-wrap7(I)I

    move-result v0

    return v0
.end method

.method public getLowPowerModeEnabled()Z
    .registers 3

    .prologue
    .line 4281
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4282
    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 4281
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public powerHint(II)V
    .registers 4
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap25(Lcom/android/server/power/PowerManagerService;II)V

    .line 4324
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .prologue
    .line 4288
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4289
    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get14(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 4287
    return-void

    .line 4288
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .registers 7
    .param p1, "screenBrightness"    # I

    .prologue
    .line 4232
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4236
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap30(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 4238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4231
    return-void

    .line 4237
    :catchall_1a
    move-exception v2

    .line 4238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4237
    throw v2
.end method

.method public setDeviceIdleMode(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 4295
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .registers 3
    .param p1, "appids"    # [I

    .prologue
    .line 4310
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 4309
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .registers 3
    .param p1, "appids"    # [I

    .prologue
    .line 4305
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 4304
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .registers 4
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 4245
    packed-switch p1, :pswitch_data_12

    .line 4254
    const/4 p1, 0x0

    .line 4257
    :pswitch_4
    const/4 v0, -0x1

    if-lt p2, v0, :cond_b

    .line 4258
    const/16 v0, 0xff

    if-le p2, v0, :cond_c

    .line 4259
    :cond_b
    const/4 p2, -0x1

    .line 4261
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap31(Lcom/android/server/power/PowerManagerService;II)V

    .line 4244
    return-void

    .line 4245
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setFeature(II)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "data"    # I

    .prologue
    .line 4340
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap24(II)V

    .line 4339
    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 4300
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .registers 3
    .param p1, "timeMs"    # I

    .prologue
    .line 4276
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    .line 4275
    return-void
.end method

.method public setPowerSaveMode(Z)Z
    .registers 3
    .param p1, "mode"    # Z

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-wrap5(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result v0

    return v0
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .registers 3
    .param p1, "screenBrightness"    # I

    .prologue
    .line 4223
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    .line 4224
    const/16 v0, 0xff

    if-le p1, v0, :cond_8

    .line 4225
    :cond_7
    const/4 p1, -0x1

    .line 4227
    :cond_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-wrap34(Lcom/android/server/power/PowerManagerService;I)V

    .line 4222
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .registers 4
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 4271
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap37(Lcom/android/server/power/PowerManagerService;J)V

    .line 4270
    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .registers 2

    .prologue
    .line 4266
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap38(Lcom/android/server/power/PowerManagerService;)V

    .line 4265
    return-void
.end method

.method public uidGone(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 4320
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 4319
    return-void
.end method

.method public updateUidProcState(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 4315
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 4314
    return-void
.end method
