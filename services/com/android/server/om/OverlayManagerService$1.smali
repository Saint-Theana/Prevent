.class Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method private enforceChangeConfigurationPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 580
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 581
    const-string/jumbo v2, "oms.permission.MODIFY_OVERLAYS"

    .line 580
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    .line 582
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_25

    if-eqz v0, :cond_25

    .line 583
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 584
    const-string/jumbo v2, "android.permission.CHANGE_CONFIGURATION"

    .line 583
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_25
    return-void
.end method

.method private enforceDumpPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 598
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_16

    if-eqz v0, :cond_16

    .line 599
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_16
    return-void
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .registers 10
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 562
    const-string/jumbo v1, "oms.permission.MODIFY_OVERLAYS"

    .line 561
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 563
    return p1

    .line 565
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 566
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    .line 565
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "argv"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 541
    const-string/jumbo v1, "dump"

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 543
    array-length v1, p3

    if-lez v1, :cond_2e

    const-string/jumbo v1, "--verbose"

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 545
    :goto_13
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 546
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onDump(Ljava/io/PrintWriter;)V

    .line 547
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->dump(Ljava/io/PrintWriter;Z)V
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_30

    monitor-exit v2

    .line 540
    return-void

    .line 543
    :cond_2e
    const/4 v0, 0x0

    .local v0, "verbose":Z
    goto :goto_13

    .line 545
    .end local v0    # "verbose":Z
    :catchall_30
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 427
    const-string/jumbo v0, "getAllOverlays"

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 429
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 430
    :try_start_e
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onGetOverlaysForUser(I)Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1a

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 429
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 450
    const-string/jumbo v0, "getOverlayInfo"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 451
    if-nez p1, :cond_b

    .line 452
    return-object v1

    .line 455
    :cond_b
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 456
    :try_start_12
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onGetOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1e

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 455
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 437
    const-string/jumbo v0, "getOverlayInfosForTarget"

    invoke-direct {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 438
    if-nez p1, :cond_e

    .line 439
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 442
    :cond_e
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 443
    :try_start_15
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onGetOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_21

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 442
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public refresh(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 606
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 607
    :try_start_7
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSwitchUser(I)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1d

    move-result-object v1

    .local v1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-exit v3

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 610
    .local v0, "targeted":Ljava/util/List;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2, p1, v0}, Lcom/android/server/om/OverlayManagerService;->-wrap3(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V

    .line 604
    return-void

    .line 606
    .end local v0    # "targeted":Ljava/util/List;
    .end local v1    # "targets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setEnabled(Ljava/lang/String;ZIZ)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .param p4, "shouldWait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 463
    const-string/jumbo v2, "setEnabled"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeConfigurationPermission(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v2, "setEnabled"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 465
    if-nez p1, :cond_11

    .line 466
    const/4 v2, 0x0

    return v2

    .line 469
    :cond_11
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get0(Lcom/android/server/om/OverlayManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ThemeService;->returnToDefaultTheme(Landroid/content/Context;)V

    .line 471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 473
    .local v0, "ident":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_37

    .line 474
    :try_start_25
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSetEnabled(Ljava/lang/String;ZIZ)Z
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_34

    move-result v2

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_37

    .line 477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 474
    return v2

    .line 473
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v3

    throw v2
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_37

    .line 476
    :catchall_37
    move-exception v2

    .line 477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    throw v2
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    const-string/jumbo v2, "setHighestPriority"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeConfigurationPermission(Ljava/lang/String;)V

    .line 504
    const-string/jumbo v2, "setHighestPriority"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 505
    if-nez p1, :cond_11

    .line 506
    const/4 v2, 0x0

    return v2

    .line 509
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 511
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2e

    .line 512
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSetHighestPriority(Ljava/lang/String;I)Z
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2b

    move-result v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2e

    .line 515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    return v2

    .line 511
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3

    throw v2
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_2e

    .line 514
    :catchall_2e
    move-exception v2

    .line 515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    throw v2
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 522
    const-string/jumbo v2, "setLowestPriority"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeConfigurationPermission(Ljava/lang/String;)V

    .line 523
    const-string/jumbo v2, "setLowestPriority"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 524
    if-nez p1, :cond_11

    .line 525
    const/4 v2, 0x0

    return v2

    .line 528
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 530
    .local v0, "ident":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2e

    .line 531
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSetLowestPriority(Ljava/lang/String;I)Z
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2b

    move-result v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2e

    .line 534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    return v2

    .line 530
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3

    throw v2
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_2e

    .line 533
    :catchall_2e
    move-exception v2

    .line 534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    throw v2
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 484
    const-string/jumbo v2, "setPriority"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeConfigurationPermission(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v2, "setPriority"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 486
    if-eqz p1, :cond_11

    if-nez p2, :cond_13

    .line 487
    :cond_11
    const/4 v2, 0x0

    return v2

    .line 490
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    .local v0, "ident":J
    :try_start_17
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_30

    .line 493
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSetPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d

    move-result v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_30

    .line 496
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    return v2

    .line 492
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v3

    throw v2
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_30

    .line 495
    :catchall_30
    move-exception v2

    .line 496
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    throw v2
.end method
