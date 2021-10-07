.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;
    }
.end annotation


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInGestureDetection:Z

.field private final mNonResizeableRegion:Landroid/graphics/Region;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;

.field private mTwoFingerScrolling:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/TaskTapPointerEventListener;Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onTwoFingerScroll(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskTapPointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 51
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 49
    return-void
.end method

.method private doGestureDetection(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 142
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 143
    :cond_e
    return-void

    .line 145
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 146
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 147
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 148
    .local v4, "y":I
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    .line 149
    .local v2, "isTouchInside":Z
    iget-boolean v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    if-nez v7, :cond_2d

    if-nez v0, :cond_42

    if-eqz v2, :cond_42

    .line 152
    :cond_2d
    if-eqz v2, :cond_45

    .line 153
    if-eq v0, v5, :cond_45

    .line 154
    const/4 v7, 0x6

    if-eq v0, v7, :cond_45

    .line 155
    const/4 v7, 0x3

    if-eq v0, v7, :cond_43

    .line 152
    :goto_37
    iput-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    .line 156
    iget-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    if-eqz v5, :cond_47

    .line 157
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 141
    :cond_42
    :goto_42
    return-void

    :cond_43
    move v5, v6

    .line 155
    goto :goto_37

    :cond_45
    move v5, v6

    .line 152
    goto :goto_37

    .line 159
    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 160
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->cancel()V

    .line 161
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 162
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto :goto_42
.end method

.method private onTwoFingerScroll(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    .line 169
    .local v0, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v1, v2

    .line 170
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    if-nez v2, :cond_21

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    .line 172
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 173
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v4, 0x2c

    .line 172
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 167
    :cond_21
    return-void
.end method

.method private stopTwoFingerScroll()V
    .registers 3

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    if-eqz v0, :cond_14

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    :cond_14
    return-void
.end method


# virtual methods
.method init()V
    .registers 5

    .prologue
    .line 58
    new-instance v0, Landroid/view/GestureDetector;

    .line 59
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;-><init>(Lcom/android/server/wm/TaskTapPointerEventListener;Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 58
    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 57
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->doGestureDetection(Landroid/view/MotionEvent;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_e2

    .line 63
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 69
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 70
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 72
    .local v5, "y":I
    monitor-enter p0

    .line 73
    :try_start_19
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-nez v6, :cond_30

    .line 74
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 75
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 74
    const/16 v8, 0x1f

    invoke-virtual {v6, v8, v4, v5, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_32

    :cond_30
    monitor-exit p0

    goto :goto_d

    .line 72
    :catchall_32
    move-exception v6

    monitor-exit p0

    throw v6

    .line 82
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_d

    .line 83
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto :goto_d

    .line 89
    :pswitch_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 90
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 92
    .restart local v5    # "y":I
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 93
    :try_start_4f
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_61

    move-result-object v3

    .local v3, "task":Lcom/android/server/wm/Task;
    monitor-exit v7

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    .line 96
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-eqz v3, :cond_5e

    if-nez v2, :cond_64

    .line 97
    :cond_5e
    iput v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    goto :goto_d

    .line 92
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :catchall_61
    move-exception v6

    monitor-exit v7

    throw v6

    .line 100
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_64
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 101
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_79

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 121
    :cond_79
    iput v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    goto :goto_d

    .line 102
    :cond_7c
    const/16 v1, 0x3e8

    .line 103
    .local v1, "iconType":I
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v4, v6, :cond_a3

    .line 105
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_97

    const/16 v1, 0x3f9

    .line 116
    :cond_8c
    :goto_8c
    iget v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v6, v1, :cond_d

    .line 117
    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 118
    invoke-virtual {v2, v1}, Landroid/view/InputDevice;->setPointerType(I)V

    goto/16 :goto_d

    .line 106
    :cond_97
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_a0

    const/16 v1, 0x3f8

    goto :goto_8c

    .line 107
    :cond_a0
    const/16 v1, 0x3f6

    goto :goto_8c

    .line 108
    :cond_a3
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-le v4, v6, :cond_be

    .line 110
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_b2

    const/16 v1, 0x3f8

    goto :goto_8c

    .line 111
    :cond_b2
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_bb

    const/16 v1, 0x3f9

    goto :goto_8c

    .line 112
    :cond_bb
    const/16 v1, 0x3f6

    goto :goto_8c

    .line 113
    :cond_be
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_ca

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_8c

    .line 114
    :cond_ca
    const/16 v1, 0x3f7

    goto :goto_8c

    .line 126
    .end local v1    # "iconType":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_cd
    iput v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    .line 128
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    if-eqz v2, :cond_d

    .line 129
    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Landroid/view/InputDevice;->setPointerType(I)V

    goto/16 :goto_d

    .line 135
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :pswitch_dc
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto/16 :goto_d

    .line 67
    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_dc
        :pswitch_35
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_dc
        :pswitch_40
        :pswitch_d
        :pswitch_d
        :pswitch_cd
    .end packed-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4
    .param p1, "newRegion"    # Landroid/graphics/Region;
    .param p2, "nonResizeableRegion"    # Landroid/graphics/Region;

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 197
    return-void

    .line 198
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
