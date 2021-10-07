.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputFreezeReason:Ljava/lang/String;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 72
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .registers 5
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_a

    .line 170
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 172
    :cond_a
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1f

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 174
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    .line 173
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 176
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 168
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .registers 13
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 183
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 184
    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v1, p3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;I)I

    move-result p3

    .line 185
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 186
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 187
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 188
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 189
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 190
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 191
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 192
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_88

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_2c
    iput-boolean v1, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 193
    iget v1, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 194
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 195
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mUid:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 196
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 198
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 199
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 200
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 201
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 202
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 204
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDockedInEffect()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 206
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v2, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 207
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v2, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 208
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v2, p2, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 209
    iget v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    iget v2, p2, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 212
    :cond_78
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8a

    .line 216
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v1, v4, v1

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 225
    :goto_84
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 181
    return-void

    .line 192
    .end local v0    # "frame":Landroid/graphics/Rect;
    :cond_88
    const/4 v1, 0x0

    goto :goto_2c

    .line 218
    .restart local v0    # "frame":Landroid/graphics/Rect;
    :cond_8a
    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_84
.end method

.method private clearInputWindowHandlesLw()V
    .registers 4

    .prologue
    .line 229
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_10

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 228
    :cond_10
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 535
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 425
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 426
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 425
    :cond_f
    const/4 v0, 0x0

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_6
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mInputFreezeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    :cond_21
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .registers 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_11

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 506
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 508
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 497
    :cond_11
    return-void
.end method

