.class Lcom/android/server/camera/CameraService$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraService;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/camera/CameraService;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 100
    :cond_7
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 106
    :cond_10
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-static {v1}, Lcom/android/server/camera/CameraService;->-get2(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 108
    :try_start_17
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-static {v1}, Lcom/android/server/camera/CameraService;->-get0(Lcom/android/server/camera/CameraService;)Ljava/util/Set;
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_53

    move-result-object v1

    if-nez v1, :cond_46

    monitor-exit v2

    return-void

    .line 100
    :cond_21
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 96
    :goto_45
    return-void

    .line 109
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    iget-object v3, p0, Lcom/android/server/camera/CameraService$1;->this$0:Lcom/android/server/camera/CameraService;

    invoke-static {v3}, Lcom/android/server/camera/CameraService;->-get1(Lcom/android/server/camera/CameraService;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/camera/CameraService;->-wrap2(Lcom/android/server/camera/CameraService;I)V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_53

    monitor-exit v2

    goto :goto_45

    .line 106
    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method
