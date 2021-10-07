.class Lcom/android/server/pocket/PocketService$PocketHandler;
.super Landroid/os/Handler;
.source "PocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketHandler"
.end annotation


# static fields
.field public static final MSG_ADD_CALLBACK:I = 0x3

.field public static final MSG_DISPATCH_CALLBACKS:I = 0x2

.field public static final MSG_INTERACTIVE_CHANGED:I = 0x5

.field public static final MSG_REMOVE_CALLBACK:I = 0x4

.field public static final MSG_SENSOR_EVENT_LIGHT:I = 0x7

.field public static final MSG_SENSOR_EVENT_PROXIMITY:I = 0x6

.field public static final MSG_SET_LISTEN_EXTERNAL:I = 0x9

.field public static final MSG_SYSTEM_BOOTED:I = 0x1

.field public static final MSG_SYSTEM_READY:I = 0x0

.field public static final MSG_UNREGISTER_TIMEOUT:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    .line 210
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_7e

    .line 247
    invoke-static {}, Lcom/android/server/pocket/PocketService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_24
    return-void

    .line 217
    :pswitch_25
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-wrap10(Lcom/android/server/pocket/PocketService;)V

    goto :goto_24

    .line 220
    :pswitch_2b
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-wrap9(Lcom/android/server/pocket/PocketService;)V

    goto :goto_24

    .line 223
    :pswitch_31
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-wrap3(Lcom/android/server/pocket/PocketService;)V

    goto :goto_24

    .line 226
    :pswitch_37
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pocket/IPocketCallback;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap2(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V

    goto :goto_24

    .line 229
    :pswitch_41
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pocket/IPocketCallback;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap7(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V

    goto :goto_24

    .line 232
    :pswitch_4b
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_55

    :goto_51
    invoke-static {v2, v0}, Lcom/android/server/pocket/PocketService;->-wrap4(Lcom/android/server/pocket/PocketService;Z)V

    goto :goto_24

    :cond_55
    move v0, v1

    goto :goto_51

    .line 235
    :pswitch_57
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap6(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V

    goto :goto_24

    .line 238
    :pswitch_61
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap5(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V

    goto :goto_24

    .line 241
    :pswitch_6b
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-wrap11(Lcom/android/server/pocket/PocketService;)V

    goto :goto_24

    .line 244
    :pswitch_71
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_7b

    :goto_77
    invoke-static {v2, v0}, Lcom/android/server/pocket/PocketService;->-wrap8(Lcom/android/server/pocket/PocketService;Z)V

    goto :goto_24

    :cond_7b
    move v0, v1

    goto :goto_77

    .line 215
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2b
        :pswitch_31
        :pswitch_37
        :pswitch_41
        :pswitch_4b
        :pswitch_57
        :pswitch_61
        :pswitch_6b
        :pswitch_71
    .end packed-switch
.end method
