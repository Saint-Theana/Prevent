.class Lcom/android/server/wm/WindowManagerService$9;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->watchRotation(Landroid/view/IRotationWatcher;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$watcherBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "val$watcherBinder"    # Landroid/os/IBinder;

    .prologue
    .line 7090
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$9;->val$watcherBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 7093
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7094
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3f

    .line 7095
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$9;->val$watcherBinder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->watcher:Landroid/view/IRotationWatcher;

    invoke-interface {v3}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v5, v3, :cond_3c

    .line 7096
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 7097
    .local v2, "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->watcher:Landroid/view/IRotationWatcher;

    invoke-interface {v3}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 7098
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_3a

    .line 7099
    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_41

    .line 7101
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    .line 7094
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3f
    monitor-exit v4

    .line 7092
    return-void

    .line 7093
    :catchall_41
    move-exception v3

    monitor-exit v4

    throw v3
.end method
