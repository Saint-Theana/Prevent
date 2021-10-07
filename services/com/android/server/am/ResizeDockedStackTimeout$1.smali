.class Lcom/android/server/am/ResizeDockedStackTimeout$1;
.super Ljava/lang/Object;
.source "ResizeDockedStackTimeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ResizeDockedStackTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ResizeDockedStackTimeout;


# direct methods
.method constructor <init>(Lcom/android/server/am/ResizeDockedStackTimeout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ResizeDockedStackTimeout;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/am/ResizeDockedStackTimeout$1;->this$0:Lcom/android/server/am/ResizeDockedStackTimeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout$1;->this$0:Lcom/android/server/am/ResizeDockedStackTimeout;

    invoke-static {v0}, Lcom/android/server/am/ResizeDockedStackTimeout;->-get1(Lcom/android/server/am/ResizeDockedStackTimeout;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    monitor-enter v7

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 41
    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout$1;->this$0:Lcom/android/server/am/ResizeDockedStackTimeout;

    invoke-static {v0}, Lcom/android/server/am/ResizeDockedStackTimeout;->-get2(Lcom/android/server/am/ResizeDockedStackTimeout;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ResizeDockedStackTimeout$1;->this$0:Lcom/android/server/am/ResizeDockedStackTimeout;

    invoke-static {v1}, Lcom/android/server/am/ResizeDockedStackTimeout;->-get0(Lcom/android/server/am/ResizeDockedStackTimeout;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x1

    .line 41
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_23

    monitor-exit v7

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    return-void

    .line 40
    :catchall_23
    move-exception v0

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
