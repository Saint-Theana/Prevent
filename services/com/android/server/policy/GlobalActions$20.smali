.class Lcom/android/server/policy/GlobalActions$20;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 893
    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 4

    .prologue
    .line 897
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$20;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 899
    :try_start_f
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    .line 896
    :goto_17
    return-void

    .line 900
    :catch_18
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "Error while trying to lock device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 912
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 907
    const/4 v0, 0x1

    return v0
.end method
