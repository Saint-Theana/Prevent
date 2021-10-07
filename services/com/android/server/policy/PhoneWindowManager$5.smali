.class Lcom/android/server/policy/PhoneWindowManager$5;
.super Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;I)V
    .registers 9
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;
    .param p4, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 1287
    const/4 v0, 0x0

    .line 1289
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_1a

    .line 1290
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1299
    .end local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_a
    :goto_a
    if-eqz v0, :cond_48

    .line 1300
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap22(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$5;->dropEventsUntilLift()Z

    .line 1302
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->-set0(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 1286
    :goto_19
    return-void

    .line 1291
    .restart local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1a
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_29

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-nez v1, :cond_29

    .line 1292
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_a

    .line 1293
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_29
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_38

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v1, v3, :cond_38

    .line 1294
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_a

    .line 1295
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_38
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_a

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1296
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_a

    .line 1304
    .end local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$5;->restoreListenerState()V

    goto :goto_19
.end method
