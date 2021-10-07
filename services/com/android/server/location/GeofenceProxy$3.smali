.class Lcom/android/server/location/GeofenceProxy$3;
.super Landroid/os/Handler;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GeofenceProxy;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    .line 153
    :goto_5
    return-void

    .line 156
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 157
    :try_start_d
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get0(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 158
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap1(Lcom/android/server/location/GeofenceProxy;)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1c

    :cond_1a
    :goto_1a
    monitor-exit v1

    goto :goto_5

    .line 156
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 165
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_26
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get0(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 170
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap2(Lcom/android/server/location/GeofenceProxy;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap0(Lcom/android/server/location/GeofenceProxy;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap1(Lcom/android/server/location/GeofenceProxy;)V
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_3e

    goto :goto_1a

    .line 165
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 177
    :pswitch_41
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get2(Lcom/android/server/location/GeofenceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_48
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-get0(Lcom/android/server/location/GeofenceProxy;)Landroid/hardware/location/IGeofenceHardware;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 179
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->-wrap1(Lcom/android/server/location/GeofenceProxy;)V
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_56

    goto :goto_1a

    .line 177
    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0

    .line 154
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1f
        :pswitch_41
    .end packed-switch
.end method
