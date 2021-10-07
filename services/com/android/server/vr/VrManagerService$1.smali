.class Lcom/android/server/vr/VrManagerService$1;
.super Landroid/os/Handler;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 198
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_6c

    .line 220
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :pswitch_21
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    const/4 v2, 0x1

    .line 201
    .local v2, "state":Z
    :goto_27
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 202
    .local v1, "i":I
    :goto_31
    if-lez v1, :cond_49

    .line 203
    add-int/lit8 v1, v1, -0x1

    .line 205
    :try_start_35
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v2}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_44} :catch_45

    goto :goto_31

    .line 206
    :catch_45
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_31

    .line 200
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "state":Z
    :cond_47
    const/4 v2, 0x0

    .restart local v2    # "state":Z
    goto :goto_27

    .line 210
    .restart local v1    # "i":I
    :cond_49
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 197
    .end local v1    # "i":I
    .end local v2    # "state":Z
    :goto_52
    return-void

    .line 213
    :pswitch_53
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get2(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 214
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-get4(Lcom/android/server/vr/VrManagerService;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 215
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/VrManagerService;->-wrap4(Lcom/android/server/vr/VrManagerService;)V
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_69

    :cond_67
    monitor-exit v4

    goto :goto_52

    .line 213
    :catchall_69
    move-exception v3

    monitor-exit v4

    throw v3

    .line 198
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_21
        :pswitch_53
    .end packed-switch
.end method
