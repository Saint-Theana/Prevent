.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mAllowedResolutionLevel:I

.field final mHideFromAppOps:Z

.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field mOpHighPowerMonitoring:Z

.field mOpMonitoring:Z

.field final mPackageName:Ljava/lang/String;

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mPid:I

.field final mUid:I

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .registers 12
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "hideFromAppOps"    # Z

    .prologue
    const/4 v2, 0x1

    .line 671
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 673
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 674
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 675
    if-eqz p2, :cond_53

    .line 676
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 680
    :goto_19
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->-wrap1(Lcom/android/server/LocationManagerService;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 681
    iput p5, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    .line 682
    iput p4, p0, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    .line 683
    iput-object p6, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    .line 684
    if-eqz p7, :cond_2e

    invoke-virtual {p7}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-gtz v0, :cond_2e

    .line 685
    const/4 p7, 0x0

    .line 687
    .end local p7    # "workSource":Landroid/os/WorkSource;
    :cond_2e
    iput-object p7, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 688
    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    .line 690
    invoke-virtual {p0, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 693
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    const-string/jumbo v1, "LocationManagerService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 694
    if-nez p7, :cond_4d

    .line 695
    new-instance p7, Landroid/os/WorkSource;

    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-direct {p7, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 697
    :cond_4d
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 672
    return-void

    .line 678
    .restart local p7    # "workSource":Landroid/os/WorkSource;
    :cond_53
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_19
.end method

.method private decrementPendingBroadcastsLocked()V
    .registers 2

    .prologue
    .line 962
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_15

    .line 963
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 964
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 961
    :cond_15
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .registers 3

    .prologue
    .line 956
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_d

    .line 957
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 955
    :cond_d
    return-void
.end method

.method private updateMonitoring(ZZI)Z
    .registers 8
    .param p1, "allowMonitoring"    # Z
    .param p2, "currentlyMonitoring"    # Z
    .param p3, "op"    # I

    .prologue
    const/4 v0, 0x0

    .line 791
    if-nez p2, :cond_17

    .line 792
    if-eqz p1, :cond_37

    .line 793
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    .line 797
    :cond_17
    if-eqz p1, :cond_29

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_37

    .line 799
    :cond_29
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 800
    return v0

    .line 804
    :cond_37
    return p2
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 935
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Location listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_d
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 938
    :try_start_14
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->-wrap5(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_20

    monitor-exit v1

    .line 940
    monitor-enter p0

    .line 941
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_23

    monitor-exit p0

    .line 934
    return-void

    .line 937
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    .line 940
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .registers 12
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v9, 0x0

    .line 858
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_1b

    .line 860
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_19

    .line 863
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 866
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_16

    :try_start_13
    monitor-exit p0

    .line 888
    :goto_14
    const/4 v0, 0x1

    return v0

    .line 860
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_19

    .line 868
    :catch_19
    move-exception v8

    .line 869
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    .line 872
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 873
    .local v3, "locationChanged":Landroid/content/Intent;
    const-string/jumbo v0, "location"

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 875
    :try_start_2b
    monitor-enter p0
    :try_end_2c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2b .. :try_end_2c} :catch_4c

    .line 878
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 879
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 878
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 882
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_4e

    :try_start_4a
    monitor-exit p0

    goto :goto_14

    .line 884
    :catch_4c
    move-exception v7

    .line 885
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    .line 875
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_51
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4a .. :try_end_51} :catch_4c
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 894
    invoke-virtual {p0, v10}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 896
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_21

    .line 898
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_a} :catch_1f

    .line 901
    if-eqz p2, :cond_16

    .line 902
    :try_start_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 908
    :goto_11
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1c

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_15} :catch_1f

    .line 930
    :goto_15
    return v10

    .line 904
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_11

    .line 898
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0

    throw v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1f} :catch_1f

    .line 910
    :catch_1f
    move-exception v8

    .line 911
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    .line 914
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 915
    .local v3, "providerIntent":Landroid/content/Intent;
    const-string/jumbo v0, "providerEnabled"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 917
    :try_start_2c
    monitor-enter p0
    :try_end_2d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2c .. :try_end_2d} :catch_4d

    .line 920
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 921
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 920
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_4f

    :try_start_4b
    monitor-exit p0

    goto :goto_15

    .line 926
    :catch_4d
    move-exception v7

    .line 927
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    .line 917
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_52
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4b .. :try_end_52} :catch_4d
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 823
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_16

    .line 825
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_14

    .line 828
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 831
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_11

    :try_start_e
    monitor-exit p0

    .line 854
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 825
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_14

    .line 833
    :catch_14
    move-exception v8

    .line 834
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    .line 837
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 838
    .local v3, "statusChanged":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 839
    const-string/jumbo v0, "status"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    :try_start_29
    monitor-enter p0
    :try_end_2a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_29 .. :try_end_2a} :catch_4a

    .line 844
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 845
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 844
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 848
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_4c

    :try_start_48
    monitor-exit p0

    goto :goto_f

    .line 850
    :catch_4a
    move-exception v7

    .line 851
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    .line 841
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_4f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_48 .. :try_end_4f} :catch_4a
.end method

.method public clearPendingBroadcastsLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 970
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_14

    .line 971
    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 972
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 973
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 969
    :cond_14
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 702
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_f

    .line 703
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 705
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .registers 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_7

    .line 817
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    return-object v0

    .line 819
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPendingIntent()Z
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 948
    monitor-enter p0

    .line 949
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 947
    return-void

    .line 948
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Reciever["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v3, :cond_4d

    .line 719
    const-string/jumbo v3, " listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :goto_20
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 724
    .local v0, "p":Ljava/lang/String;
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 721
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_4d
    const-string/jumbo v3, " intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 726
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_54
    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateMonitoring(Z)V
    .registers 16
    .param p1, "allow"    # Z

    .prologue
    const/4 v8, 0x0

    .line 736
    iget-boolean v9, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v9, :cond_6

    .line 737
    return-void

    .line 740
    :cond_6
    const/4 v4, 0x0

    .line 741
    .local v4, "requestingLocation":Z
    const/4 v3, 0x0

    .line 742
    .local v3, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_54

    .line 745
    iget-object v9, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "updateRecord$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 746
    .local v5, "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v9, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/server/LocationManagerService;->-wrap0(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 747
    const/4 v4, 0x1

    .line 749
    iget-object v9, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v9}, Lcom/android/server/LocationManagerService;->-get6(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 750
    .local v1, "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_82

    .line 751
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 752
    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    :goto_3f
    if-eqz v2, :cond_14

    .line 753
    iget v9, v2, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_14

    .line 754
    iget-object v9, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v9}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    const-wide/32 v12, 0x493e0

    cmp-long v9, v10, v12

    if-gez v9, :cond_14

    .line 755
    const/4 v3, 0x1

    .line 765
    .end local v1    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v2    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v5    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v6    # "updateRecord$iterator":Ljava/util/Iterator;
    :cond_54
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 766
    const/16 v9, 0x29

    .line 763
    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 769
    iget-boolean v7, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 772
    .local v7, "wasHighPowerMonitoring":Z
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 773
    const/16 v9, 0x2a

    .line 770
    invoke-direct {p0, v3, v8, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 774
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v8, v7, :cond_81

    .line 776
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v0, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 735
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_81
    return-void

    .end local v7    # "wasHighPowerMonitoring":Z
    .restart local v1    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .restart local v5    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v6    # "updateRecord$iterator":Ljava/util/Iterator;
    :cond_82
    move-object v2, v8

    .line 751
    goto :goto_3f
.end method
