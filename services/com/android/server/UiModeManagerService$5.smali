.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$5;->isUiModeLocked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 238
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "disableCarMode while UI mode is locked"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 241
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 243
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_35

    .line 244
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 245
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2d

    .line 246
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_32

    :cond_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_35

    .line 250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    return-void

    .line 243
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v3

    throw v2
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_35

    .line 249
    :catchall_35
    move-exception v2

    .line 250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    const-string/jumbo v1, ", uid="

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    return-void

    .line 331
    :cond_3a
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 321
    return-void
.end method

.method public enableCarMode(I)V
    .registers 7
    .param p1, "flags"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$5;->isUiModeLocked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 219
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "enableCarMode while UI mode is locked"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 222
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 224
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_34

    .line 225
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 226
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2c

    .line 227
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_31

    :cond_2c
    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_34

    .line 231
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    return-void

    .line 224
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3

    throw v2
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_34

    .line 230
    :catchall_34
    move-exception v2

    .line 231
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    throw v2
.end method

.method public getCurrentModeType()I
    .registers 5

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 258
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_17

    .line 259
    :try_start_9
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v2, Lcom/android/server/UiModeManagerService;->mCurUiMode:I
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    and-int/lit8 v2, v2, 0xf

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_17

    .line 262
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    return v2

    .line 258
    :catchall_14
    move-exception v2

    :try_start_15
    monitor-exit v3

    throw v2
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_17

    .line 261
    :catchall_17
    move-exception v2

    .line 262
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw v2
.end method

.method public getNightMode()I
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-get1(Lcom/android/server/UiModeManagerService;)I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit v1

    return v0

    .line 301
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNightModeLocked()Z
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-get2(Lcom/android/server/UiModeManagerService;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit v1

    return v0

    .line 315
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUiModeLocked()Z
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-get3(Lcom/android/server/UiModeManagerService;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit v1

    return v0

    .line 308
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setNightMode(I)V
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$5;->isNightModeLocked()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 269
    const-string/jumbo v3, "android.permission.MODIFY_DAY_NIGHT_MODE"

    .line 268
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    .line 271
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    .line 272
    const-string/jumbo v3, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    .line 271
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 275
    :cond_20
    packed-switch p1, :pswitch_data_78

    .line 281
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :pswitch_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 286
    .local v0, "ident":J
    :try_start_41
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_72

    .line 287
    :try_start_46
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-get1(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq v2, p1, :cond_6a

    .line 288
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 289
    const-string/jumbo v4, "ui_night_mode"

    .line 288
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1}, Lcom/android/server/UiModeManagerService;->-set1(Lcom/android/server/UiModeManagerService;I)I

    .line 291
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_6f

    :cond_6a
    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_72

    .line 295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    return-void

    .line 286
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v3

    throw v2
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_72

    .line 294
    :catchall_72
    move-exception v2

    .line 295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    throw v2

    .line 275
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method
