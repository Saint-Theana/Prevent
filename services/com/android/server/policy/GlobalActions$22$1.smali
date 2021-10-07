.class Lcom/android/server/policy/GlobalActions$22$1;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$22;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$22;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$22;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$22;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$myConn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$22$1;->this$1:Lcom/android/server/policy/GlobalActions$22;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$22$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$22$1;->this$1:Lcom/android/server/policy/GlobalActions$22;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get17(Lcom/android/server/policy/GlobalActions;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1052
    :try_start_9
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$22$1;->this$1:Lcom/android/server/policy/GlobalActions$22;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get14(Lcom/android/server/policy/GlobalActions;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$22$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_41

    .line 1053
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$22$1;->this$1:Lcom/android/server/policy/GlobalActions$22;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$22$1;->this$1:Lcom/android/server/policy/GlobalActions$22;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get14(Lcom/android/server/policy/GlobalActions;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$22$1;->this$1:Lcom/android/server/policy/GlobalActions$22;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions;->-set3(Lcom/android/server/policy/GlobalActions;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 1055
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$22$1;->this$1:Lcom/android/server/policy/GlobalActions$22;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$22$1;->this$1:Lcom/android/server/policy/GlobalActions$22;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_43

    :cond_41
    monitor-exit v1

    .line 1050
    return-void

    .line 1051
    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method
