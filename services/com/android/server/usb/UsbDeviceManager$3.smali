.class Lcom/android/server/usb/UsbDeviceManager$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$3;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    const-string/jumbo v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, "chargePlug":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    const/4 v1, 0x1

    .line 203
    .local v1, "usbCharging":Z
    :goto_c
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$3;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 200
    return-void

    .line 202
    .end local v1    # "usbCharging":Z
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "usbCharging":Z
    goto :goto_c
.end method
