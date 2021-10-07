.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 2441
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->-wrap0(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2461
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2462
    .local v0, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2463
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2464
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-get1(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2460
    return-void
.end method

.method public setDisplayViewports(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V
    .registers 4
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->-wrap13(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;)V

    .line 2444
    return-void
.end method

.method public setInteractive(Z)V
    .registers 4
    .param p1, "interactive"    # Z

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get2(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-wrap7(JZ)V

    .line 2454
    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    .line 2475
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-get0(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 2476
    const/4 v1, 0x0

    .line 2478
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_9
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->-get0(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_32

    .line 2479
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    if-eqz p1, :cond_20

    :try_start_16
    const-string/jumbo v3, "1"

    :goto_19
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_3a
    .catchall {:try_start_16 .. :try_end_1c} :catchall_37

    .line 2483
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2474
    .end local v2    # "writer":Ljava/io/FileWriter;
    :cond_1f
    :goto_1f
    return-void

    .line 2479
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_20
    :try_start_20
    const-string/jumbo v3, "0"
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_3a
    .catchall {:try_start_20 .. :try_end_23} :catchall_37

    goto :goto_19

    .line 2480
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catch_24
    move-exception v0

    .line 2481
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/IOException;
    :goto_25
    :try_start_25
    const-string/jumbo v3, "InputManager"

    const-string/jumbo v4, "Unable to setPulseGestureEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_32

    .line 2483
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1f

    .line 2482
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_32
    move-exception v3

    .line 2483
    :goto_33
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2482
    throw v3

    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_37
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v1, "writer":Ljava/io/FileWriter;
    goto :goto_33

    .line 2480
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_3a
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_25
.end method

.method public toggleCapsLock(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get2(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->-wrap8(JI)V

    .line 2469
    return-void
.end method
