.class final Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionBridge"
.end annotation


# instance fields
.field private final mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

.field private final mConnectionId:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3667
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 3668
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 3669
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 3670
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 3671
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3672
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18()Landroid/content/ComponentName;

    move-result-object v3

    .line 3671
    const/16 v4, -0x2710

    invoke-direct {v2, p1, v4, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 3674
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 3676
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 3677
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    invoke-virtual {v3, v4, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 3681
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3680
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3682
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    .line 3666
    return-void
.end method

.method private getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .prologue
    .line 3731
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3732
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1b

    .line 3733
    .local v0, "focusedWindowId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 3734
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    :cond_15
    monitor-exit v2

    .line 3737
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 3731
    .end local v0    # "focusedWindowId":I
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "windowId"    # I

    .prologue
    .line 3741
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 3742
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 3743
    const/4 v6, 0x2

    move v3, p1

    .line 3741
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAccessibilityFocusNotLocked(I)V
    .registers 4
    .param p1, "windowId"    # I

    .prologue
    .line 3686
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3687
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_b

    .line 3688
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 3685
    :cond_b
    return-void
.end method

.method public getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z
    .registers 13
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    const/4 v10, 0x0

    .line 3693
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 3694
    .local v1, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_8

    .line 3695
    return v10

    .line 3698
    :cond_8
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 3699
    :try_start_f
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3700
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3703
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v3

    .line 3704
    .local v3, "spec":Landroid/view/MagnificationSpec;
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3710
    :cond_2a
    :goto_2a
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get14(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v4

    .line 3711
    .local v4, "windowBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v7

    invoke-virtual {v5, v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowBounds(ILandroid/graphics/Rect;)Z

    .line 3712
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_56

    move-result v5

    if-nez v5, :cond_59

    monitor-exit v6

    .line 3713
    return v10

    .line 3705
    .end local v4    # "windowBounds":Landroid/graphics/Rect;
    :cond_41
    :try_start_41
    iget v5, v3, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v5, v5

    float-to-int v5, v5

    iget v7, v3, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v7, v7

    float-to-int v7, v7

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 3706
    iget v5, v3, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v5, v7, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->scale(F)V
    :try_end_55
    .catchall {:try_start_41 .. :try_end_55} :catchall_56

    goto :goto_2a

    .line 3698
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v3    # "spec":Landroid/view/MagnificationSpec;
    :catchall_56
    move-exception v5

    monitor-exit v6

    throw v5

    .line 3717
    .restart local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v3    # "spec":Landroid/view/MagnificationSpec;
    .restart local v4    # "windowBounds":Landroid/graphics/Rect;
    :cond_59
    :try_start_59
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get12(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    move-result-object v2

    .line 3718
    .local v2, "screenSize":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3719
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v5, v7}, Landroid/graphics/Rect;->intersect(IIII)Z
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_56

    move-result v5

    if-nez v5, :cond_72

    monitor-exit v6

    .line 3720
    return v10

    .line 3723
    :cond_72
    :try_start_72
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Point;->set(II)V
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_56

    monitor-exit v6

    .line 3726
    const/4 v5, 0x1

    return v5
.end method