.method public getPointerLayer()I
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 8
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 416
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 417
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .line 416
    :cond_f
    const/4 v0, 0x0

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_6
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .registers 18
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    .line 105
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 106
    .local v3, "aboveSystem":Z
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 107
    if-eqz p2, :cond_16

    .line 108
    :try_start_a
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v7, v0

    .line 109
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_16

    .line 110
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 113
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_16
    if-nez v4, :cond_20

    if-eqz p1, :cond_20

    .line 114
    iget-object v10, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    .line 117
    :cond_20
    if-eqz v7, :cond_7b

    .line 118
    const-string/jumbo v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Input event dispatching timed out sending to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 119
    iget-object v13, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    .line 118
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 120
    const-string/jumbo v13, ".  Reason: "

    .line 118
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 125
    const/16 v12, 0x7d3

    .line 124
    invoke-interface {v10, v12}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    .line 126
    .local v6, "systemAlertLayer":I
    iget v10, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v10, v6, :cond_79

    const/4 v3, 0x1

    .line 136
    .end local v6    # "systemAlertLayer":I
    :goto_5e
    iget-object v10, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v10, v4, v7, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_a .. :try_end_65} :catchall_a7

    monitor-exit v11

    .line 139
    if-eqz v4, :cond_c7

    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v10, :cond_c7

    .line 143
    :try_start_6c
    iget-object v10, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .line 144
    .local v2, "abort":Z
    if-nez v2, :cond_e3

    .line 147
    iget-wide v10, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_78} :catch_e6

    return-wide v10

    .line 126
    .end local v2    # "abort":Z
    .restart local v6    # "systemAlertLayer":I
    :cond_79
    const/4 v3, 0x0

    goto :goto_5e

    .line 127
    .end local v6    # "systemAlertLayer":I
    :cond_7b
    if-eqz v4, :cond_aa

    .line 128
    :try_start_7d
    const-string/jumbo v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Input event dispatching timed out sending to application "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 129
    iget-object v13, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    .line 128
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 130
    const-string/jumbo v13, ".  Reason: "

    .line 128
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_7d .. :try_end_a6} :catchall_a7

    goto :goto_5e

    .line 106
    :catchall_a7
    move-exception v10

    monitor-exit v11

    throw v10

    .line 132
    :cond_aa
    :try_start_aa
    const-string/jumbo v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_aa .. :try_end_c6} :catchall_a7

    goto :goto_5e

    .line 151
    :cond_c7
    if-eqz v7, :cond_e3

    .line 155
    :try_start_c9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 156
    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    .line 155
    move-object/from16 v0, p3

    invoke-interface {v10, v11, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_d6} :catch_e2

    move-result-wide v8

    .line 157
    .local v8, "timeout":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-ltz v10, :cond_e3

    .line 160
    const-wide/32 v10, 0xf4240

    mul-long/2addr v10, v8

    return-wide v10

    .line 162
    .end local v8    # "timeout":J
    :catch_e2
    move-exception v5

    .line 165
    :cond_e3
    :goto_e3
    const-wide/16 v10, 0x0

    return-wide v10

    .line 149
    :catch_e6
    move-exception v5

    .local v5, "ex":Landroid/os/RemoteException;
    goto :goto_e3
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 391
    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 362
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_14

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit v1

    .line 359
    return-void

    .line 362
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 7
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 82
    if-nez p1, :cond_3

    .line 83
    return-void

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 87
    :try_start_8
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 88
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2d

    .line 89
    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2f

    :cond_2d
    monitor-exit v2

    .line 81
    return-void

    .line 86
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 385
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v1, 0x1

    .line 476
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_a

    .line 481
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 482
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 475
    :cond_a
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 487
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_b

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 493
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 486
    :cond_b
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_9

    .line 530
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 531
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 524
    :cond_9
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v2, 0x0

    .line 464
    if-nez p1, :cond_b

    .line 465
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 462
    :goto_a
    return-void

    .line 467
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 468
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 469
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 471
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_a
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1b

    .line 446
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 450
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 453
    :cond_11
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 454
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 456
    if-eqz p2, :cond_1b

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 440
    :cond_1b
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 234
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_d

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFreezeReason:Ljava/lang/String;

    .line 520
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 512
    :cond_d
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .registers 28
    .param p1, "force"    # Z

    .prologue
    .line 240
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-eqz v2, :cond_9c

    .line 243
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 252
    const/4 v12, 0x0

    .line 255
    .local v12, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_9d

    const/16 v16, 0x1

    .line 256
    .local v16, "inDrag":Z
    :goto_18
    if-eqz v16, :cond_29

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v15, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 261
    .local v15, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_a1

    .line 262
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 269
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_29
    :goto_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v2, :cond_ae

    const/16 v17, 0x1

    .line 270
    .local v17, "inPositioning":Z
    :goto_33
    if-eqz v17, :cond_44

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v15, v2, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 275
    .restart local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_b1

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 283
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_44
    :goto_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_bd

    const/4 v10, 0x1

    .line 285
    .local v10, "addInputConsumerHandle":Z
    :goto_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_bf

    const/4 v11, 0x1

    .line 288
    .local v11, "addWallpaperInputConsumerHandle":Z
    :goto_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 289
    .local v19, "numDisplays":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v22, v0

    .line 290
    .local v22, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    const/4 v14, 0x0

    .local v14, "displayNdx":I
    :goto_69
    move/from16 v0, v19

    if-ge v14, v0, :cond_16f

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    .line 292
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v24

    .line 293
    .local v24, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .local v23, "winNdx":I
    :goto_83
    if-ltz v23, :cond_16b

    .line 294
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 295
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v18, v0

    .line 296
    .local v18, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 297
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v18, :cond_99

    if-nez v3, :cond_c1

    .line 293
    :cond_99
    :goto_99
    add-int/lit8 v23, v23, -0x1

    goto :goto_83

    .line 241
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v10    # "addInputConsumerHandle":Z
    .end local v11    # "addWallpaperInputConsumerHandle":Z
    .end local v12    # "disableWallpaperTouchEvents":Z
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "displayNdx":I
    .end local v16    # "inDrag":Z
    .end local v17    # "inPositioning":Z
    .end local v18    # "inputChannel":Landroid/view/InputChannel;
    .end local v19    # "numDisplays":I
    .end local v22    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .end local v23    # "winNdx":I
    .end local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_9c
    return-void

    .line 255
    .restart local v12    # "disableWallpaperTouchEvents":Z
    :cond_9d
    const/16 v16, 0x0

    goto/16 :goto_18

    .line 264
    .restart local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v16    # "inDrag":Z
    :cond_a1
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v25, "Drag is in progress but there is no drag window handle."

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 269
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_ae
    const/16 v17, 0x0

    goto :goto_33

    .line 278
    .restart local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v17    # "inPositioning":Z
    :cond_b1
    const-string/jumbo v2, "WindowManager"

    .line 279
    const-string/jumbo v25, "Repositioning is in progress but there is no drag window handle."

    .line 278
    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 283
    .end local v15    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_bd
    const/4 v10, 0x0

    .restart local v10    # "addInputConsumerHandle":Z
    goto :goto_4d

    .line 285
    :cond_bf
    const/4 v11, 0x0

    .restart local v11    # "addWallpaperInputConsumerHandle":Z
    goto :goto_56

    .line 297
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v14    # "displayNdx":I
    .restart local v18    # "inputChannel":Landroid/view/InputChannel;
    .restart local v19    # "numDisplays":I
    .restart local v22    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    .restart local v23    # "winNdx":I
    .restart local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_c1
    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_99

    .line 298
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAdjustedForMinimizedDock()Z

    move-result v2

    .line 297
    if-nez v2, :cond_99

    .line 302
    if-eqz v10, :cond_f9

    .line 303
    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v2, v0, :cond_f9

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 305
    const/4 v10, 0x0

    .line 308
    :cond_f9
    if-eqz v11, :cond_113

    .line 309
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v25, 0x7dd

    move/from16 v0, v25

    if-ne v2, v0, :cond_113

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 312
    const/4 v11, 0x0

    .line 316
    :cond_113
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 317
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v21, v0

    .line 318
    .local v21, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 320
    .local v6, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_162

    const/4 v8, 0x1

    .line 321
    .local v8, "hasFocus":Z
    :goto_128
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    .line 322
    .local v7, "isVisible":Z
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_133

    .line 325
    const/4 v12, 0x1

    .line 327
    :cond_133
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 328
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_166

    .line 329
    if-eqz v12, :cond_164

    const/4 v9, 0x0

    .line 330
    .local v9, "hasWallpaper":Z
    :goto_144
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_168

    const/16 v20, 0x1

    .line 334
    .local v20, "onDefaultDisplay":Z
    :goto_14c
    if-eqz v16, :cond_15b

    if-eqz v7, :cond_15b

    if-eqz v20, :cond_15b

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    :cond_15b
    move-object/from16 v2, p0

    .line 338
    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_99

    .line 320
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v20    # "onDefaultDisplay":Z
    :cond_162
    const/4 v8, 0x0

    .restart local v8    # "hasFocus":Z
    goto :goto_128

    .line 329
    .restart local v7    # "isVisible":Z
    :cond_164
    const/4 v9, 0x1

    .restart local v9    # "hasWallpaper":Z
    goto :goto_144

    .line 327
    .end local v9    # "hasWallpaper":Z
    :cond_166
    const/4 v9, 0x0

    .restart local v9    # "hasWallpaper":Z
    goto :goto_144

    .line 330
    :cond_168
    const/16 v20, 0x0

    .restart local v20    # "onDefaultDisplay":Z
    goto :goto_14c

    .line 290
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v18    # "inputChannel":Landroid/view/InputChannel;
    .end local v20    # "onDefaultDisplay":Z
    .end local v21    # "privateFlags":I
    :cond_16b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_69

    .line 343
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v23    # "winNdx":I
    .end local v24    # "windows":Lcom/android/server/wm/WindowList;
    :cond_16f
    if-eqz v11, :cond_17e

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 349
    :cond_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    .line 239
    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 372
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 373
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_c

    .line 375
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_13
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 379
    :cond_c
    :goto_c
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit v2

    return v1

    .line 372
    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1

    .line 376
    :catch_13
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_c
.end method
