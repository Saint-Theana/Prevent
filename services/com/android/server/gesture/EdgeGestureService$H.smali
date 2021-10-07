.class final Lcom/android/server/gesture/EdgeGestureService$H;
.super Landroid/os/Handler;
.source "EdgeGestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gesture/EdgeGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gesture/EdgeGestureService;


# direct methods
.method public constructor <init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/gesture/EdgeGestureService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    .line 342
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 341
    return-void
.end method

.method private updateServiceHandler(II)V
    .registers 5
    .param p1, "positions"    # I
    .param p2, "sensitivity"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get4(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 374
    :try_start_7
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 375
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/gesture/EdgeGestureInputFilter;->updatePositions(I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->updateSensitivity(I)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v1

    .line 372
    return-void

    .line 373
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 346
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 354
    :pswitch_6
    const/16 v0, 0x7d17

    invoke-virtual {p0, v0}, Lcom/android/server/gesture/EdgeGestureService$H;->removeMessages(I)V

    .line 355
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/gesture/EdgeGestureService;->-wrap0(Lcom/android/server/gesture/EdgeGestureService;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-wrap2(Lcom/android/server/gesture/EdgeGestureService;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get0(Lcom/android/server/gesture/EdgeGestureService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v1}, Lcom/android/server/gesture/EdgeGestureService;->-get1(Lcom/android/server/gesture/EdgeGestureService;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/gesture/EdgeGestureService$H;->updateServiceHandler(II)V

    goto :goto_5

    .line 362
    :pswitch_30
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-wrap2(Lcom/android/server/gesture/EdgeGestureService;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get0(Lcom/android/server/gesture/EdgeGestureService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v1}, Lcom/android/server/gesture/EdgeGestureService;->-get1(Lcom/android/server/gesture/EdgeGestureService;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/gesture/EdgeGestureService$H;->updateServiceHandler(II)V

    goto :goto_5

    .line 347
    nop

    :pswitch_data_46
    .packed-switch 0x7d17
        :pswitch_6
        :pswitch_5
        :pswitch_30
    .end packed-switch
.end method
