.class Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
.super Landroid/os/Handler;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/emergency/EmergencyAffordanceService;
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 187
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 186
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 191
    :goto_5
    return-void

    .line 194
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap3(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    goto :goto_5

    .line 197
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap0(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    goto :goto_5

    .line 200
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap1(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    goto :goto_5

    .line 192
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
