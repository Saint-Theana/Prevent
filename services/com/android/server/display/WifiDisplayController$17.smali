.class Lcom/android/server/display/WifiDisplayController$17;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "val$oldDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .registers 12
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get15(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 730
    :cond_12
    :goto_12
    return-void

    .line 732
    :cond_13
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Opened RTSP connection with Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 733
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->-set7(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 735
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get12(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 737
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get19(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 738
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    .line 739
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get4(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-static {v2, v3, p5}, Lcom/android/server/display/WifiDisplayController;->-wrap0(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v2

    .line 738
    invoke-interface {v0, v2}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 742
    :cond_67
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap1(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 743
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->-wrap5(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    goto :goto_12
.end method

.method public onDisplayDisconnected()V
    .registers 4

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_46

    .line 750
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closed RTSP connection with Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get12(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 753
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set7(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 754
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap6(Lcom/android/server/display/WifiDisplayController;)V

    .line 748
    :cond_46
    return-void
.end method

.method public onDisplayError(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_4c

    .line 761
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lost RTSP connection with Wifi display due to error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 762
    const-string/jumbo v2, ": "

    .line 761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 762
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get12(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap8(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 759
    :cond_4c
    return-void
.end method
