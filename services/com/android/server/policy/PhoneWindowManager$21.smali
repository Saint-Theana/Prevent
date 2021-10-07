.class Lcom/android/server/policy/PhoneWindowManager$21;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$awakenFromDreams"    # Z

    .prologue
    .line 4902
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->val$awakenFromDreams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 6
    .param p1, "success"    # Z

    .prologue
    .line 4905
    if-eqz p1, :cond_19

    .line 4907
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_1a

    .line 4910
    :goto_9
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v2, "homekey"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4911
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$21;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$21;->val$awakenFromDreams:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    .line 4904
    :cond_19
    return-void

    .line 4908
    :catch_1a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
.end method
