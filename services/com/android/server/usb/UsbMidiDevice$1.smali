.class Lcom/android/server/usb/UsbMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 1

    .prologue
    .line 110
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 10
    .param p1, "server"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 80
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v3

    .line 81
    .local v3, "inputPorts":I
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v4

    .line 82
    .local v4, "outputPorts":I
    const/4 v1, 0x0

    .line 84
    .local v1, "hasOpenPorts":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_17

    .line 85
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 86
    const/4 v1, 0x1

    .line 91
    :cond_17
    if-nez v1, :cond_23

    .line 92
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v4, :cond_23

    .line 93
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v5

    if-lez v5, :cond_48

    .line 94
    const/4 v1, 0x1

    .line 100
    :cond_23
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-get2(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 101
    if-eqz v1, :cond_34

    :try_start_2c
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-get1(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 103
    :cond_34
    if-nez v1, :cond_43

    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-get1(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 104
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-wrap1(Lcom/android/server/usb/UsbMidiDevice;)V
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_51

    :cond_43
    :goto_43
    monitor-exit v6

    .line 78
    return-void

    .line 84
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 92
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 102
    :cond_4b
    :try_start_4b
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->-wrap0(Lcom/android/server/usb/UsbMidiDevice;)Z
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_51

    goto :goto_43

    .line 100
    :catchall_51
    move-exception v5

    monitor-exit v6

    throw v5
.end method
