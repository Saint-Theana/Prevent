.class Lcom/android/server/wm/WindowAnimator$1;
.super Ljava/lang/Object;
.source "WindowAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 6
    .param p1, "frameTimeNs"    # J

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 147
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->-wrap0(Lcom/android/server/wm/WindowAnimator;J)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 145
    return-void

    .line 146
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method
