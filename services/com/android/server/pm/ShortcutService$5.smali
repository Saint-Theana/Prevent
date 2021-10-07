.class Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .prologue
    .line 2548
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, -0x2710

    .line 2551
    const-string/jumbo v9, "android.intent.extra.user_handle"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2552
    .local v8, "userId":I
    if-ne v8, v10, :cond_26

    .line 2553
    const-string/jumbo v9, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Intent broadcast does not contain user handle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    return-void

    .line 2557
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2561
    .local v0, "action":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v6

    .line 2563
    .local v6, "token":J
    :try_start_30
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v9}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_62
    .catchall {:try_start_30 .. :try_end_37} :catchall_ce

    .line 2564
    :try_start_37
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_5f

    move-result v9

    if-nez v9, :cond_46

    :try_start_3f
    monitor-exit v10
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_40} :catch_62
    .catchall {:try_start_3f .. :try_end_40} :catchall_ce

    .line 2616
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2569
    return-void

    .line 2574
    :cond_46
    :try_start_46
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 2575
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5f

    :try_start_4f
    monitor-exit v10

    .line 2577
    const-string/jumbo v9, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_56} :catch_62
    .catchall {:try_start_4f .. :try_end_56} :catchall_ce

    move-result v9

    if-eqz v9, :cond_71

    .line 2616
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2579
    return-void

    .line 2563
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_5f
    move-exception v9

    :try_start_60
    monitor-exit v10

    throw v9
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_62} :catch_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_ce

    .line 2613
    :catch_62
    move-exception v1

    .line 2614
    .local v1, "e":Ljava/lang/Exception;
    :try_start_63
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v10, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {v9, v10, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_ce

    .line 2616
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2550
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_70
    return-void

    .line 2582
    .restart local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_71
    :try_start_71
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2583
    .local v2, "intentUri":Landroid/net/Uri;
    if-eqz v2, :cond_9d

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 2585
    :goto_7b
    if-nez v3, :cond_9f

    .line 2586
    const-string/jumbo v9, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Intent broadcast does not contain package name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_97} :catch_62
    .catchall {:try_start_71 .. :try_end_97} :catchall_ce

    .line 2616
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2587
    return-void

    .line 2584
    :cond_9d
    const/4 v3, 0x0

    .local v3, "packageName":Ljava/lang/String;
    goto :goto_7b

    .line 2590
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_9f
    :try_start_9f
    const-string/jumbo v9, "android.intent.extra.REPLACING"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2592
    .local v4, "replacing":Z
    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    .line 2594
    if-eqz v4, :cond_f3

    .line 2595
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap6(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b7} :catch_62
    .catchall {:try_start_9f .. :try_end_b7} :catchall_ce

    .line 2616
    :cond_b7
    :goto_b7
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    goto :goto_70

    .line 2592
    :cond_bd
    :try_start_bd
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d5

    .line 2601
    if-nez v4, :cond_b7

    .line 2602
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap5(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_cd} :catch_62
    .catchall {:try_start_bd .. :try_end_cd} :catchall_ce

    goto :goto_b7

    .line 2615
    .end local v2    # "intentUri":Landroid/net/Uri;
    .end local v4    # "replacing":Z
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_ce
    move-exception v9

    .line 2616
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2615
    throw v9

    .line 2592
    .restart local v2    # "intentUri":Landroid/net/Uri;
    .restart local v4    # "replacing":Z
    .restart local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_d5
    :try_start_d5
    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e4

    .line 2606
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap3(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_b7

    .line 2592
    :cond_e4
    const-string/jumbo v9, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 2610
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap4(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_b7

    .line 2597
    :cond_f3
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v9, v3, v8}, Lcom/android/server/pm/ShortcutService;->-wrap2(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_f8} :catch_62
    .catchall {:try_start_d5 .. :try_end_f8} :catchall_ce

    goto :goto_b7
.end method
