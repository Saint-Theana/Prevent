.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;
.super Landroid/media/tv/TvInputManager$TvInputCallback;
.source "HdmiCecLocalDeviceTv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$TvInputCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getTvInputManager()Landroid/media/tv/TvInputManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    .line 141
    .local v1, "tvInfo":Landroid/media/tv/TvInputInfo;
    if-nez v1, :cond_f

    return-void

    .line 142
    :cond_f
    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 143
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_16

    return-void

    .line 144
    :cond_16
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-wrap0(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V

    .line 145
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 146
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedActiveSource(I)V

    .line 139
    :cond_2e
    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-wrap1(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V

    .line 151
    return-void
.end method
