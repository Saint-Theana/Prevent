.class Lcom/android/server/hdmi/HdmiControlService$BinderService$6;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p3, "val$enabled"    # Z

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 1402
    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_1e

    .line 1403
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Local tv device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->-wrap12(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1405
    return-void

    .line 1407
    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;->val$enabled:Z

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1400
    return-void
.end method
