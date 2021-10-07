.class final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$BinderService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method

.method private ensureParentalControlsPermission()V
    .registers 3

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 1123
    const-string/jumbo v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    .line 1122
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 1125
    new-instance v0, Ljava/lang/SecurityException;

    .line 1126
    const-string/jumbo v1, "The caller does not have parental controls permission"

    .line 1125
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_18
    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 937
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 937
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_1b

    array-length v1, v0

    if-lez v1, :cond_1b

    .line 940
    aget-object v1, v0, v3

    return-object v1

    .line 942
    :cond_1b
    const-string/jumbo v1, "unknown"

    return-object v1
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 1694
    const/4 v0, 0x0

    return-object v0

    .line 1697
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1698
    .local v6, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1699
    .local v4, "callingUid":I
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1700
    const-string/jumbo v2, "acquireTvInputHardware"

    .line 1699
    invoke-static {v0, v1, v4, p4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v5

    .line 1702
    .local v5, "resolvedUserId":I
    :try_start_26
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_37

    move-result-object v0

    .line 1705
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1702
    return-object v0

    .line 1704
    :catchall_37
    move-exception v0

    .line 1705
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1704
    throw v0
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1090
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "addBlockedRating"

    .line 1090
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1092
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1094
    .local v0, "identity":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_38

    .line 1095
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1096
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    .line 1097
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1096
    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_35

    :try_start_30
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_38

    .line 1100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1088
    return-void

    .line 1094
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v5

    throw v4
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1099
    :catchall_38
    move-exception v4

    .line 1100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    throw v4
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .registers 19
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1822
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 1823
    const-string/jumbo v3, "android.permission.CAPTURE_TV_INPUT"

    .line 1822
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_18

    .line 1825
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1828
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1829
    .local v10, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1830
    .local v6, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1831
    const-string/jumbo v4, "captureFrame"

    .line 1830
    move/from16 v0, p4

    invoke-static {v2, v3, v6, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 1833
    .local v7, "resolvedUserId":I
    const/4 v8, 0x0

    .line 1834
    .local v8, "hardwareInputId":Ljava/lang/String;
    :try_start_30
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_ba

    .line 1835
    :try_start_37
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v13

    .line 1836
    .local v13, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_67

    .line 1837
    const-string/jumbo v2, "TvInputManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "input not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_37 .. :try_end_61} :catchall_b7

    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_ba

    .line 1838
    const/4 v2, 0x0

    .line 1853
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1838
    return v2

    .line 1840
    :cond_67
    :try_start_67
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "sessionState$iterator":Ljava/util/Iterator;
    :cond_73
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1841
    .local v9, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1842
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 1843
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    .line 1844
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    .line 1843
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    :try_end_a0
    .catchall {:try_start_67 .. :try_end_a0} :catchall_b7

    move-result-object v8

    .end local v8    # "hardwareInputId":Ljava/lang/String;
    .end local v9    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_a1
    :try_start_a1
    monitor-exit v3

    .line 1849
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    .line 1850
    if-eqz v8, :cond_bf

    move-object v3, v8

    :goto_ab
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 1849
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    :try_end_b2
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_ba

    move-result v2

    .line 1853
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1849
    return v2

    .line 1834
    .end local v12    # "sessionState$iterator":Ljava/util/Iterator;
    .end local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .restart local v8    # "hardwareInputId":Ljava/lang/String;
    :catchall_b7
    move-exception v2

    :try_start_b8
    monitor-exit v3

    throw v2
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_ba

    .line 1852
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    :catchall_ba
    move-exception v2

    .line 1853
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1852
    throw v2

    .restart local v12    # "sessionState$iterator":Ljava/util/Iterator;
    .restart local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_bf
    move-object v3, p1

    .line 1850
    goto :goto_ab
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I

    .prologue
    .line 1455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1456
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1457
    const-string/jumbo v7, "createOverlayView"

    .line 1456
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1458
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1460
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1462
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1469
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1454
    return-void

    .line 1464
    :catch_2a
    move-exception v1

    .line 1465
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in createOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1460
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1468
    :catchall_38
    move-exception v5

    .line 1469
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    throw v5
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    .registers 26
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "isRecordingSession"    # Z
    .param p4, "seq"    # I
    .param p5, "userId"    # I

    .prologue
    .line 1133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1134
    .local v10, "callingUid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1135
    const-string/jumbo v6, "createSession"

    .line 1134
    move/from16 v0, p5

    invoke-static {v3, v5, v10, v0, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v11

    .line 1136
    .local v11, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1138
    .local v14, "identity":J
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_125

    .line 1139
    :try_start_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    move/from16 v0, p5

    if-eq v0, v3, :cond_30

    if-eqz p3, :cond_76

    .line 1146
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v18

    .line 1147
    .local v18, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1148
    .local v16, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v16, :cond_8a

    .line 1149
    const-string/jumbo v3, "TvInputManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find input state for inputId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_71
    .catchall {:try_start_22 .. :try_end_71} :catchall_122

    :try_start_71
    monitor-exit v19
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_125

    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    return-void

    .line 1143
    .end local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_76
    :try_start_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_122

    :try_start_85
    monitor-exit v19
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_125

    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1144
    return-void

    .line 1153
    .restart local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .restart local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_8a
    :try_start_8a
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v13

    .line 1154
    .local v13, "info":Landroid/media/tv/TvInputInfo;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1155
    .local v17, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v17, :cond_bb

    .line 1156
    new-instance v17, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .end local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5, v11, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState;)V

    .line 1157
    .restart local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_bb
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap17(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_d0
    .catchall {:try_start_8a .. :try_end_d0} :catchall_122

    :try_start_d0
    monitor-exit v19
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_125

    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1162
    return-void

    .line 1166
    :cond_d5
    :try_start_d5
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 1167
    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1168
    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1167
    const/4 v12, 0x0

    move/from16 v7, p3

    move-object/from16 v8, p1

    move/from16 v9, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 1172
    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-eqz v3, :cond_116

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v5

    invoke-static {v3, v5, v4, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap12(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    :try_end_111
    .catchall {:try_start_d5 .. :try_end_111} :catchall_122

    :goto_111
    :try_start_111
    monitor-exit v19
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_125

    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1132
    return-void

    .line 1181
    :cond_116
    :try_start_116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v13}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/android/server/tv/TvInputManagerService;->-wrap21(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    :try_end_121
    .catchall {:try_start_116 .. :try_end_121} :catchall_122

    goto :goto_111

    .line 1138
    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v13    # "info":Landroid/media/tv/TvInputInfo;
    .end local v16    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v17    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v18    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_122
    move-exception v3

    :try_start_123
    monitor-exit v19

    throw v3
    :try_end_125
    .catchall {:try_start_123 .. :try_end_125} :catchall_125

    .line 1184
    :catchall_125
    move-exception v3

    .line 1185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1184
    throw v3
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 16
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I

    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1276
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1277
    const-string/jumbo v8, "dispatchSurfaceChanged"

    .line 1276
    invoke-static {v6, v7, v0, p5, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1278
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1280
    .local v2, "identity":J
    :try_start_15
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_53

    .line 1282
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1284
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 1286
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 1287
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_40} :catch_45
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_40} :catch_45
    .catchall {:try_start_1c .. :try_end_40} :catchall_50

    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_40
    :goto_40
    :try_start_40
    monitor-exit v7
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_53

    .line 1295
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    return-void

    .line 1290
    :catch_45
    move-exception v1

    .line 1291
    .local v1, "e":Ljava/lang/Exception;
    :try_start_46
    const-string/jumbo v6, "TvInputManagerService"

    const-string/jumbo v8, "error in dispatchSurfaceChanged"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_50

    goto :goto_40

    .line 1280
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_50
    move-exception v6

    :try_start_51
    monitor-exit v7

    throw v6
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_53

    .line 1294
    :catchall_53
    move-exception v6

    .line 1295
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1294
    throw v6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 29
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1887
    new-instance v15, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v22, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1888
    .local v15, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v22

    const-string/jumbo v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_4c

    .line 1890
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Permission Denial: can\'t dump TvInputManager from pid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1891
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    .line 1890
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1891
    const-string/jumbo v23, ", uid="

    .line 1890
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 1890
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    return-void

    .line 1895
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 1896
    :try_start_57
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "User Ids (Current user: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, "):"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1898
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_bf

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 1900
    .local v20, "userId":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1898
    add-int/lit8 v12, v12, 0x1

    goto :goto_91

    .line 1902
    .end local v20    # "userId":I
    :cond_bf
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1904
    const/4 v12, 0x0

    :goto_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_5d1

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get4(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 1906
    .restart local v20    # "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v21

    .line 1907
    .local v21, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UserState ("

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, "):"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1910
    const-string/jumbo v22, "inputMap: inputId -> TvInputState"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1912
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_139
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_17c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1913
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_178
    .catchall {:try_start_57 .. :try_end_178} :catchall_179

    goto :goto_139

    .line 1895
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v12    # "i":I
    .end local v20    # "userId":I
    .end local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_179
    move-exception v22

    monitor-exit v23

    throw v22

    .line 1915
    .restart local v11    # "entry$iterator":Ljava/util/Iterator;
    .restart local v12    # "i":I
    .restart local v20    # "userId":I
    .restart local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_17c
    :try_start_17c
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1917
    const-string/jumbo v22, "packageSet:"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1919
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "packageName$iterator":Ljava/util/Iterator;
    :goto_192
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1a2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1920
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v15, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_192

    .line 1922
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_1a2
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1924
    const-string/jumbo v22, "clientStateMap: ITvInputClient -> ClientState"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1927
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    .line 1926
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1bc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_28f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1928
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 1929
    .local v6, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1933
    const-string/jumbo v22, "sessionTokens:"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1935
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "token$iterator":Ljava/util/Iterator;
    :goto_20f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_23d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .line 1936
    .local v18, "token":Landroid/os/IBinder;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20f

    .line 1938
    .end local v18    # "token":Landroid/os/IBinder;
    :cond_23d
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1940
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "clientTokens: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get0(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "userId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get2(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_1bc

    .line 1945
    .end local v6    # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v19    # "token$iterator":Ljava/util/Iterator;
    :cond_28f
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1947
    const-string/jumbo v22, "serviceStateMap: ComponentName -> ServiceState"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1950
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    .line 1949
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2a9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3c8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1951
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1952
    .local v16, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1956
    const-string/jumbo v22, "sessionTokens:"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1958
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get8(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "token$iterator":Ljava/util/Iterator;
    :goto_2fe
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_32c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/IBinder;

    .line 1959
    .restart local v18    # "token":Landroid/os/IBinder;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2fe

    .line 1961
    .end local v18    # "token":Landroid/os/IBinder;
    :cond_32c
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1963
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "service: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "callback: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get1(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1965
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "bound: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get0(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "reconnecting: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get6(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_2a9

    .line 1970
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v16    # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v19    # "token$iterator":Ljava/util/Iterator;
    :cond_3c8
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1972
    const-string/jumbo v22, "sessionStateMap: ITvInputSession -> SessionState"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1975
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    .line 1974
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3e2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_576

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1976
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1977
    .local v17, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ": "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1980
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "inputId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "client: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "seq: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1983
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "callingUid: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get0(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1984
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "userId: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get10(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "sessionToken: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1986
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "session: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1987
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "logUri: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1988
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "hardwareSessionToken: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_3e2

    .line 1991
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v17    # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_576
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1993
    const-string/jumbo v22, "callbackSet:"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1995
    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "callback$iterator":Ljava/util/Iterator;
    :goto_58c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5a2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/ITvInputManagerCallback;

    .line 1996
    .local v4, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_58c

    .line 1998
    .end local v4    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    :cond_5a2
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2000
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mainSessionToken: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v21 .. v21}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_5cd
    .catchall {:try_start_17c .. :try_end_5cd} :catchall_179

    .line 1904
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_c3

    .end local v5    # "callback$iterator":Ljava/util/Iterator;
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v14    # "packageName$iterator":Ljava/util/Iterator;
    .end local v20    # "userId":I
    .end local v21    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_5d1
    monitor-exit v23

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1886
    return-void
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1800
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 1801
    const-string/jumbo v5, "android.permission.CAPTURE_TV_INPUT"

    .line 1800
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_18

    .line 1803
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1806
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1807
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1808
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1809
    const-string/jumbo v6, "getAvailableTvStreamConfigList"

    .line 1808
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1811
    .local v1, "resolvedUserId":I
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_3b

    move-result-object v4

    .line 1814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1811
    return-object v4

    .line 1813
    :catchall_3b
    move-exception v4

    .line 1814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1813
    throw v4
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1070
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string/jumbo v9, "getBlockedRatings"

    .line 1069
    invoke-static {v6, v7, v8, p1, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1071
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1073
    .local v0, "identity":J
    :try_start_15
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_47

    .line 1074
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1075
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v3, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    move-result-object v8

    .line 1076
    const/4 v6, 0x0

    array-length v9, v8

    :goto_31
    if-ge v6, v9, :cond_3f

    aget-object v2, v8, v6

    .line 1078
    .local v2, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v2}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_44

    .line 1076
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .end local v2    # "rating":Landroid/media/tv/TvContentRating;
    :cond_3f
    :try_start_3f
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_47

    .line 1083
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1080
    return-object v3

    .line 1073
    .end local v3    # "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_44
    move-exception v6

    :try_start_45
    monitor-exit v7

    throw v6
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_47

    .line 1082
    :catchall_47
    move-exception v6

    .line 1083
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1082
    throw v6
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1731
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "android.permission.DVB_DEVICE"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_19

    .line 1733
    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "Requires DVB_DEVICE permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1736
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1738
    .local v6, "identity":J
    :try_start_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    .local v3, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    new-instance v1, Ljava/io/File;

    const-string/jumbo v9, "/dev"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v1, "devDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    :goto_2f
    if-ge v8, v10, :cond_5e

    aget-object v4, v9, v8

    .line 1741
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->-get6()Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1742
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_5b

    .line 1743
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1744
    .local v0, "adapterId":I
    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1745
    .local v2, "deviceId":I
    new-instance v11, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v11, v0, v2}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    .end local v0    # "adapterId":I
    .end local v2    # "deviceId":I
    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 1748
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_5e
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_61
    .catchall {:try_start_1d .. :try_end_61} :catchall_66

    move-result-object v8

    .line 1750
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1748
    return-object v8

    .line 1749
    .end local v1    # "devDirectory":Ljava/io/File;
    .end local v3    # "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    :catchall_66
    move-exception v8

    .line 1750
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1749
    throw v8
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1675
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_11

    .line 1677
    const/4 v2, 0x0

    return-object v2

    .line 1680
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1682
    .local v0, "identity":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    move-result-object v2

    .line 1684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    return-object v2

    .line 1683
    :catchall_23
    move-exception v2

    .line 1684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1683
    throw v2
.end method

.method public getTvContentRatingSystemList(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 964
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "getTvContentRatingSystemList"

    .line 963
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 965
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 967
    .local v0, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2e

    .line 968
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 969
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2b

    move-result-object v4

    :try_start_26
    monitor-exit v5
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2e

    .line 972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    return-object v4

    .line 967
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v5

    throw v4
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_2e

    .line 971
    :catchall_2e
    move-exception v4

    .line 972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 971
    throw v4
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .registers 13
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 901
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string/jumbo v9, "getTvInputInfo"

    .line 901
    invoke-static {v6, v7, v8, p2, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 903
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 905
    .local v0, "identity":J
    :try_start_16
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_3c

    .line 906
    :try_start_1d
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 907
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_39

    .line 908
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_34

    :goto_2f
    :try_start_2f
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_3c

    .line 911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    return-object v5

    :cond_34
    :try_start_34
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    move-result-object v5

    goto :goto_2f

    .line 905
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_39
    move-exception v5

    :try_start_3a
    monitor-exit v6

    throw v5
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3c

    .line 910
    :catchall_3c
    move-exception v5

    .line 911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    throw v5
.end method

.method public getTvInputList(I)Ljava/util/List;
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const-string/jumbo v10, "getTvInputList"

    .line 882
    invoke-static {v7, v8, v9, p1, v10}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 884
    .local v3, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 886
    .local v0, "identity":J
    :try_start_15
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_4a

    .line 887
    :try_start_1c
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v3}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 888
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .local v2, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "state$iterator":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 890
    .local v4, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get0(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_47

    goto :goto_33

    .line 886
    .end local v2    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .end local v4    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v5    # "state$iterator":Ljava/util/Iterator;
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_47
    move-exception v7

    :try_start_48
    monitor-exit v8

    throw v7
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4a

    .line 894
    :catchall_4a
    move-exception v7

    .line 895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    throw v7

    .restart local v2    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .restart local v5    # "state$iterator":Ljava/util/Iterator;
    .restart local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4f
    :try_start_4f
    monitor-exit v8
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4a

    .line 895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 892
    return-object v2
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .registers 12
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 947
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string/jumbo v8, "getTvInputState"

    .line 947
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 949
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 951
    .local v0, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3c

    .line 952
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 953
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_39

    .line 954
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_34

    const/4 v5, 0x0

    :goto_2f
    :try_start_2f
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_3c

    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    return v5

    :cond_34
    :try_start_34
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-get1(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    move-result v5

    goto :goto_2f

    .line 951
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_39
    move-exception v5

    :try_start_3a
    monitor-exit v6

    throw v5
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_3c

    .line 956
    :catchall_3c
    move-exception v5

    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    throw v5
.end method

.method public isParentalControlsEnabled(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 1022
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "isParentalControlsEnabled"

    .line 1022
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1024
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1026
    .local v0, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_32

    .line 1027
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1028
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2f

    move-result v4

    :try_start_2a
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_32

    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    return v4

    .line 1026
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v5

    throw v4
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_32

    .line 1030
    :catchall_32
    move-exception v4

    .line 1031
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1030
    throw v4
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1053
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "isRatingBlocked"

    .line 1053
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1055
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1057
    .local v0, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_36

    .line 1058
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1059
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    .line 1060
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1059
    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_33

    move-result v4

    :try_start_2e
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_36

    .line 1063
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    return v4

    .line 1057
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v5

    throw v4
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_36

    .line 1062
    :catchall_36
    move-exception v4

    .line 1063
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1062
    throw v4
.end method

.method public isSingleSessionActive(I)Z
    .registers 14
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1859
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1860
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1861
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1862
    const-string/jumbo v8, "isSingleSessionActive"

    .line 1861
    invoke-static {v6, v7, v0, p1, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1864
    .local v1, "resolvedUserId":I
    :try_start_18
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_6e

    .line 1865
    :try_start_1f
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1866
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_6b

    move-result v6

    if-ne v6, v9, :cond_34

    :try_start_2f
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_6e

    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1867
    return v9

    .line 1868
    :cond_34
    :try_start_34
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v6, v11, :cond_66

    .line 1869
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 1870
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1869
    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1872
    .local v4, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_61

    .line 1873
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    :try_end_5e
    .catchall {:try_start_34 .. :try_end_5e} :catchall_6b

    move-result-object v6

    if-eqz v6, :cond_66

    :cond_61
    :try_start_61
    monitor-exit v7
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_6e

    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1874
    return v9

    .end local v4    # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_66
    :try_start_66
    monitor-exit v7
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6e

    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1877
    return v10

    .line 1864
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_6b
    move-exception v6

    :try_start_6c
    monitor-exit v7

    throw v6
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_6e

    .line 1879
    :catchall_6e
    move-exception v6

    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1879
    throw v6
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "info"    # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "device"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 1757
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "android.permission.DVB_DEVICE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_19

    .line 1759
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires DVB_DEVICE permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1762
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1765
    .local v2, "identity":J
    packed-switch p2, :pswitch_data_bc

    .line 1779
    :try_start_20
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid DVB device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_3a

    .line 1792
    :catchall_3a
    move-exception v4

    .line 1793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1792
    throw v4

    .line 1767
    :pswitch_3f
    :try_start_3f
    const-string/jumbo v4, "/dev/dvb%d.demux%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1768
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1767
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_3f .. :try_end_5e} :catchall_3a

    move-result-object v0

    .line 1785
    .local v0, "deviceFileName":Ljava/lang/String;
    :goto_5f
    :try_start_5f
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1786
    if-ne v8, p2, :cond_b2

    .line 1787
    const/high16 v4, 0x30000000

    .line 1785
    :goto_68
    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_6b} :catch_b5
    .catchall {:try_start_5f .. :try_end_6b} :catchall_3a

    move-result-object v4

    .line 1793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1785
    return-object v4

    .line 1771
    .end local v0    # "deviceFileName":Ljava/lang/String;
    :pswitch_70
    :try_start_70
    const-string/jumbo v4, "/dev/dvb%d.dvr%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1772
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1771
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_5f

    .line 1775
    .end local v0    # "deviceFileName":Ljava/lang/String;
    :pswitch_91
    const-string/jumbo v4, "/dev/dvb%d.frontend%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1776
    invoke-virtual {p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1775
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_b0
    .catchall {:try_start_70 .. :try_end_b0} :catchall_3a

    move-result-object v0

    .restart local v0    # "deviceFileName":Ljava/lang/String;
    goto :goto_5f

    .line 1788
    :cond_b2
    const/high16 v4, 0x10000000

    goto :goto_68

    .line 1789
    :catch_b5
    move-exception v1

    .line 1790
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    .line 1793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    return-object v4

    .line 1765
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_70
        :pswitch_91
    .end packed-switch
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 12
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .prologue
    .line 978
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string/jumbo v8, "registerCallback"

    .line 978
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 980
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 982
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_49

    .line 983
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 984
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_46

    .line 986
    :try_start_29
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    .line 995
    const/4 v8, 0x0

    .line 986
    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_3b
    .catchall {:try_start_29 .. :try_end_36} :catchall_46

    :goto_36
    :try_start_36
    monitor-exit v6
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_49

    .line 1001
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    return-void

    .line 996
    :catch_3b
    move-exception v0

    .line 997
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "client process has already died"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_46

    goto :goto_36

    .line 982
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_46
    move-exception v5

    :try_start_47
    monitor-exit v6

    throw v5
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_49

    .line 1000
    :catchall_49
    move-exception v5

    .line 1001
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1000
    throw v5
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    .prologue
    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1476
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1477
    const-string/jumbo v7, "relayoutOverlayView"

    .line 1476
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1478
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1480
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1482
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1489
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1474
    return-void

    .line 1484
    :catch_2a
    move-exception v1

    .line 1485
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in relayoutOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1480
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1488
    :catchall_38
    move-exception v5

    .line 1489
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1488
    throw v5
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1195
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1196
    const-string/jumbo v6, "releaseSession"

    .line 1195
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1197
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1199
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_29

    .line 1200
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->-wrap14(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    :try_start_21
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_29

    .line 1203
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1190
    return-void

    .line 1199
    :catchall_26
    move-exception v4

    :try_start_27
    monitor-exit v5

    throw v4
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_29

    .line 1202
    :catchall_29
    move-exception v4

    .line 1203
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    throw v4
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1712
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get0(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_10

    .line 1714
    return-void

    .line 1717
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1718
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1719
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1720
    const-string/jumbo v6, "releaseTvInputHardware"

    .line 1719
    invoke-static {v4, v5, v0, p3, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1722
    .local v1, "resolvedUserId":I
    :try_start_25
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get3(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_32

    .line 1725
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1711
    return-void

    .line 1724
    :catchall_32
    move-exception v4

    .line 1725
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1724
    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1107
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "removeBlockedRating"

    .line 1107
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1109
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1111
    .local v0, "identity":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_38

    .line 1112
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1113
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    .line 1114
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1113
    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_35

    :try_start_30
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_38

    .line 1117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    return-void

    .line 1111
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v5

    throw v4
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1116
    :catchall_38
    move-exception v4

    .line 1117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1116
    throw v4
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1496
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1497
    const-string/jumbo v7, "removeOverlayView"

    .line 1496
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1498
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1500
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1502
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1509
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1494
    return-void

    .line 1504
    :catch_2a
    move-exception v1

    .line 1505
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in removeOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1500
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1508
    :catchall_38
    move-exception v5

    .line 1509
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1508
    throw v5
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 1413
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1414
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1415
    const-string/jumbo v7, "selectTrack"

    .line 1414
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1416
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1418
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1420
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1427
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1412
    return-void

    .line 1422
    :catch_2a
    move-exception v1

    .line 1423
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in selectTrack"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1418
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1426
    :catchall_38
    move-exception v5

    .line 1427
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1426
    throw v5
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    .line 1434
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1435
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1436
    const-string/jumbo v7, "sendAppPrivateCommand"

    .line 1435
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1437
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1439
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1441
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1433
    return-void

    .line 1443
    :catch_2a
    move-exception v1

    .line 1444
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in appPrivateCommand"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1439
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1447
    :catchall_38
    move-exception v5

    .line 1448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1447
    throw v5
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1394
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1395
    const-string/jumbo v7, "setCaptionEnabled"

    .line 1394
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1396
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1398
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1400
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1392
    return-void

    .line 1402
    :catch_2a
    move-exception v1

    .line 1403
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in setCaptionEnabled"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1398
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1406
    :catchall_38
    move-exception v5

    .line 1407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1406
    throw v5
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1213
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1214
    const-string/jumbo v8, "setMainSession"

    .line 1213
    invoke-static {v6, v7, v0, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1215
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1217
    .local v2, "identity":J
    :try_start_15
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_4e

    .line 1218
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1219
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_4b

    move-result-object v6

    if-ne v6, p1, :cond_2d

    :try_start_28
    monitor-exit v7
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_4e

    .line 1238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1220
    return-void

    .line 1225
    :cond_2d
    :try_start_2d
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    .line 1226
    .local v1, "oldMainSessionToken":Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1230
    if-eqz p1, :cond_3c

    .line 1231
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x1

    invoke-static {v6, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap18(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1233
    :cond_3c
    if-eqz v1, :cond_46

    .line 1234
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-static {v6, v1, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->-wrap18(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_4b

    :cond_46
    :try_start_46
    monitor-exit v7
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4e

    .line 1238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1208
    return-void

    .line 1217
    .end local v1    # "oldMainSessionToken":Landroid/os/IBinder;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_4b
    move-exception v6

    :try_start_4c
    monitor-exit v7

    throw v6
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_4e

    .line 1237
    :catchall_4e
    move-exception v6

    .line 1238
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1237
    throw v6
.end method

.method public setParentalControlsEnabled(ZI)V
    .registers 11
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1038
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1039
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "setParentalControlsEnabled"

    .line 1038
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1040
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1042
    .local v0, "identity":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_34

    .line 1043
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1044
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_31

    :try_start_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_34

    .line 1047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1036
    return-void

    .line 1042
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_31
    move-exception v4

    :try_start_32
    monitor-exit v5

    throw v4
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_34

    .line 1046
    :catchall_34
    move-exception v4

    .line 1047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    throw v4
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    .prologue
    .line 1244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1245
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1246
    const-string/jumbo v8, "setSurface"

    .line 1245
    invoke-static {v6, v7, v0, p3, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1247
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1249
    .local v2, "identity":J
    :try_start_15
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_59

    .line 1251
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1253
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_3b

    .line 1254
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_4b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_31} :catch_4b
    .catchall {:try_start_1c .. :try_end_31} :catchall_56

    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_31
    :try_start_31
    monitor-exit v7
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_59

    .line 1264
    if-eqz p2, :cond_37

    .line 1266
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1268
    :cond_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1243
    return-void

    .line 1256
    .restart local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3b
    :try_start_3b
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    .line 1257
    const/16 v9, 0x3e8

    .line 1256
    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4a} :catch_4b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3b .. :try_end_4a} :catch_4b
    .catchall {:try_start_3b .. :try_end_4a} :catchall_56

    goto :goto_31

    .line 1259
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_4b
    move-exception v1

    .line 1260
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string/jumbo v6, "TvInputManagerService"

    const-string/jumbo v8, "error in setSurface"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_56

    goto :goto_31

    .line 1249
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_56
    move-exception v6

    :try_start_57
    monitor-exit v7

    throw v6
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_59

    .line 1263
    :catchall_59
    move-exception v6

    .line 1264
    if-eqz p2, :cond_5f

    .line 1266
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1268
    :cond_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1263
    throw v6
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .registers 16
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    .prologue
    .line 1301
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1302
    .local v1, "REMOTE_VOLUME_ON":F
    const/4 v0, 0x0

    .line 1303
    .local v0, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1304
    .local v2, "callingUid":I
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1305
    const-string/jumbo v10, "setVolume"

    .line 1304
    invoke-static {v8, v9, v2, p3, v10}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v6

    .line 1306
    .local v6, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1308
    .local v4, "identity":J
    :try_start_18
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5f

    .line 1310
    :try_start_1f
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8, p1, v2, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap5(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v7

    .line 1312
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap2(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 1313
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_4a

    .line 1316
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v10

    .line 1317
    const/16 v11, 0x3e8

    .line 1316
    invoke-static {v8, v10, v11, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v10

    .line 1317
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_4f

    .line 1318
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1316
    :goto_47
    invoke-interface {v10, v8}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4a} :catch_51
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_4a} :catch_51
    .catchall {:try_start_1f .. :try_end_4a} :catchall_5c

    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_5f

    .line 1325
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    return-void

    .line 1318
    .restart local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_4f
    const/4 v8, 0x0

    goto :goto_47

    .line 1320
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_51
    move-exception v3

    .line 1321
    .local v3, "e":Ljava/lang/Exception;
    :try_start_52
    const-string/jumbo v8, "TvInputManagerService"

    const-string/jumbo v10, "error in setVolume"

    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_5c

    goto :goto_4a

    .line 1308
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_5c
    move-exception v8

    :try_start_5d
    monitor-exit v9

    throw v8
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_5f

    .line 1324
    :catchall_5f
    move-exception v8

    .line 1325
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    throw v8
.end method

.method public startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "programUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 1636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1637
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1638
    const-string/jumbo v7, "startRecording"

    .line 1637
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1639
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1641
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1643
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1650
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1635
    return-void

    .line 1645
    :catch_2a
    move-exception v1

    .line 1646
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in startRecording"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1641
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1649
    :catchall_38
    move-exception v5

    .line 1650
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1649
    throw v5
.end method

.method public stopRecording(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1656
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1657
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1658
    const-string/jumbo v7, "stopRecording"

    .line 1657
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1659
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1661
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1663
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->stopRecording()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1669
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1655
    return-void

    .line 1664
    :catch_2a
    move-exception v1

    .line 1665
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in stopRecording"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1661
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1668
    :catchall_38
    move-exception v5

    .line 1669
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1668
    throw v5
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1617
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1618
    const-string/jumbo v7, "timeShiftEnablePositionTracking"

    .line 1617
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1619
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1621
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1623
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1630
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1615
    return-void

    .line 1625
    :catch_2a
    move-exception v1

    .line 1626
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftEnablePositionTracking"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1621
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1629
    :catchall_38
    move-exception v5

    .line 1630
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1629
    throw v5
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1536
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1537
    const-string/jumbo v7, "timeShiftPause"

    .line 1536
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1538
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1540
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1542
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    return-void

    .line 1543
    :catch_2a
    move-exception v1

    .line 1544
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftPause"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1540
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1547
    :catchall_38
    move-exception v5

    .line 1548
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1547
    throw v5
.end method

.method public timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 1515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1516
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1517
    const-string/jumbo v7, "timeShiftPlay"

    .line 1516
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1518
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1520
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1522
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1529
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1514
    return-void

    .line 1524
    :catch_2a
    move-exception v1

    .line 1525
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftPlay"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1520
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1528
    :catchall_38
    move-exception v5

    .line 1529
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1528
    throw v5
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1555
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1556
    const-string/jumbo v7, "timeShiftResume"

    .line 1555
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1557
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1559
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1561
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1568
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    return-void

    .line 1563
    :catch_2a
    move-exception v1

    .line 1564
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftResume"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1559
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1567
    :catchall_38
    move-exception v5

    .line 1568
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1567
    throw v5
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "timeMs"    # J
    .param p4, "userId"    # I

    .prologue
    .line 1574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1575
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1576
    const-string/jumbo v7, "timeShiftSeekTo"

    .line 1575
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1577
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1579
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1581
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1588
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1573
    return-void

    .line 1583
    :catch_2a
    move-exception v1

    .line 1584
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftSeekTo"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1579
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1587
    :catchall_38
    move-exception v5

    .line 1588
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1587
    throw v5
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/media/PlaybackParams;
    .param p3, "userId"    # I

    .prologue
    .line 1595
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1596
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1597
    const-string/jumbo v7, "timeShiftSetPlaybackParams"

    .line 1596
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1598
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1600
    .local v2, "identity":J
    :try_start_15
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1602
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_2a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_2a
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    :goto_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_38

    .line 1609
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1594
    return-void

    .line 1604
    :catch_2a
    move-exception v1

    .line 1605
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in timeShiftSetPlaybackParams"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_25

    .line 1600
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    :try_start_36
    monitor-exit v6

    throw v5
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 1608
    :catchall_38
    move-exception v5

    .line 1609
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1608
    throw v5
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 19
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    .line 1331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1332
    .local v3, "callingUid":I
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1333
    const-string/jumbo v12, "tune"

    .line 1332
    move/from16 v0, p4

    invoke-static {v10, v11, v3, v0, v12}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v5

    .line 1334
    .local v5, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1336
    .local v6, "identity":J
    :try_start_17
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_9a

    .line 1338
    :try_start_1e
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10, p1, v3, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1340
    invoke-static/range {p2 .. p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_8c
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1e .. :try_end_2e} :catch_8c
    .catchall {:try_start_1e .. :try_end_2e} :catchall_97

    move-result v10

    if-eqz v10, :cond_36

    :try_start_31
    monitor-exit v11
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_9a

    .line 1365
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1342
    return-void

    .line 1345
    :cond_36
    :try_start_36
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v9

    .line 1346
    .local v9, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1347
    .local v8, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_49} :catch_8c
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_36 .. :try_end_49} :catch_8c
    .catchall {:try_start_36 .. :try_end_49} :catchall_97

    move-result v10

    if-eqz v10, :cond_51

    :try_start_4c
    monitor-exit v11
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_9a

    .line 1365
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1348
    return-void

    .line 1352
    :cond_51
    :try_start_51
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1353
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1355
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1356
    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1357
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1358
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->-get5(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_87} :catch_8c
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_51 .. :try_end_87} :catch_8c
    .catchall {:try_start_51 .. :try_end_87} :catchall_97

    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v9    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :goto_87
    :try_start_87
    monitor-exit v11
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_9a

    .line 1365
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    return-void

    .line 1360
    :catch_8c
    move-exception v4

    .line 1361
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8d
    const-string/jumbo v10, "TvInputManagerService"

    const-string/jumbo v12, "error in tune"

    invoke-static {v10, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_97

    goto :goto_87

    .line 1336
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_97
    move-exception v10

    :try_start_98
    monitor-exit v11

    throw v10
    :try_end_9a
    .catchall {:try_start_98 .. :try_end_9a} :catchall_9a

    .line 1364
    :catchall_9a
    move-exception v10

    .line 1365
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    throw v10
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "unblockedRating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1372
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1374
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1375
    const-string/jumbo v7, "unblockContent"

    .line 1374
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1376
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1378
    .local v2, "identity":J
    :try_start_18
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3b

    .line 1380
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap1(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2d
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_28} :catch_2d
    .catchall {:try_start_1f .. :try_end_28} :catchall_38

    :goto_28
    :try_start_28
    monitor-exit v6
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3b

    .line 1387
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1371
    return-void

    .line 1382
    :catch_2d
    move-exception v1

    .line 1383
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v7, "error in unblockContent"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_38

    goto :goto_28

    .line 1378
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_38
    move-exception v5

    :try_start_39
    monitor-exit v6

    throw v5
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_3b

    .line 1386
    :catchall_3b
    move-exception v5

    .line 1387
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1386
    throw v5
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 11
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .prologue
    .line 1007
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v7, "unregisterCallback"

    .line 1007
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 1009
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1011
    .local v0, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_31

    .line 1012
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1013
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2e

    :try_start_29
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_31

    .line 1016
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1006
    return-void

    .line 1011
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2e
    move-exception v4

    :try_start_2f
    monitor-exit v5

    throw v4
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_31

    .line 1015
    :catchall_31
    move-exception v4

    .line 1016
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1015
    throw v4
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .registers 13
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;
    .param p2, "userId"    # I

    .prologue
    .line 916
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v1, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 917
    .local v1, "inputInfoPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "callingPackageName":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 919
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "calling package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 920
    const-string/jumbo v8, " is not allowed to change TvInputInfo for "

    .line 919
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 923
    :cond_35
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string/jumbo v9, "updateTvInputInfo"

    .line 923
    invoke-static {v6, v7, v8, p2, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap7(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 925
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 927
    .local v2, "identity":J
    :try_start_4a
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_64

    .line 928
    :try_start_51
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 929
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5, p1}, Lcom/android/server/tv/TvInputManagerService;->-wrap22(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_61

    :try_start_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_64

    .line 932
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    return-void

    .line 927
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_61
    move-exception v6

    :try_start_62
    monitor-exit v7

    throw v6
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_64

    .line 931
    :catchall_64
    move-exception v6

    .line 932
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    throw v6
.end method
