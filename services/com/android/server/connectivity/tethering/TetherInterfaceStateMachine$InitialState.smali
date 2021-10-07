.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IControlsTethering;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 181
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    move-result v3

    const/4 v4, 0x1

    .line 179
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/server/connectivity/tethering/IControlsTethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    .line 178
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p0, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    .line 187
    const/4 v0, 0x1

    .line 188
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_3c

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_e
    return v0

    .line 190
    :sswitch_f
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    .line 191
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_e

    .line 194
    :sswitch_21
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get10(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_e

    .line 197
    :sswitch_2d
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    move-result-object v2

    .line 198
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    .line 197
    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    goto :goto_e

    .line 188
    nop

    :sswitch_data_3c
    .sparse-switch
        0x50066 -> :sswitch_f
        0x50068 -> :sswitch_21
        0x50071 -> :sswitch_2d
    .end sparse-switch
.end method
