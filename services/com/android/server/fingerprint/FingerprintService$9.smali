.class Lcom/android/server/fingerprint/FingerprintService$9;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .registers 2
    .param p1, "newProfileId"    # I

    .prologue
    .line 1124
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1120
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 5
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1115
    return-void
.end method
