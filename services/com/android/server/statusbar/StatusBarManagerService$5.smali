.class Lcom/android/server/statusbar/StatusBarManagerService$5;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$dockedBounds:Landroid/graphics/Rect;

.field final synthetic val$dockedStackVis:I

.field final synthetic val$fullscreenBounds:Landroid/graphics/Rect;

.field final synthetic val$fullscreenStackVis:I

.field final synthetic val$mask:I

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$vis"    # I
    .param p3, "val$fullscreenStackVis"    # I
    .param p4, "val$dockedStackVis"    # I
    .param p5, "val$mask"    # I
    .param p6, "val$fullscreenBounds"    # Landroid/graphics/Rect;
    .param p7, "val$dockedBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$vis:I

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$fullscreenStackVis:I

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$dockedStackVis:I

    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$mask:I

    iput-object p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$fullscreenBounds:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$dockedBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 767
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$vis:I

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$fullscreenStackVis:I

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$dockedStackVis:I

    .line 768
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$mask:I

    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$fullscreenBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$dockedBounds:Landroid/graphics/Rect;

    .line 767
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 764
    :cond_1d
    :goto_1d
    return-void

    .line 769
    :catch_1e
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_1d
.end method
