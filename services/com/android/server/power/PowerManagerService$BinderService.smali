.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 3614
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BinderService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method private wakeUp(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "checkProximity"    # Z

    .prologue
    .line 3833
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-lez v1, :cond_11

    .line 3834
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "event time must not be in the future"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3837
    :cond_11
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 3838
    const-string/jumbo v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    .line 3837
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3841
    .local v5, "uid":I
    new-instance v0, Lcom/android/server/power/PowerManagerService$BinderService$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService$1;-><init>(Lcom/android/server/power/PowerManagerService$BinderService;JLjava/lang/String;ILjava/lang/String;)V

    .line 3852
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz p5, :cond_33

    .line 3853
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerService;->-wrap27(Lcom/android/server/power/PowerManagerService;Ljava/lang/Runnable;)V

    .line 3832
    :goto_32
    return-void

    .line 3855
    :cond_33
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_32
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 21
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 3637
    if-nez p1, :cond_b

    .line 3638
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3640
    :cond_b
    if-nez p4, :cond_16

    .line 3641
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "packageName must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3643
    :cond_16
    invoke-static/range {p2 .. p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 3645
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.WAKE_LOCK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_37

    .line 3647
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3648
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 3647
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    :cond_37
    if-eqz p5, :cond_96

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-eqz v2, :cond_96

    .line 3651
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3652
    const-string/jumbo v3, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v4, 0x0

    .line 3651
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3657
    .end local p5    # "ws":Landroid/os/WorkSource;
    :goto_4c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3658
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 3661
    .local v10, "pid":I
    :try_start_54
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    if-eqz v2, :cond_9a

    .line 3662
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    const/16 v3, 0x28

    move-object/from16 v0, p4

    invoke-interface {v2, v3, v9, v0}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9a

    .line 3664
    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquireWakeLock: ignoring request from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    const/16 v3, 0x28

    move-object/from16 v0, p4

    invoke-interface {v2, v3, v9, v0}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_95} :catch_99

    .line 3668
    return-void

    .line 3654
    .end local v9    # "uid":I
    .end local v10    # "pid":I
    .restart local p5    # "ws":Landroid/os/WorkSource;
    :cond_96
    const/16 p5, 0x0

    .local p5, "ws":Landroid/os/WorkSource;
    goto :goto_4c

    .line 3670
    .end local p5    # "ws":Landroid/os/WorkSource;
    .restart local v9    # "uid":I
    .restart local v10    # "pid":I
    :catch_99
    move-exception v11

    .line 3673
    :cond_9a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3675
    .local v12, "ident":J
    :try_start_9e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v10}, Lcom/android/server/power/PowerManagerService;->-wrap8(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_ae
    .catchall {:try_start_9e .. :try_end_ae} :catchall_b2

    .line 3677
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3636
    return-void

    .line 3676
    :catchall_b2
    move-exception v2

    .line 3677
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3676
    throw v2
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 3618
    if-gez p5, :cond_6

    .line 3619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 3621
    :cond_6
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p5}, Landroid/os/WorkSource;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 3617
    return-void
.end method

