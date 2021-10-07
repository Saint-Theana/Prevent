.class Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$currentStatus"    # I
    .param p3, "val$args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .prologue
    .line 12559
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 12561
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v10, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12563
    new-instance v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-direct {v7}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    .line 12564
    .local v7, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    invoke-virtual {v7, v10}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 12565
    const/4 v10, -0x1

    iput v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 12566
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 12567
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 12568
    iget v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3c

    .line 12569
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 12570
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 12571
    :try_start_2b
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-static {v10, v12, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap27(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_c1

    monitor-exit v11

    .line 12573
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v12, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 12579
    :cond_3c
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    if-eqz v10, :cond_c6

    .line 12580
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v10, :cond_c4

    const/4 v9, 0x1

    .line 12581
    .local v9, "update":Z
    :goto_47
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v10, :cond_c8

    const/4 v5, 0x0

    .line 12582
    .local v5, "flags":I
    :goto_4c
    if-nez v9, :cond_d2

    .line 12583
    const v10, 0x8000

    and-int/2addr v10, v5

    if-eqz v10, :cond_d0

    const/4 v2, 0x1

    .line 12589
    .local v2, "doRestore":Z
    :goto_55
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v10, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v10, :cond_60

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v11, 0x1

    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 12590
    :cond_60
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v8, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 12592
    .local v8, "token":I
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v1, v10, v7}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 12593
    .local v1, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12596
    iget v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a3

    if-eqz v2, :cond_a3

    .line 12602
    const-string/jumbo v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 12601
    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 12603
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_e2

    .line 12606
    const-string/jumbo v10, "restore"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v10, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 12609
    const/4 v10, 0x0

    :try_start_94
    invoke-interface {v0, v10}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 12610
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v10, v8}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_a3} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a3} :catch_d6

    .line 12626
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_a3
    :goto_a3
    if-nez v2, :cond_c0

    .line 12631
    const-string/jumbo v10, "postInstall"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v10, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 12633
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v8, v12}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 12634
    .local v6, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 12560
    .end local v6    # "msg":Landroid/os/Message;
    :cond_c0
    return-void

    .line 12570
    .end local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2    # "doRestore":Z
    .end local v5    # "flags":I
    .end local v8    # "token":I
    .end local v9    # "update":Z
    :catchall_c1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 12580
    :cond_c4
    const/4 v9, 0x0

    .restart local v9    # "update":Z
    goto :goto_47

    .line 12579
    .end local v9    # "update":Z
    :cond_c6
    const/4 v9, 0x0

    .restart local v9    # "update":Z
    goto :goto_47

    .line 12581
    :cond_c8
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .restart local v5    # "flags":I
    goto/16 :goto_4c

    .line 12583
    :cond_d0
    const/4 v2, 0x0

    .restart local v2    # "doRestore":Z
    goto :goto_55

    .line 12582
    .end local v2    # "doRestore":Z
    :cond_d2
    const/4 v2, 0x0

    .restart local v2    # "doRestore":Z
    goto :goto_55

    .line 12612
    .restart local v0    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v8    # "token":I
    :cond_d4
    const/4 v2, 0x0

    goto :goto_a3

    .line 12616
    :catch_d6
    move-exception v4

    .line 12617
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PackageManager"

    const-string/jumbo v11, "Exception trying to enqueue restore"

    invoke-static {v10, v11, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12618
    const/4 v2, 0x0

    goto :goto_a3

    .line 12621
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e2
    const-string/jumbo v10, "PackageManager"

    const-string/jumbo v11, "Backup Manager not found!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12622
    const/4 v2, 0x0

    goto :goto_a3

    .line 12614
    :catch_ed
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_a3
.end method
