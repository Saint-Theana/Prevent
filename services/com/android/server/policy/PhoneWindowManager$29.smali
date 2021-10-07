.class Lcom/android/server/policy/PhoneWindowManager$29;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$dockedStackBounds:Landroid/graphics/Rect;

.field final synthetic val$dockedVisibility:I

.field final synthetic val$fullscreenStackBounds:Landroid/graphics/Rect;

.field final synthetic val$fullscreenVisibility:I

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I

.field final synthetic val$win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Z)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$visibility"    # I
    .param p3, "val$fullscreenVisibility"    # I
    .param p4, "val$dockedVisibility"    # I
    .param p5, "val$fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "val$dockedStackBounds"    # Landroid/graphics/Rect;
    .param p7, "val$win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p8, "val$needsMenu"    # Z

    .prologue
    .line 9276
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$visibility:I

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$fullscreenVisibility:I

    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$dockedVisibility:I

    iput-object p5, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$fullscreenStackBounds:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$dockedStackBounds:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean p8, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$needsMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 9279
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 9280
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_21

    .line 9281
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$visibility:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$fullscreenVisibility:I

    .line 9282
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$dockedVisibility:I

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$fullscreenStackBounds:Landroid/graphics/Rect;

    .line 9283
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$dockedStackBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9282
    const/4 v4, -0x1

    .line 9281
    invoke-interface/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 9284
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$needsMenu:Z

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(Z)V

    .line 9278
    :cond_21
    return-void
.end method
