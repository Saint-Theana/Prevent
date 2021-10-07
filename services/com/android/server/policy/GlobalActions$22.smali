.class Lcom/android/server/policy/GlobalActions$22;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->takeScreenshot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$screenshotType:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "val$screenshotType"    # I

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iput p2, p0, Lcom/android/server/policy/GlobalActions$22;->val$screenshotType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1041
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get17(Lcom/android/server/policy/GlobalActions;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1042
    :try_start_7
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get14(Lcom/android/server/policy/GlobalActions;)Landroid/content/ServiceConnection;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_4b

    move-result-object v6

    if-eq v6, p0, :cond_11

    monitor-exit v7

    .line 1043
    return-void

    .line 1045
    :cond_11
    :try_start_11
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1046
    .local v3, "messenger":Landroid/os/Messenger;
    iget v6, p0, Lcom/android/server/policy/GlobalActions$22;->val$screenshotType:I

    const/4 v8, 0x0

    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 1047
    .local v4, "msg":Landroid/os/Message;
    move-object v5, p0

    .line 1048
    .local v5, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/GlobalActions$22$1;

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6, p0}, Lcom/android/server/policy/GlobalActions$22$1;-><init>(Lcom/android/server/policy/GlobalActions$22;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 1060
    .local v1, "h":Landroid/os/Handler;
    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1061
    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg1:I
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_4b

    .line 1065
    :try_start_3a
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->-get15(Lcom/android/server/policy/GlobalActions;)I

    move-result v6

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_44} :catch_4e
    .catchall {:try_start_3a .. :try_end_44} :catchall_4b

    .line 1072
    :goto_44
    :try_start_44
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_49
    .catchall {:try_start_44 .. :try_end_47} :catchall_4b

    :goto_47
    monitor-exit v7

    .line 1040
    return-void

    .line 1073
    :catch_49
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_47

    .line 1041
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v3    # "messenger":Landroid/os/Messenger;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "myConn":Landroid/content/ServiceConnection;
    :catchall_4b
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1066
    .restart local v1    # "h":Landroid/os/Handler;
    .restart local v3    # "messenger":Landroid/os/Messenger;
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v5    # "myConn":Landroid/content/ServiceConnection;
    :catch_4e
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_44
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1079
    return-void
.end method
