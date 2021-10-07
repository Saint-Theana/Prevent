.class Lcom/android/server/wm/WindowState$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 9

    .prologue
    .line 1806
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_7f

    .line 1807
    :try_start_7
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v6, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1808
    .local v2, "win":Lcom/android/server/wm/WindowState;
    sget-object v3, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WIN DEATH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    if-eqz v2, :cond_64

    .line 1810
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->shouldKeepVisibleDeadAppWindow()Z

    move-result v5

    invoke-virtual {v3, v2, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1811
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f2

    if-ne v3, v5, :cond_62

    .line 1816
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1817
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_5a

    .line 1818
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetDockedStackToMiddle()V

    .line 1820
    :cond_5a
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_7c

    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_62 .. :try_end_63} :catch_7f

    .line 1804
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_63
    return-void

    .line 1822
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_64
    :try_start_64
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_62

    .line 1823
    sget-object v3, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "!!! LEAK !!! Window removed but surface still valid."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_7b
    .catchall {:try_start_64 .. :try_end_7b} :catchall_7c

    goto :goto_62

    .line 1806
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v4

    throw v3
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_7f} :catch_7f

    .line 1827
    :catch_7f
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_63
.end method
