.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$disabled:Z

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$userHandle"    # I
    .param p3, "val$disabled"    # Z

    .prologue
    .line 5453
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userHandle:I

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$disabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 5457
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userHandle:I

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$disabled:Z

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 5455
    :goto_f
    return-void

    .line 5458
    :catch_10
    move-exception v0

    .line 5459
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DevicePolicyManagerService"

    const-string/jumbo v2, "Unable to notify WindowManager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
