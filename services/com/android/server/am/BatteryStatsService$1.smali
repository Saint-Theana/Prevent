.class Lcom/android/server/am/BatteryStatsService$1;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;->setBatteryState(IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field final synthetic val$chargeUAh:I

.field final synthetic val$health:I

.field final synthetic val$level:I

.field final synthetic val$plugType:I

.field final synthetic val$status:I

.field final synthetic val$temp:I

.field final synthetic val$volt:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIII)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/am/BatteryStatsService;
    .param p2, "val$plugType"    # I
    .param p3, "val$status"    # I
    .param p4, "val$health"    # I
    .param p5, "val$level"    # I
    .param p6, "val$temp"    # I
    .param p7, "val$volt"    # I
    .param p8, "val$chargeUAh"    # I

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 1011
    :try_start_5
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    if-nez v0, :cond_2b

    const/4 v8, 0x1

    .line 1012
    .local v8, "onBattery":Z
    :goto_a
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-ne v0, v8, :cond_2d

    .line 1015
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    .line 1016
    iget v7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    .line 1015
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIII)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_54

    monitor-exit v9

    .line 1017
    return-void

    .line 1011
    .end local v8    # "onBattery":Z
    :cond_2b
    const/4 v8, 0x0

    .restart local v8    # "onBattery":Z
    goto :goto_a

    :cond_2d
    monitor-exit v9

    .line 1023
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string/jumbo v1, "battery-state"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    .line 1024
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 1025
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    .line 1026
    iget v7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    .line 1025
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIII)V
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_57

    monitor-exit v9

    .line 1009
    return-void

    .line 1010
    .end local v8    # "onBattery":Z
    :catchall_54
    move-exception v0

    monitor-exit v9

    throw v0

    .line 1024
    .restart local v8    # "onBattery":Z
    :catchall_57
    move-exception v0

    monitor-exit v9

    throw v0
.end method
