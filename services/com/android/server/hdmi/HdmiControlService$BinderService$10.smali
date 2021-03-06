.class Lcom/android/server/hdmi/HdmiControlService$BinderService$10;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendVendorCommand(II[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$deviceType:I

.field final synthetic val$hasVendorId:Z

.field final synthetic val$params:[B

.field final synthetic val$targetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$deviceType"    # I
    .param p3, "val$hasVendorId"    # Z
    .param p4, "val$targetAddress"    # I
    .param p5, "val$params"    # [B

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$deviceType:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$hasVendorId:Z

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$targetAddress:I

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$params:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-get4(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$deviceType:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 1531
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_1a

    .line 1532
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Local device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return-void

    .line 1535
    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$hasVendorId:Z

    if-eqz v1, :cond_3e

    .line 1536
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1537
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$targetAddress:I

    .line 1538
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v4, v4, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$params:[B

    .line 1536
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1529
    :goto_3d
    return-void

    .line 1540
    :cond_3e
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 1541
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$targetAddress:I

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;->val$params:[B

    .line 1540
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_3d
.end method
