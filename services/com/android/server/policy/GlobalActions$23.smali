.class Lcom/android/server/policy/GlobalActions$23;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->takeScreenrecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1118
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, v5, Lcom/android/server/policy/GlobalActions;->mScreenrecordLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1119
    :try_start_5
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1120
    .local v2, "messenger":Landroid/os/Messenger;
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 1121
    .local v3, "msg":Landroid/os/Message;
    move-object v4, p0

    .line 1122
    .local v4, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/GlobalActions$23$1;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5, p0}, Lcom/android/server/policy/GlobalActions$23$1;-><init>(Lcom/android/server/policy/GlobalActions$23;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 1134
    .local v1, "h":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1135
    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg1:I
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_34

    .line 1137
    :try_start_2d
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_32
    .catchall {:try_start_2d .. :try_end_30} :catchall_34

    :goto_30
    monitor-exit v6

    .line 1117
    return-void

    .line 1138
    :catch_32
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_30

    .line 1118
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "myConn":Landroid/content/ServiceConnection;
    :catchall_34
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1143
    return-void
.end method
