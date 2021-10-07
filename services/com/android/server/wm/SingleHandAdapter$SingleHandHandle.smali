.class final Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;
.super Ljava/lang/Object;
.source "SingleHandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SingleHandAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SingleHandHandle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;,
        Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$2;,
        Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;
    }
.end annotation


# instance fields
.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mLeft:Z

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mShowRunnableWalltop:Ljava/lang/Runnable;

.field private mWindow:Lcom/android/server/wm/SingleHandWindow;

.field private mWindowWalltop:Lcom/android/server/wm/SingleHandWindow;

.field final synthetic this$0:Lcom/android/server/wm/SingleHandAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mLeft:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)Lcom/android/server/wm/SingleHandWindow;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mWindow:Lcom/android/server/wm/SingleHandWindow;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)Lcom/android/server/wm/SingleHandWindow;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mWindowWalltop:Lcom/android/server/wm/SingleHandWindow;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;Lcom/android/server/wm/SingleHandWindow;)Lcom/android/server/wm/SingleHandWindow;
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mWindow:Lcom/android/server/wm/SingleHandWindow;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;Lcom/android/server/wm/SingleHandWindow;)Lcom/android/server/wm/SingleHandWindow;
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mWindowWalltop:Lcom/android/server/wm/SingleHandWindow;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/wm/SingleHandAdapter;Z)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/wm/SingleHandAdapter;
    .param p2, "left"    # Z

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;-><init>(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mShowRunnable:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$2;-><init>(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mShowRunnableWalltop:Ljava/lang/Runnable;

    .line 215
    new-instance v0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$3;-><init>(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mDismissRunnable:Ljava/lang/Runnable;

    .line 180
    iput-boolean p2, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mLeft:Z

    .line 181
    sget-object v1, Lcom/android/server/wm/SingleHandAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_1f
    invoke-static {p1}, Lcom/android/server/wm/SingleHandAdapter;->-get6(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mShowRunnableWalltop:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    invoke-static {p1}, Lcom/android/server/wm/SingleHandAdapter;->-get6(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_35

    monitor-exit v1

    .line 179
    return-void

    .line 181
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dismissLocked()V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-get6(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-get6(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mShowRunnableWalltop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-get6(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public onBlurWallpaperChanged()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mWindowWalltop:Lcom/android/server/wm/SingleHandWindow;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->mWindowWalltop:Lcom/android/server/wm/SingleHandWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/SingleHandWindow;->onBlurWallpaperChanged()V

    .line 234
    :cond_9
    return-void
.end method
