.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final DO_DISPLAY_ADDED:I = 0x1b

.field public static final DO_DISPLAY_CHANGED:I = 0x1d

.field public static final DO_DISPLAY_REMOVED:I = 0x1c

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FINISH_TASK_POSITIONING:I = 0x28

.field public static final FORCE_GC:I = 0xf

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final NOTIFY_APP_TRANSITION_CANCELLED:I = 0x30

.field public static final NOTIFY_APP_TRANSITION_FINISHED:I = 0x31

.field public static final NOTIFY_APP_TRANSITION_STARTING:I = 0x2f

.field public static final NOTIFY_DOCKED_STACK_MINIMIZED_CHANGED:I = 0x35

.field public static final NOTIFY_STARTING_WINDOW_DRAWN:I = 0x32

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESIZE_STACK:I = 0x2a

.field public static final RESIZE_TASK:I = 0x2b

.field public static final SEAMLESS_ROTATION_TIMEOUT:I = 0x36

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final TAP_OUTSIDE_TASK:I = 0x1f

.field public static final TWO_FINGER_SCROLL_START:I = 0x2c

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_DOCKED_STACK_DIVIDER:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 8326
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 52
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8401
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_92c

    .line 8397
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 8406
    :pswitch_8
    const/4 v15, 0x0

    .line 8408
    .local v15, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8410
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2c

    .line 8412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 8415
    .end local v15    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 8416
    .local v24, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_8e

    .line 8417
    .local v28, "newFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_44

    monitor-exit v3

    .line 8419
    return-void

    .line 8421
    :cond_44
    :try_start_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v28

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 8424
    if-eqz v28, :cond_56

    if-eqz v24, :cond_56

    .line 8425
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_8e

    move-result v2

    if-eqz v2, :cond_80

    .end local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_56
    :goto_56
    monitor-exit v3

    .line 8434
    if-eqz v15, :cond_5c

    .line 8435
    invoke-virtual {v15}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    .line 8440
    :cond_5c
    if-eqz v28, :cond_71

    .line 8442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 8443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap7(Lcom/android/server/wm/WindowManagerService;)V

    .line 8446
    :cond_71
    if-eqz v24, :cond_7

    .line 8448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    goto :goto_7

    .line 8427
    .restart local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    :cond_80
    :try_start_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_8e

    .line 8428
    const/16 v24, 0x0

    .local v24, "lastFocus":Lcom/android/server/wm/WindowState;
    goto :goto_56

    .line 8408
    .end local v24    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v28    # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_8e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8455
    :pswitch_91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8456
    :try_start_98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 8457
    .local v26, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;
    :try_end_ab
    .catchall {:try_start_98 .. :try_end_ab} :catchall_cd

    monitor-exit v3

    .line 8460
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 8461
    .local v13, "N":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_b2
    move/from16 v0, v23

    if-ge v0, v13, :cond_7

    .line 8464
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 8461
    add-int/lit8 v23, v23, 0x1

    goto :goto_b2

    .line 8455
    .end local v13    # "N":I
    .end local v23    # "i":I
    .end local v26    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_cd
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8469
    :pswitch_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8470
    :try_start_d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_e0
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_e3

    :cond_e0
    :goto_e0
    monitor-exit v3

    goto/16 :goto_7

    .line 8469
    :catchall_e3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8475
    :pswitch_e6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8476
    .local v49, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v33, v0

    .line 8478
    .local v33, "sd":Lcom/android/server/wm/StartingData;
    if-nez v33, :cond_f7

    .line 8480
    return-void

    .line 8486
    :cond_f7
    const/16 v44, 0x0

    .line 8488
    .local v44, "view":Landroid/view/View;
    if-eqz v49, :cond_17e

    :try_start_fb
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_17e

    .line 8489
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v12, v2, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 8490
    :goto_107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v33

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    .line 8491
    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v33

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v33

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v33

    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    .line 8492
    move-object/from16 v0, v33

    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    .line 8490
    invoke-interface/range {v2 .. v12}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)Landroid/view/View;
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_134} :catch_180

    move-result-object v44

    .line 8497
    .end local v44    # "view":Landroid/view/View;
    :goto_135
    if-eqz v44, :cond_7

    .line 8498
    const/4 v14, 0x0

    .line 8500
    .local v14, "abort":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8501
    :try_start_13f
    move-object/from16 v0, v49

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_14b

    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_18d

    .line 8504
    :cond_14b
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_15c

    .line 8509
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8510
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_15b
    .catchall {:try_start_13f .. :try_end_15b} :catchall_194

    .line 8511
    const/4 v14, 0x1

    :cond_15c
    :goto_15c
    monitor-exit v3

    .line 8523
    if-eqz v14, :cond_7

    .line 8525
    :try_start_15f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v44

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16e} :catch_170

    goto/16 :goto_7

    .line 8526
    :catch_170
    move-exception v21

    .line 8527
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 8489
    .end local v14    # "abort":Z
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v44    # "view":Landroid/view/View;
    :cond_17e
    const/4 v12, 0x0

    .local v12, "overrideConfig":Landroid/content/res/Configuration;
    goto :goto_107

    .line 8493
    .end local v12    # "overrideConfig":Landroid/content/res/Configuration;
    :catch_180
    move-exception v21

    .line 8494
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when adding starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_135

    .line 8514
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v44    # "view":Landroid/view/View;
    .restart local v14    # "abort":Z
    :cond_18d
    :try_start_18d
    move-object/from16 v0, v44

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;
    :try_end_193
    .catchall {:try_start_18d .. :try_end_193} :catchall_194

    goto :goto_15c

    .line 8500
    :catchall_194
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8534
    .end local v14    # "abort":Z
    .end local v33    # "sd":Lcom/android/server/wm/StartingData;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_197
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8535
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v40, 0x0

    .line 8536
    .local v40, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 8537
    .restart local v44    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8542
    :try_start_1aa
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1d0

    .line 8543
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v44, v0

    .line 8544
    .local v44, "view":Landroid/view/View;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v40, v0

    .line 8545
    .local v40, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8546
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8547
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8548
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_1d0
    .catchall {:try_start_1aa .. :try_end_1d0} :catchall_1f0

    .end local v40    # "token":Landroid/os/IBinder;
    .end local v44    # "view":Landroid/view/View;
    :cond_1d0
    monitor-exit v3

    .line 8551
    if-eqz v44, :cond_7

    .line 8553
    :try_start_1d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1e0} :catch_1e2

    goto/16 :goto_7

    .line 8554
    :catch_1e2
    move-exception v21

    .line 8555
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 8537
    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_1f0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8561
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_1f3
    const/16 v40, 0x0

    .line 8562
    .local v40, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 8564
    .end local v40    # "token":Landroid/os/IBinder;
    :goto_1f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8565
    :try_start_1fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 8566
    .restart local v13    # "N":I
    if-lez v13, :cond_e0

    .line 8569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v13, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8576
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;
    :try_end_21c
    .catchall {:try_start_1fe .. :try_end_21c} :catchall_25c

    if-nez v2, :cond_220

    monitor-exit v3

    goto :goto_1f7

    .line 8580
    :cond_220
    :try_start_220
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v44, v0

    .line 8581
    .restart local v44    # "view":Landroid/view/View;
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v40, v0

    .line 8582
    .local v40, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8583
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8584
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8585
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_240
    .catchall {:try_start_220 .. :try_end_240} :catchall_25c

    monitor-exit v3

    .line 8589
    :try_start_241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_24e} :catch_24f

    goto :goto_1f7

    .line 8590
    :catch_24f
    move-exception v21

    .line 8591
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Exception when removing starting window"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f7

    .line 8564
    .end local v13    # "N":I
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v40    # "token":Landroid/os/IBinder;
    .end local v44    # "view":Landroid/view/View;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_25c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8597
    :pswitch_25f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8602
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_267
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_26e
    .catch Landroid/os/RemoteException; {:try_start_267 .. :try_end_26e} :catch_270

    goto/16 :goto_7

    .line 8603
    :catch_270
    move-exception v22

    .local v22, "ex":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 8608
    .end local v22    # "ex":Landroid/os/RemoteException;
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_273
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    .line 8610
    .restart local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_299

    const/16 v30, 0x1

    .line 8611
    .local v30, "nowVisible":Z
    :goto_283
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_29c

    const/16 v29, 0x1

    .line 8618
    .local v29, "nowGone":Z
    :goto_28b
    if-eqz v30, :cond_29f

    .line 8619
    :try_start_28d
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_7

    .line 8623
    :catch_296
    move-exception v22

    .restart local v22    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 8610
    .end local v22    # "ex":Landroid/os/RemoteException;
    .end local v29    # "nowGone":Z
    .end local v30    # "nowVisible":Z
    :cond_299
    const/16 v30, 0x0

    .restart local v30    # "nowVisible":Z
    goto :goto_283

    .line 8611
    :cond_29c
    const/16 v29, 0x0

    .restart local v29    # "nowGone":Z
    goto :goto_28b

    .line 8621
    :cond_29f
    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_2a6
    .catch Landroid/os/RemoteException; {:try_start_28d .. :try_end_2a6} :catch_296

    goto/16 :goto_7

    .line 8629
    .end local v29    # "nowGone":Z
    .end local v30    # "nowVisible":Z
    .end local v49    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :pswitch_2a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8630
    :try_start_2af
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 8632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v48

    .line 8633
    .local v48, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wm/WindowList;->size()I

    move-result v23

    .line 8634
    .restart local v23    # "i":I
    :cond_2cb
    :goto_2cb
    if-lez v23, :cond_314

    .line 8635
    add-int/lit8 v23, v23, -0x1

    .line 8636
    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/wm/WindowState;

    .line 8637
    .local v45, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v45

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_2cb

    .line 8638
    const/4 v2, 0x0

    move-object/from16 v0, v45

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 8639
    sub-long/2addr v4, v6

    long-to-int v2, v4

    move-object/from16 v0, v45

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 8641
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_310
    .catchall {:try_start_2af .. :try_end_310} :catchall_311

    goto :goto_2cb

    .line 8629
    .end local v23    # "i":I
    .end local v45    # "w":Lcom/android/server/wm/WindowState;
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_311
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8644
    .restart local v23    # "i":I
    .restart local v48    # "windows":Lcom/android/server/wm/WindowList;
    :cond_314
    :try_start_314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_31d
    .catchall {:try_start_314 .. :try_end_31d} :catchall_311

    goto/16 :goto_e0

    .line 8650
    .end local v23    # "i":I
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :pswitch_31f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8651
    :try_start_326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_34a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34a

    .line 8652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e0

    .line 8657
    :cond_34a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 8658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_35c
    .catchall {:try_start_326 .. :try_end_35c} :catchall_35e

    goto/16 :goto_e0

    .line 8650
    :catchall_35e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8665
    :pswitch_361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8666
    const-string/jumbo v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 8665
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8668
    const-string/jumbo v3, "transition_animation_scale"

    .line 8669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 8667
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 8671
    const-string/jumbo v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 8670
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_7

    .line 8677
    :pswitch_3a5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 8678
    .local v27, "mode":I
    packed-switch v27, :pswitch_data_99a

    goto/16 :goto_7

    .line 8680
    :pswitch_3b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 8681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8682
    const-string/jumbo v4, "window_animation_scale"

    .line 8683
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 8680
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    goto/16 :goto_7

    .line 8687
    :pswitch_3cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 8688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8689
    const-string/jumbo v4, "transition_animation_scale"

    .line 8690
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 8687
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto/16 :goto_7

    .line 8694
    :pswitch_3ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 8695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8696
    const-string/jumbo v4, "animator_duration_scale"

    .line 8697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 8694
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 8698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto/16 :goto_7

    .line 8706
    .end local v27    # "mode":I
    :pswitch_415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8709
    :try_start_41c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_430

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-eqz v2, :cond_43b

    .line 8712
    :cond_430
    const-wide/16 v4, 0x7d0

    const/16 v2, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_439
    .catchall {:try_start_41c .. :try_end_439} :catchall_44f

    monitor-exit v3

    .line 8713
    return-void

    .line 8717
    :cond_43b
    :try_start_43b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z
    :try_end_441
    .catchall {:try_start_43b .. :try_end_441} :catchall_44f

    if-eqz v2, :cond_445

    monitor-exit v3

    .line 8718
    return-void

    :cond_445
    monitor-exit v3

    .line 8721
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_7

    .line 8706
    :catchall_44f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8726
    :pswitch_452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_7

    .line 8731
    :pswitch_45b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8732
    :try_start_462
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 8734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v31

    .line 8735
    .local v31, "numStacks":I
    const/16 v36, 0x0

    .local v36, "stackNdx":I
    :goto_47e
    move/from16 v0, v36

    move/from16 v1, v31

    if-ge v0, v1, :cond_e0

    .line 8736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/TaskStack;

    .line 8737
    .local v35, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v38

    .line 8738
    .local v38, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v37, v2, -0x1

    .local v37, "taskNdx":I
    :goto_49c
    if-ltz v37, :cond_4f3

    .line 8739
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v0, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v43, v0

    .line 8740
    .local v43, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v42, v2, -0x1

    .local v42, "tokenNdx":I
    :goto_4b2
    if-ltz v42, :cond_4f0

    .line 8741
    move-object/from16 v0, v43

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/wm/AppWindowToken;

    .line 8742
    .local v39, "tok":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_4ed

    .line 8743
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force clearing freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    :try_end_4ed
    .catchall {:try_start_462 .. :try_end_4ed} :catchall_4f6

    .line 8740
    :cond_4ed
    add-int/lit8 v42, v42, -0x1

    goto :goto_4b2

    .line 8738
    .end local v39    # "tok":Lcom/android/server/wm/AppWindowToken;
    :cond_4f0
    add-int/lit8 v37, v37, -0x1

    goto :goto_49c

    .line 8735
    .end local v42    # "tokenNdx":I
    .end local v43    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4f3
    add-int/lit8 v36, v36, 0x1

    goto :goto_47e

    .line 8731
    .end local v31    # "numStacks":I
    .end local v35    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v36    # "stackNdx":I
    .end local v37    # "taskNdx":I
    .end local v38    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :catchall_4f6
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8754
    :pswitch_4f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8755
    :try_start_500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_e0

    .line 8756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 8757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "client-timeout"

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 8758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_51f
    .catchall {:try_start_500 .. :try_end_51f} :catchall_521

    goto/16 :goto_e0

    .line 8754
    :catchall_521
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8765
    :pswitch_524
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_7

    .line 8771
    :pswitch_534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v2, :cond_7

    .line 8772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8773
    :try_start_543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    :try_end_54a
    .catchall {:try_start_543 .. :try_end_54a} :catchall_554

    monitor-exit v3

    .line 8775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_7

    .line 8772
    :catchall_554
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8781
    :pswitch_557
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/IBinder;

    .line 8785
    .local v46, "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8787
    :try_start_566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_e0

    .line 8788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 8789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 8791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_591
    .catchall {:try_start_566 .. :try_end_591} :catchall_593

    goto/16 :goto_e0

    .line 8785
    :catchall_593
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8798
    .end local v46    # "win":Landroid/os/IBinder;
    :pswitch_596
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/IBinder;

    .line 8802
    .restart local v46    # "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8804
    :try_start_5a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_e0

    .line 8805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 8806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_5bf
    .catchall {:try_start_5a5 .. :try_end_5bf} :catchall_5c1

    goto/16 :goto_e0

    .line 8802
    :catchall_5c1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8813
    .end local v46    # "win":Landroid/os/IBinder;
    :pswitch_5c4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_7

    .line 8818
    :pswitch_5cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_7

    .line 8823
    :pswitch_5d6
    const/16 v17, 0x0

    .line 8824
    .local v17, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8825
    :try_start_5df
    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    .line 8828
    .local v17, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_617
    .catchall {:try_start_5df .. :try_end_617} :catchall_61f

    monitor-exit v3

    .line 8830
    if-eqz v17, :cond_7

    .line 8831
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_7

    .line 8824
    .end local v17    # "callback":Ljava/lang/Runnable;
    :catchall_61f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8837
    :pswitch_622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap9(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_7

    .line 8842
    :pswitch_633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_644

    const/4 v2, 0x1

    :goto_63f
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    goto/16 :goto_7

    :cond_644
    const/4 v2, 0x0

    goto :goto_63f

    .line 8847
    :pswitch_646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    goto/16 :goto_7

    .line 8853
    :pswitch_64f
    :try_start_64f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_659
    .catch Landroid/os/RemoteException; {:try_start_64f .. :try_end_659} :catch_65b

    goto/16 :goto_7

    .line 8854
    :catch_65b
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 8860
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_65e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    goto/16 :goto_7

    .line 8864
    :pswitch_66b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8865
    :try_start_672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap5(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_67d
    .catchall {:try_start_672 .. :try_end_67d} :catchall_67f

    goto/16 :goto_e0

    .line 8864
    :catchall_67f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8870
    :pswitch_682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8871
    :try_start_689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->-wrap4(Lcom/android/server/wm/WindowManagerService;I)V
    :try_end_694
    .catchall {:try_start_689 .. :try_end_694} :catchall_696

    goto/16 :goto_e0

    .line 8870
    :catchall_696
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8876
    :pswitch_699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->-wrap10(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;II)V

    goto/16 :goto_7

    .line 8881
    :pswitch_6b0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->-wrap6(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;II)V

    goto/16 :goto_7

    .line 8886
    :pswitch_6c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap3(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_7

    .line 8892
    :pswitch_6d0
    :try_start_6d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_6df
    .catch Landroid/os/RemoteException; {:try_start_6d0 .. :try_end_6df} :catch_6e1

    goto/16 :goto_7

    .line 8893
    :catch_6e1
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 8898
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_6e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8899
    :try_start_6eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    .line 8900
    .restart local v17    # "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;
    :try_end_6fa
    .catchall {:try_start_6eb .. :try_end_6fa} :catchall_723

    monitor-exit v3

    .line 8902
    if-eqz v17, :cond_700

    .line 8903
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    .line 8907
    .end local v17    # "callback":Ljava/lang/Runnable;
    :cond_700
    :pswitch_700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v32

    .line 8908
    .local v32, "scale":F
    invoke-static/range {v32 .. v32}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 8909
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/wm/Session;

    .line 8910
    .local v34, "session":Lcom/android/server/wm/Session;
    if-eqz v34, :cond_726

    .line 8912
    :try_start_715
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_71e
    .catch Landroid/os/RemoteException; {:try_start_715 .. :try_end_71e} :catch_720

    goto/16 :goto_7

    .line 8913
    :catch_720
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 8898
    .end local v20    # "e":Landroid/os/RemoteException;
    .end local v32    # "scale":F
    .end local v34    # "session":Lcom/android/server/wm/Session;
    :catchall_723
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8917
    .restart local v32    # "scale":F
    .restart local v34    # "session":Lcom/android/server/wm/Session;
    :cond_726
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 8918
    .local v18, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8919
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_734
    :try_start_734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_75a

    .line 8920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_757
    .catchall {:try_start_734 .. :try_end_757} :catchall_777

    .line 8919
    add-int/lit8 v23, v23, 0x1

    goto :goto_734

    :cond_75a
    monitor-exit v3

    .line 8924
    const/16 v23, 0x0

    :goto_75d
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_7

    .line 8926
    :try_start_765
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowSessionCallback;

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_774
    .catch Landroid/os/RemoteException; {:try_start_765 .. :try_end_774} :catch_928

    .line 8924
    :goto_774
    add-int/lit8 v23, v23, 0x1

    goto :goto_75d

    .line 8918
    :catchall_777
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8935
    .end local v18    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v23    # "i":I
    .end local v32    # "scale":F
    .end local v34    # "session":Lcom/android/server/wm/Session;
    :pswitch_77a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8937
    :try_start_781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->-wrap0(Lcom/android/server/wm/WindowManagerService;)Z
    :try_end_788
    .catchall {:try_start_781 .. :try_end_788} :catchall_795

    move-result v16

    .local v16, "bootAnimationComplete":Z
    monitor-exit v3

    .line 8939
    if-eqz v16, :cond_7

    .line 8940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_7

    .line 8935
    .end local v16    # "bootAnimationComplete":Z
    :catchall_795
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8945
    :pswitch_798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8946
    :try_start_79f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;
    :try_end_7a6
    .catchall {:try_start_79f .. :try_end_7a6} :catchall_7a8

    goto/16 :goto_e0

    .line 8945
    :catchall_7a8
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8951
    :pswitch_7ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8952
    :try_start_7b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result v2

    if-eqz v2, :cond_7c7

    .line 8953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_7c7
    .catchall {:try_start_7b2 .. :try_end_7c7} :catchall_7ed

    :cond_7c7
    monitor-exit v3

    .line 8958
    :pswitch_7c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8959
    :try_start_7cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    .line 8960
    .local v19, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 8961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->adjustForImeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    :try_end_7e8
    .catchall {:try_start_7cf .. :try_end_7e8} :catchall_7ea

    goto/16 :goto_e0

    .line 8958
    .end local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_7ea
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8951
    :catchall_7ed
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8967
    :pswitch_7f0
    :try_start_7f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v2, v5}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_807
    .catch Landroid/os/RemoteException; {:try_start_7f0 .. :try_end_807} :catch_809

    goto/16 :goto_7

    .line 8968
    :catch_809
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 8975
    .end local v20    # "e":Landroid/os/RemoteException;
    :pswitch_80c
    :try_start_80c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 8976
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_82f

    const/4 v5, 0x1

    :goto_824
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 8975
    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_82a
    .catch Landroid/os/RemoteException; {:try_start_80c .. :try_end_82a} :catch_82c

    goto/16 :goto_7

    .line 8977
    :catch_82c
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    .line 8976
    .end local v20    # "e":Landroid/os/RemoteException;
    :cond_82f
    const/4 v5, 0x0

    goto :goto_824

    .line 8983
    :pswitch_831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8984
    :try_start_838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .restart local v23    # "i":I
    :goto_844
    if-ltz v23, :cond_85a

    .line 8985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/wm/AppWindowToken;

    .line 8986
    .local v41, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/AppWindowToken;->clearTimedoutReplacesLocked()V

    .line 8984
    add-int/lit8 v23, v23, -0x1

    goto :goto_844

    .line 8988
    .end local v41    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_85a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mReplacingWindowTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_863
    .catchall {:try_start_838 .. :try_end_863} :catchall_873

    monitor-exit v3

    .line 8992
    .end local v23    # "i":I
    :pswitch_864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionStarting(I)V

    goto/16 :goto_7

    .line 8983
    :catchall_873
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8996
    :pswitch_876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionCancelled()V

    goto/16 :goto_7

    .line 9000
    :pswitch_881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyAppTransitionFinished()V

    goto/16 :goto_7

    .line 9004
    :pswitch_88c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->notifyStartingWindowDrawn()V

    goto/16 :goto_7

    .line 9008
    :pswitch_897
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/server/wm/WindowState;

    .line 9009
    .local v47, "window":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9021
    :try_start_8a6
    move-object/from16 v0, v47

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 9022
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 9023
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 9024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_8bf
    .catchall {:try_start_8a6 .. :try_end_8bf} :catchall_8c1

    goto/16 :goto_e0

    .line 9009
    :catchall_8c1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 9029
    .end local v47    # "window":Lcom/android/server/wm/WindowState;
    :pswitch_8c4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8d7

    const/4 v2, 0x1

    :goto_8d2
    invoke-virtual {v3, v2}, Landroid/app/ActivityManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    goto/16 :goto_7

    :cond_8d7
    const/4 v2, 0x0

    goto :goto_8d2

    .line 9035
    :pswitch_8d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 9036
    :try_start_8e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    .line 9037
    .restart local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v48

    .line 9038
    .restart local v48    # "windows":Lcom/android/server/wm/WindowList;
    const/16 v25, 0x0

    .line 9039
    .local v25, "layoutNeeded":Z
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .restart local v23    # "i":I
    :goto_8f4
    if-ltz v23, :cond_918

    .line 9040
    move-object/from16 v0, v48

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/wm/WindowState;

    .line 9041
    .restart local v45    # "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v45

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v2, :cond_915

    .line 9042
    const/16 v25, 0x1

    .line 9043
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 9044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 9039
    :cond_915
    add-int/lit8 v23, v23, -0x1

    goto :goto_8f4

    .line 9047
    .end local v45    # "w":Lcom/android/server/wm/WindowState;
    :cond_918
    if-eqz v25, :cond_e0

    .line 9048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_923
    .catchall {:try_start_8e0 .. :try_end_923} :catchall_925

    goto/16 :goto_e0

    .line 9035
    .end local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v23    # "i":I
    .end local v25    # "layoutNeeded":Z
    .end local v48    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_925
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8927
    .restart local v18    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .restart local v23    # "i":I
    .restart local v32    # "scale":F
    .restart local v34    # "session":Lcom/android/server/wm/Session;
    :catch_928
    move-exception v20

    .restart local v20    # "e":Landroid/os/RemoteException;
    goto/16 :goto_774

    .line 8401
    nop

    :pswitch_data_92c
    .packed-switch 0x2
        :pswitch_8
        :pswitch_91
        :pswitch_d0
        :pswitch_e6
        :pswitch_197
        :pswitch_1f3
        :pswitch_273
        :pswitch_25f
        :pswitch_7
        :pswitch_2a8
        :pswitch_7
        :pswitch_31f
        :pswitch_361
        :pswitch_415
        :pswitch_452
        :pswitch_45b
        :pswitch_524
        :pswitch_534
        :pswitch_557
        :pswitch_596
        :pswitch_5c4
        :pswitch_5cd
        :pswitch_5d6
        :pswitch_622
        :pswitch_64f
        :pswitch_65e
        :pswitch_66b
        :pswitch_682
        :pswitch_4f9
        :pswitch_6b0
        :pswitch_6d0
        :pswitch_6e4
        :pswitch_700
        :pswitch_633
        :pswitch_646
        :pswitch_77a
        :pswitch_798
        :pswitch_7ab
        :pswitch_6c7
        :pswitch_7c8
        :pswitch_80c
        :pswitch_7f0
        :pswitch_699
        :pswitch_7
        :pswitch_831
        :pswitch_864
        :pswitch_876
        :pswitch_881
        :pswitch_88c
        :pswitch_3a5
        :pswitch_897
        :pswitch_8c4
        :pswitch_8d9
    .end packed-switch

    .line 8678
    :pswitch_data_99a
    .packed-switch 0x0
        :pswitch_3b0
        :pswitch_3cf
        :pswitch_3ee
    .end packed-switch
.end method
