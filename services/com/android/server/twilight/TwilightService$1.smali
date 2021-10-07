.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastTwilightState()Lcom/android/server/twilight/TwilightState;
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 110
    :try_start_7
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 86
    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    .line 87
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_35

    move-result v1

    if-eqz v1, :cond_2a

    :cond_28
    :goto_28
    monitor-exit v2

    .line 84
    return-void

    .line 90
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_35

    goto :goto_28

    .line 85
    .end local v0    # "wasEmpty":Z
    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 98
    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    .line 99
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    if-nez v0, :cond_32

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 102
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit v2

    .line 96
    return-void

    .line 97
    .end local v0    # "wasEmpty":Z
    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1
.end method
