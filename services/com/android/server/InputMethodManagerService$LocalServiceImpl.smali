.class final Lcom/android/server/InputMethodManagerService$LocalServiceImpl;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3936
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 3935
    return-void
.end method


# virtual methods
.method public hideCurrentInputMethod()V
    .registers 3

    .prologue
    const/16 v1, 0x40b

    .line 3955
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3956
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3954
    return-void
.end method

.method public setInteractive(Z)V
    .registers 7
    .param p1, "interactive"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3942
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 3943
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    .line 3942
    :goto_8
    const/16 v4, 0xbd6

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3940
    return-void

    :cond_12
    move v0, v1

    .line 3943
    goto :goto_8
.end method

.method public switchInputMethod(Z)V
    .registers 7
    .param p1, "forwardDirection"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3949
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 3950
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    .line 3949
    :goto_8
    const/16 v4, 0xbea

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3947
    return-void

    :cond_12
    move v0, v1

    .line 3950
    goto :goto_8
.end method
