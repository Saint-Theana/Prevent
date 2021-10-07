.class final Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    .line 163
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 162
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_40

    .line 167
    :cond_6
    :goto_6
    return-void

    .line 172
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto :goto_6

    .line 175
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 176
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_20

    monitor-exit v2

    .line 175
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6

    :catchall_20
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 180
    :pswitch_26
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 181
    .local v0, "dic":Lcom/android/server/DeviceIdleController$LocalService;
    if-eqz v0, :cond_6

    .line 182
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 183
    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 182
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V

    goto :goto_6

    .line 168
    nop

    :pswitch_data_40
    .packed-switch 0xc8
        :pswitch_7
        :pswitch_d
        :pswitch_26
    .end packed-switch
.end method
