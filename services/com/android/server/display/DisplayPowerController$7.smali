.class Lcom/android/server/display/DisplayPowerController$7;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1338
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1329
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->-get3(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1331
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 1332
    .local v0, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_27

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->-get4(Lcom/android/server/display/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_27

    const/4 v1, 0x1

    .line 1333
    .local v1, "positive":Z
    :goto_21
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->-wrap2(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 1328
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_26
    return-void

    .line 1332
    .restart local v0    # "distance":F
    .restart local v2    # "time":J
    :cond_27
    const/4 v1, 0x0

    .restart local v1    # "positive":Z
    goto :goto_21
.end method
