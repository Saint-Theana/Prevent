.class public Lcom/android/server/hdmi/PowerStatusMonitorAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "PowerStatusMonitorAction.java"


# static fields
.field private static final INVALID_POWER_STATUS:I = -0x2

.field private static final MONITIROING_INTERNAL_MS:I = 0xea60

.field private static final REPORT_POWER_STATUS_TIMEOUT_MS:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_MONITORING:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerStatusMonitorAction"


# instance fields
.field private final mPowerStatus:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/PowerStatusMonitorAction;IIZ)V
    .registers 4
    .param p1, "logicalAddress"    # I
    .param p2, "newStatus"    # I
    .param p3, "remove"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 55
    return-void
.end method

.method private handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 75
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 76
    .local v2, "sourceAddress":I
    iget-object v3, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 77
    .local v1, "oldStatus":I
    if-ne v1, v4, :cond_10

    .line 79
    return v5

    .line 81
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v3, v3, v5

    and-int/lit16 v0, v3, 0xff

    .line 82
    .local v0, "newStatus":I
    invoke-direct {p0, v2, v0, v6}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 83
    return v6
.end method

.method private handleTimeout()V
    .registers 5

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 100
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 101
    .local v1, "logicalAddress":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "logicalAddress":I
    :cond_17
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 104
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    .line 98
    return-void
.end method

.method private queryPowerStatus()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->resetPowerStatus(Ljava/util/List;)V

    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 118
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    .line 119
    .local v3, "logicalAddress":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->getSourceAddress()I

    move-result v4

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v4

    .line 121
    new-instance v5, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;-><init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V

    .line 119
    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_11

    .line 133
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v3    # "logicalAddress":I
    :cond_32
    iput v6, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    .line 136
    const/4 v4, 0x2

    const v5, 0xea60

    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    .line 137
    const/16 v4, 0x1388

    invoke-virtual {p0, v6, v4}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    .line 114
    return-void
.end method

.method private resetPowerStatus(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 109
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 110
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_9

    .line 107
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_23
    return-void
.end method

.method private updatePowerStatus(IIZ)V
    .registers 5
    .param p1, "logicalAddress"    # I
    .param p2, "newStatus"    # I
    .param p3, "remove"    # Z

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 143
    if-eqz p3, :cond_e

    .line 144
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 140
    :cond_e
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    packed-switch v0, :pswitch_data_e

    .line 87
    :goto_5
    return-void

    .line 90
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    goto :goto_5

    .line 93
    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleTimeout()V

    goto :goto_5

    .line 88
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 4
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 68
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_12

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0

    .line 71
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method start()Z
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    .line 62
    const/4 v0, 0x1

    return v0
.end method
