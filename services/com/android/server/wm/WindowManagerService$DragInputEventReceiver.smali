.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field private mIsStartEvent:Z

.field private mStylusButtonDownAtStart:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 793
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    .line 792
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 798
    const/4 v3, 0x0

    .line 800
    .local v3, "handled":Z
    :try_start_1
    instance-of v8, p1, Landroid/view/MotionEvent;

    if-eqz v8, :cond_52

    .line 801
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_52

    .line 802
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v8, :cond_52

    .line 803
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    .line 804
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 805
    .local v2, "endDrag":Z
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 806
    .local v6, "newX":F
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 808
    .local v7, "newY":F
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_56

    const/4 v4, 0x1

    .line 810
    .local v4, "isStylusButtonDown":Z
    :goto_29
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v8, :cond_35

    .line 811
    if-eqz v4, :cond_32

    .line 814
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 816
    :cond_32
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    .line 819
    :cond_35
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_ac

    .line 855
    .end local v2    # "endDrag":Z
    :goto_3c
    :pswitch_3c
    if-eqz v2, :cond_51

    .line 858
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_6c
    .catchall {:try_start_1 .. :try_end_43} :catchall_89

    .line 859
    :try_start_43
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_a8

    :try_start_4a
    monitor-exit v9

    .line 861
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 862
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_6c
    .catchall {:try_start_4a .. :try_end_51} :catchall_89

    .line 865
    :cond_51
    const/4 v3, 0x1

    .line 870
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :cond_52
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 797
    :goto_55
    return-void

    .line 808
    .restart local v2    # "endDrag":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :cond_56
    const/4 v4, 0x0

    .restart local v4    # "isStylusButtonDown":Z
    goto :goto_29

    .line 827
    :pswitch_58
    :try_start_58
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v8, :cond_5e

    if-eqz v4, :cond_7a

    .line 834
    :cond_5e
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_63} :catch_6c
    .catchall {:try_start_58 .. :try_end_63} :catchall_89

    .line 836
    :try_start_63
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_91

    :try_start_6a
    monitor-exit v9
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_6c
    .catchall {:try_start_6a .. :try_end_6b} :catchall_89

    goto :goto_3c

    .line 867
    .end local v2    # "endDrag":Z
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :catch_6c
    move-exception v1

    .line 868
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6d
    const-string/jumbo v8, "WindowManager"

    const-string/jumbo v9, "Exception caught by drag handleMotion"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_89

    .line 870
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_55

    .line 830
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endDrag":Z
    .restart local v4    # "isStylusButtonDown":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :cond_7a
    :try_start_7a
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7f} :catch_6c
    .catchall {:try_start_7a .. :try_end_7f} :catchall_89

    .line 831
    :try_start_7f
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8e

    move-result v2

    .local v2, "endDrag":Z
    :try_start_87
    monitor-exit v9
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_6c
    .catchall {:try_start_87 .. :try_end_88} :catchall_89

    goto :goto_3c

    .line 869
    .end local v2    # "endDrag":Z
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :catchall_89
    move-exception v8

    .line 870
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 869
    throw v8

    .line 830
    .local v2, "endDrag":Z
    .restart local v4    # "isStylusButtonDown":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :catchall_8e
    move-exception v8

    :try_start_8f
    monitor-exit v9

    throw v8

    .line 834
    :catchall_91
    move-exception v8

    monitor-exit v9

    throw v8

    .line 844
    :pswitch_94
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_99} :catch_6c
    .catchall {:try_start_8f .. :try_end_99} :catchall_89

    .line 845
    :try_start_99
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_a3

    move-result v2

    .local v2, "endDrag":Z
    :try_start_a1
    monitor-exit v9

    goto :goto_3c

    .line 844
    .local v2, "endDrag":Z
    :catchall_a3
    move-exception v8

    monitor-exit v9

    throw v8

    .line 851
    :pswitch_a6
    const/4 v2, 0x1

    goto :goto_3c

    .line 858
    .end local v2    # "endDrag":Z
    :catchall_a8
    move-exception v8

    monitor-exit v9

    throw v8
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ab} :catch_6c
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_89

    .line 819
    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_94
        :pswitch_58
        :pswitch_a6
    .end packed-switch
.end method
