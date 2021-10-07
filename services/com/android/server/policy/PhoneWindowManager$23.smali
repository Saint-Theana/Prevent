.class Lcom/android/server/policy/PhoneWindowManager$23;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$screenshotType:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$screenshotType"    # I

    .prologue
    .line 6800
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$screenshotType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 6803
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v7

    .line 6804
    :try_start_5
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_6b

    if-eq v6, p0, :cond_d

    monitor-exit v7

    .line 6805
    return-void

    .line 6807
    :cond_d
    :try_start_d
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 6808
    .local v3, "messenger":Landroid/os/Messenger;
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->val$screenshotType:I

    const/4 v8, 0x0

    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 6809
    .local v4, "msg":Landroid/os/Message;
    move-object v5, p0

    .line 6810
    .local v5, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$23$1;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, p0, v6, p0}, Lcom/android/server/policy/PhoneWindowManager$23$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$23;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 6822
    .local v1, "h":Landroid/os/Handler;
    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 6823
    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/os/Message;->arg1:I
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_6b

    .line 6827
    :try_start_34
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManager;->-get5(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v6

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3e} :catch_6e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_6b

    .line 6832
    :goto_3e
    :try_start_3e
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_51

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 6833
    const/4 v6, 0x1

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 6834
    :cond_51
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_64

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 6835
    const/4 v6, 0x1

    iput v6, v4, Landroid/os/Message;->arg2:I
    :try_end_64
    .catchall {:try_start_3e .. :try_end_64} :catchall_6b

    .line 6837
    :cond_64
    :try_start_64
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_67} :catch_69
    .catchall {:try_start_64 .. :try_end_67} :catchall_6b

    :goto_67
    monitor-exit v7

    .line 6802
    return-void

    .line 6838
    :catch_69
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_67

    .line 6803
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v3    # "messenger":Landroid/os/Messenger;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "myConn":Landroid/content/ServiceConnection;
    :catchall_6b
    move-exception v6

    monitor-exit v7

    throw v6

    .line 6828
    .restart local v1    # "h":Landroid/os/Handler;
    .restart local v3    # "messenger":Landroid/os/Messenger;
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v5    # "myConn":Landroid/content/ServiceConnection;
    :catch_6e
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_3e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 6845
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6846
    :try_start_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2b

    .line 6847
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6848
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 6849
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6850
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$23;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap18(Lcom/android/server/policy/PhoneWindowManager;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit v1

    .line 6844
    return-void

    .line 6845
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
