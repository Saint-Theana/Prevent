.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/wm/TaskPositioner;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "choreographer"    # Landroid/view/Choreographer;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 122
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v6, 0x1

    .line 127
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    .line 128
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    .line 129
    :cond_d
    return-void

    :cond_e
    move-object v10, p1

    .line 131
    check-cast v10, Landroid/view/MotionEvent;

    .line 132
    .local v10, "motionEvent":Landroid/view/MotionEvent;
    const/4 v9, 0x0

    .line 135
    .local v9, "handled":Z
    :try_start_12
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_100
    .catchall {:try_start_12 .. :try_end_17} :catchall_112

    move-result v0

    if-eqz v0, :cond_1f

    .line 139
    const/4 v9, 0x1

    .line 219
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 140
    return-void

    .line 143
    :cond_1f
    :try_start_1f
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 144
    .local v11, "newX":F
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    .line 146
    .local v12, "newY":F
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_132

    .line 188
    :cond_2e
    :goto_2e
    :pswitch_2e
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v13

    .line 190
    .local v13, "wasResizing":Z
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_45} :catch_100
    .catchall {:try_start_1f .. :try_end_45} :catchall_112

    .line 191
    :try_start_45
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-wrap1(Lcom/android/server/wm/TaskPositioner;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_127

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4b} :catch_100
    .catchall {:try_start_4a .. :try_end_4b} :catchall_112

    .line 194
    if-eqz v13, :cond_67

    .line 197
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 198
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x3

    .line 197
    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 201
    :cond_67
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v0

    if-eqz v0, :cond_8f

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v0

    if-ne v0, v6, :cond_12a

    .line 203
    const/4 v2, 0x0

    .line 205
    .local v2, "createMode":I
    :goto_78
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 207
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 205
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_8f} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_8f} :catch_100
    .catchall {:try_start_4d .. :try_end_8f} :catchall_112

    .line 213
    .end local v2    # "createMode":I
    :cond_8f
    :goto_8f
    :try_start_8f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9c} :catch_100
    .catchall {:try_start_8f .. :try_end_9c} :catchall_112

    .line 215
    .end local v13    # "wasResizing":Z
    :cond_9c
    const/4 v9, 0x1

    .line 219
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 126
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :goto_a0
    return-void

    .line 157
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :pswitch_a1
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_aa} :catch_100
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_112

    .line 158
    :try_start_aa
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3, v11, v12}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_c4
    .catchall {:try_start_aa .. :try_end_c4} :catchall_10f

    :try_start_c4
    monitor-exit v1

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 163
    const-string/jumbo v0, "wm.TaskPositioner.resizeTask"

    .line 162
    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_df} :catch_100
    .catchall {:try_start_c4 .. :try_end_df} :catchall_112

    .line 165
    :try_start_df
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    .line 165
    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_f9} :catch_130
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_f9} :catch_100
    .catchall {:try_start_df .. :try_end_f9} :catchall_112

    .line 169
    :goto_f9
    const-wide/16 v0, 0x20

    :try_start_fb
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_100
    .catchall {:try_start_fb .. :try_end_fe} :catchall_112

    goto/16 :goto_2e

    .line 216
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :catch_100
    move-exception v8

    .line 217
    .local v8, "e":Ljava/lang/Exception;
    :try_start_101
    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Exception caught by drag handleMotion"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_112

    .line 219
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_a0

    .line 157
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :catchall_10f
    move-exception v0

    :try_start_110
    monitor-exit v1

    throw v0
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_112} :catch_100
    .catchall {:try_start_110 .. :try_end_112} :catchall_112

    .line 218
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :catchall_112
    move-exception v0

    .line 219
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 218
    throw v0

    .line 177
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :pswitch_117
    :try_start_117
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_2e

    .line 184
    :pswitch_11f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_2e

    .line 190
    .restart local v13    # "wasResizing":Z
    :catchall_127
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_12a} :catch_100
    .catchall {:try_start_117 .. :try_end_12a} :catchall_112

    .line 204
    :cond_12a
    const/4 v2, 0x1

    .restart local v2    # "createMode":I
    goto/16 :goto_78

    .line 209
    .end local v2    # "createMode":I
    :catch_12d
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_8f

    .line 167
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v13    # "wasResizing":Z
    :catch_130
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto :goto_f9

    .line 146
    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_117
        :pswitch_a1
        :pswitch_11f
    .end packed-switch
.end method
