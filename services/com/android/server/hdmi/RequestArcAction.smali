.class abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestArcAction.java"


# static fields
.field protected static final STATE_WATING_FOR_REQUEST_ARC_REQUEST_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestArcAction"


# instance fields
.field protected final mAvrAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .registers 5
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 44
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 45
    iput p2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 41
    return-void
.end method


# virtual methods
.method protected final disableArcTransmission()V
    .registers 5

    .prologue
    .line 77
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    .line 78
    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const/4 v3, 0x0

    .line 77
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 79
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/RequestArcAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 75
    return-void
.end method

.method final handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 85
    :cond_7
    return-void

    .line 87
    :cond_8
    const-string/jumbo v0, "[T] RequestArcAction."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    .line 83
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mState:I

    if-ne v2, v5, :cond_19

    .line 51
    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const-string/jumbo v3, "RequestArcAction"

    invoke-static {p1, v2, v3}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 54
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 55
    .local v0, "opcode":I
    packed-switch v0, :pswitch_data_3e

    .line 72
    return v4

    .line 52
    .end local v0    # "opcode":I
    :cond_19
    return v4

    .line 60
    .restart local v0    # "opcode":I
    :pswitch_1a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    aget-byte v2, v2, v4

    and-int/lit16 v1, v2, 0xff

    .line 61
    .local v1, "originalOpcode":I
    const/16 v2, 0xc4

    if-ne v1, v2, :cond_2d

    .line 62
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    .line 64
    return v5

    .line 65
    :cond_2d
    const/16 v2, 0xc3

    if-ne v1, v2, :cond_3c

    .line 66
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->finish()V

    .line 68
    return v5

    .line 70
    :cond_3c
    return v4

    .line 55
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1a
    .end packed-switch
.end method
