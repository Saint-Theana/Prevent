.class final Lcom/android/server/om/OverlayManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$PackageReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .prologue
    const/4 v2, 0x0

    .line 322
    array-length v3, p2

    :goto_2
    if-ge v2, v3, :cond_45

    aget v1, p2, v2

    .line 323
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 324
    :try_start_d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 325
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_34

    .line 326
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v1, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 327
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5, v0}, Lcom/android/server/om/OverlayManagerService;->-wrap0(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 328
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_42

    :cond_34
    :goto_34
    monitor-exit v4

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 330
    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_42

    goto :goto_34

    .line 323
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_42
    move-exception v2

    monitor-exit v4

    throw v2

    .line 321
    .end local v1    # "userId":I
    :cond_45
    return-void
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .prologue
    const/4 v2, 0x0

    .line 339
    array-length v3, p2

    :goto_2
    if-ge v2, v3, :cond_45

    aget v1, p2, v2

    .line 340
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 341
    :try_start_d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 342
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_34

    .line 343
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v1, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 344
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5, v0}, Lcom/android/server/om/OverlayManagerService;->-wrap0(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 345
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageChanged(Ljava/lang/String;I)V
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_42

    :cond_34
    :goto_34
    monitor-exit v4

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 347
    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;I)V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_42

    goto :goto_34

    .line 340
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_42
    move-exception v2

    monitor-exit v4

    throw v2

    .line 338
    .end local v1    # "userId":I
    :cond_45
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .prologue
    .line 388
    const/4 v2, 0x0

    array-length v3, p2

    :goto_2
    if-ge v2, v3, :cond_3c

    aget v1, p2, v2

    .line 389
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 390
    :try_start_d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 391
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onGetOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 392
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    if-nez v0, :cond_2f

    .line 393
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageRemoved(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_39

    :goto_2b
    monitor-exit v4

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 395
    :cond_2f
    :try_start_2f
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_2b

    .line 389
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :catchall_39
    move-exception v2

    monitor-exit v4

    throw v2

    .line 387
    .end local v1    # "userId":I
    :cond_3c
    return-void
.end method

.method private onPackageUpgraded(Ljava/lang/String;[I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .prologue
    const/4 v2, 0x0

    .line 371
    array-length v3, p2

    :goto_2
    if-ge v2, v3, :cond_45

    aget v1, p2, v2

    .line 372
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 373
    :try_start_d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 374
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_34

    .line 375
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v1, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 376
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5, v0}, Lcom/android/server/om/OverlayManagerService;->-wrap0(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 377
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageUpgraded(Ljava/lang/String;I)V
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_42

    :cond_34
    :goto_34
    monitor-exit v4

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 379
    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageUpgraded(Ljava/lang/String;I)V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_42

    goto :goto_34

    .line 372
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_42
    move-exception v2

    monitor-exit v4

    throw v2

    .line 370
    .end local v1    # "userId":I
    :cond_45
    return-void
.end method

.method private onPackageUpgrading(Ljava/lang/String;[I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .prologue
    .line 356
    const/4 v2, 0x0

    array-length v3, p2

    :goto_2
    if-ge v2, v3, :cond_3c

    aget v1, p2, v2

    .line 357
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-get2(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 358
    :try_start_d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 359
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onGetOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 360
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    if-nez v0, :cond_2f

    .line 361
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageUpgrading(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_39

    :goto_2b
    monitor-exit v4

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 363
    :cond_2f
    :try_start_2f
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageUpgrading(Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_2b

    .line 357
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :catchall_39
    move-exception v2

    monitor-exit v4

    throw v2

    .line 355
    .end local v1    # "userId":I
    :cond_3c
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0x2710

    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 280
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_13

    .line 281
    const-string/jumbo v5, "OverlayManager"

    const-string/jumbo v6, "Cannot handle package broadcast with null data"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 284
    :cond_13
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 289
    .local v3, "replacing":Z
    const-string/jumbo v5, "android.intent.extra.UID"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 290
    .local v1, "extraUid":I
    if-ne v1, v6, :cond_44

    .line 291
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-get7(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 296
    .local v4, "userIds":[I
    :goto_31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 298
    if-eqz v3, :cond_6a

    .line 299
    invoke-direct {p0, v2, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageUpgraded(Ljava/lang/String;[I)V

    .line 278
    :cond_43
    :goto_43
    return-void

    .line 293
    .end local v4    # "userIds":[I
    :cond_44
    const/4 v5, 0x1

    new-array v4, v5, [I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    aput v5, v4, v7

    .restart local v4    # "userIds":[I
    goto :goto_31

    .line 296
    :cond_4e
    const-string/jumbo v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 305
    invoke-direct {p0, v2, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    goto :goto_43

    .line 296
    :cond_5b
    const-string/jumbo v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 308
    if-eqz v3, :cond_6e

    .line 309
    invoke-direct {p0, v2, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageUpgrading(Ljava/lang/String;[I)V

    goto :goto_43

    .line 301
    :cond_6a
    invoke-direct {p0, v2, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    goto :goto_43

    .line 311
    :cond_6e
    invoke-direct {p0, v2, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    goto :goto_43
.end method