.method public boostScreenBrightness(J)V
    .registers 10
    .param p1, "eventTime"    # J

    .prologue
    .line 4124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_11

    .line 4125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4128
    :cond_11
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 4129
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    .line 4128
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4132
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4134
    .local v0, "ident":J
    :try_start_26
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->-wrap9(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2f

    .line 4136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4123
    return-void

    .line 4135
    :catchall_2f
    move-exception v3

    .line 4136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4135
    throw v3
.end method

.method public cpuBoost(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get15(Lcom/android/server/power/PowerManagerService;)Lcyanogenmod/power/PerformanceManagerInternal;

    move-result-object v0

    invoke-interface {v0, p1}, Lcyanogenmod/power/PerformanceManagerInternal;->cpuBoost(I)V

    .line 4151
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4013
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4017
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap12(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 4019
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4012
    return-void

    .line 4018
    :catchall_1a
    move-exception v2

    .line 4019
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4018
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4157
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3a

    .line 4159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4160
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 4159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4161
    const-string/jumbo v3, ", uid="

    .line 4159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4162
    return-void

    .line 4165
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4167
    .local v0, "ident":J
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p2}, Lcom/android/server/power/PowerManagerService;->-wrap13(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_47

    .line 4169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4156
    return-void

    .line 4168
    :catchall_47
    move-exception v2

    .line 4169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4168
    throw v2
.end method

.method public getSeenWakeLocks()Ljava/lang/String;
    .registers 6

    .prologue
    .line 4186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4187
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get17(Lcom/android/server/power/PowerManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4188
    .local v1, "nextWakeLock":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 4189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4190
    .local v2, "wakeLockTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 4192
    .end local v2    # "wakeLockTag":Ljava/lang/String;
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_42

    .line 4193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 4195
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public goToSleep(JII)V
    .registers 16
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 3862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3865
    :cond_11
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3866
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    .line 3865
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3869
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3871
    .local v8, "ident":J
    :try_start_26
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap14(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_32

    .line 3873
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3860
    return-void

    .line 3872
    :catchall_32
    move-exception v0

    .line 3873
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3872
    throw v0
.end method

.method public isDeviceIdleMode()Z
    .registers 4

    .prologue
    .line 3929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3931
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 3933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3931
    return v2

    .line 3932
    :catchall_e
    move-exception v2

    .line 3933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3932
    throw v2
.end method

.method public isInteractive()Z
    .registers 4

    .prologue
    .line 3897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3899
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap1(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 3901
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3899
    return v2

    .line 3900
    :catchall_e
    move-exception v2

    .line 3901
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3900
    throw v2
.end method

.method public isLightDeviceIdleMode()Z
    .registers 4

    .prologue
    .line 3939
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3941
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isLightDeviceIdleModeInternal()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 3943
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3941
    return v2

    .line 3942
    :catchall_e
    move-exception v2

    .line 3943
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3942
    throw v2
.end method

.method public isPowerSaveMode()Z
    .registers 4

    .prologue
    .line 3907
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3909
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap2(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 3911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3909
    return v2

    .line 3910
    :catchall_e
    move-exception v2

    .line 3911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3910
    throw v2
.end method

.method public isScreenBrightnessBoosted()Z
    .registers 4

    .prologue
    .line 4142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4144
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap3(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 4146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4144
    return v2

    .line 4145
    :catchall_e
    move-exception v2

    .line 4146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4145
    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 3737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3739
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap4(Lcom/android/server/power/PowerManagerService;I)Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    .line 3741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3739
    return v2

    .line 3740
    :catchall_e
    move-exception v2

    .line 3741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3740
    throw v2
.end method

.method public nap(J)V
    .registers 10
    .param p1, "eventTime"    # J

    .prologue
    .line 3879
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_11

    .line 3880
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3883
    :cond_11
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 3884
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    .line 3883
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3887
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3889
    .local v0, "ident":J
    :try_start_26
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->-wrap21(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2f

    .line 3891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3878
    return-void

    .line 3890
    :catchall_2f
    move-exception v3

    .line 3891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3890
    throw v3
.end method

.method public powerHint(II)V
    .registers 6
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 3626
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get18(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3628
    return-void

    .line 3630
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3631
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap25(Lcom/android/server/power/PowerManagerService;II)V

    .line 3625
    return-void
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .registers 9
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3956
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3957
    const-string/jumbo v2, "recovery"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3958
    const-string/jumbo v2, "recovery-update"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3957
    if-eqz v2, :cond_2b

    .line 3959
    :cond_1f
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.RECOVERY"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3964
    .local v0, "ident":J
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-wrap39(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_39

    .line 3966
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3955
    return-void

    .line 3965
    :catchall_39
    move-exception v2

    .line 3966
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3965
    throw v2
.end method

.method public rebootSafeMode(ZZ)V
    .registers 8
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .prologue
    .line 3978
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3982
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3983
    const-string/jumbo v3, "safemode"

    .line 3982
    const/4 v4, 0x2

    invoke-static {v2, v4, p1, v3, p2}, Lcom/android/server/power/PowerManagerService;->-wrap39(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    .line 3985
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3977
    return-void

    .line 3984
    :catchall_1e
    move-exception v2

    .line 3985
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3984
    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3683
    if-nez p1, :cond_c

    .line 3684
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3687
    :cond_c
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3691
    .local v0, "ident":J
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap26(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    .line 3693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3682
    return-void

    .line 3692
    :catchall_25
    move-exception v2

    .line 3693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3692
    throw v2
.end method

.method public setAttentionLight(ZI)V
    .registers 8
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    .line 4111
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 4112
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 4111
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4116
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap29(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 4118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4110
    return-void

    .line 4117
    :catchall_1a
    move-exception v2

    .line 4118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4117
    throw v2
.end method

.method public setKeyboardLight(ZI)V
    .registers 5
    .param p1, "on"    # Z
    .param p2, "key"    # I

    .prologue
    const v1, 0xffffff

    .line 3805
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1c

    .line 3806
    if-eqz p1, :cond_12

    .line 3807
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get1(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 3804
    :cond_11
    :goto_11
    return-void

    .line 3809
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get1(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_11

    .line 3810
    :cond_1c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_11

    .line 3811
    if-eqz p1, :cond_2b

    .line 3812
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_11

    .line 3814
    :cond_2b
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_11
.end method

.method public setKeyboardVisibility(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3788
    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get10(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eq v0, p1, :cond_35

    .line 3789
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-set2(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3790
    if-nez p1, :cond_20

    .line 3792
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->setKeyboardLight(ZI)V

    .line 3793
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->setKeyboardLight(ZI)V

    .line 3795
    :cond_20
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_3a

    .line 3796
    :try_start_27
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3797
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_37

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_3a

    :cond_35
    monitor-exit v1

    .line 3783
    return-void

    .line 3795
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v2

    throw v0
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_3a

    .line 3784
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPowerSaveMode(Z)Z
    .registers 7
    .param p1, "mode"    # Z

    .prologue
    .line 3917
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3918
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 3917
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3921
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap5(Lcom/android/server/power/PowerManagerService;Z)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    move-result v2

    .line 3923
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3921
    return v2

    .line 3922
    :catchall_1b
    move-exception v2

    .line 3923
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3922
    throw v2
.end method

.method public setStayOnSetting(I)V
    .registers 8
    .param p1, "val"    # I

    .prologue
    .line 4039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4041
    .local v2, "uid":I
    if-eqz v2, :cond_1e

    .line 4042
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 4043
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 4042
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4044
    return-void

    .line 4048
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4050
    .local v0, "ident":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 4052
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4038
    return-void

    .line 4051
    :catchall_2b
    move-exception v3

    .line 4052
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4051
    throw v3
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .registers 7
    .param p1, "adj"    # F

    .prologue
    .line 4095
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 4096
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 4095
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4098
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4100
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap35(Lcom/android/server/power/PowerManagerService;F)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 4102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4094
    return-void

    .line 4101
    :catchall_1a
    move-exception v2

    .line 4102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4101
    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .registers 7
    .param p1, "brightness"    # I

    .prologue
    .line 4070
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 4071
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 4070
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4075
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap36(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 4077
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4069
    return-void

    .line 4076
    :catchall_1a
    move-exception v2

    .line 4077
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4076
    throw v2
.end method

.method public shutdown(ZLjava/lang/String;Z)V
    .registers 9
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .prologue
    .line 3997
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4001
    .local v0, "ident":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-wrap39(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 4003
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3996
    return-void

    .line 4002
    :catchall_1b
    move-exception v2

    .line 4003
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4002
    throw v2
.end method

.method public updateBlockedUids(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4179
    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get19(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/QCNsrmPowerExtension;

    move-result-object v0

    .line 4180
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 4179
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/power/QCNsrmPowerExtension;->processPmsBlockedUid(IZLjava/util/ArrayList;)Z
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    monitor-exit v1

    .line 4177
    return-void

    .line 4178
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .registers 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I

    .prologue
    const/4 v3, 0x0

    .line 3699
    const/4 v1, 0x0

    .line 3701
    .local v1, "ws":Landroid/os/WorkSource;
    if-eqz p2, :cond_15

    .line 3702
    new-instance v1, Landroid/os/WorkSource;

    .end local v1    # "ws":Landroid/os/WorkSource;
    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 3705
    .local v1, "ws":Landroid/os/WorkSource;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p2

    if-ge v0, v2, :cond_15

    .line 3706
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->add(I)Z

    .line 3705
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3709
    .end local v0    # "i":I
    .end local v1    # "ws":Landroid/os/WorkSource;
    :cond_15
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 3698
    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3714
    if-nez p1, :cond_c

    .line 3715
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "lock must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3718
    :cond_c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "android.permission.WAKE_LOCK"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 3720
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 3721
    const-string/jumbo v4, "android.permission.UPDATE_DEVICE_STATS"

    .line 3720
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3726
    .end local p2    # "ws":Landroid/os/WorkSource;
    :goto_2c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3727
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3729
    .local v2, "ident":J
    :try_start_34
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->-wrap40(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3f

    .line 3731
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3713
    return-void

    .line 3723
    .end local v0    # "callingUid":I
    .end local v2    # "ident":J
    .restart local p2    # "ws":Landroid/os/WorkSource;
    :cond_3d
    const/4 p2, 0x0

    .local p2, "ws":Landroid/os/WorkSource;
    goto :goto_2c

    .line 3730
    .end local p2    # "ws":Landroid/os/WorkSource;
    .restart local v0    # "callingUid":I
    .restart local v2    # "ident":J
    :catchall_3f
    move-exception v1

    .line 3731
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3730
    throw v1
.end method

.method public userActivity(JII)V
    .registers 18
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3748
    .local v10, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6e

    .line 3750
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3751
    const-string/jumbo v1, "android.permission.USER_ACTIVITY"

    .line 3750
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6e

    .line 3756
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3757
    :try_start_29
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get11(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v0, v10, v2

    if-ltz v0, :cond_69

    .line 3758
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, v10, v11}, Lcom/android/server/power/PowerManagerService;->-set3(Lcom/android/server/power/PowerManagerService;J)J

    .line 3759
    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3762
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3759
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3763
    const-string/jumbo v3, " uid="

    .line 3759
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3763
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3759
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_29 .. :try_end_69} :catchall_6b

    :cond_69
    monitor-exit v1

    .line 3766
    return-void

    .line 3756
    :catchall_6b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3769
    :cond_6e
    cmp-long v0, p1, v10

    if-lez v0, :cond_7b

    .line 3770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3773
    :cond_7b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3774
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3776
    .local v8, "ident":J
    :try_start_83
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap41(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_91

    .line 3778
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3746
    return-void

    .line 3777
    :catchall_91
    move-exception v0

    .line 3778
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3777
    throw v0
.end method

.method public wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3820
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 3819
    return-void
.end method

.method public wakeUpWithProximityCheck(JLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3825
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 3824
    return-void
.end method
