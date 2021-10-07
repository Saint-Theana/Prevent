.class Lcom/android/server/policy/PhoneWindowManager$17;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 7825
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 7828
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7829
    :try_start_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_31

    move-result v0

    if-nez v0, :cond_13

    monitor-exit v1

    .line 7831
    return-void

    .line 7833
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-set3(Lcom/android/server/policy/PhoneWindowManager;J)J

    .line 7834
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap1(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 7835
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$17;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get4(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/BarController;->showTransient()V
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit v1

    .line 7827
    return-void

    .line 7828
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method
