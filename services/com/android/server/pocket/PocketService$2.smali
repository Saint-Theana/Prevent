.class Lcom/android/server/pocket/PocketService$2;
.super Ljava/lang/Object;
.source "PocketService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method constructor <init>(Lcom/android/server/pocket/PocketService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$2;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 384
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 377
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 378
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 379
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$2;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketService;->-get2(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    return-void
.end method
