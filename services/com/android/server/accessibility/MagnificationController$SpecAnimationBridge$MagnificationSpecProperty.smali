.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;
.super Landroid/util/Property;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnificationSpecProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;",
        "Landroid/view/MagnificationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 851
    const-class v0, Landroid/view/MagnificationSpec;

    const-string/jumbo v1, "spec"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 850
    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .registers 4
    .param p1, "object"    # Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .prologue
    .line 856
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 857
    :try_start_5
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 856
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 855
    check-cast p1, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;->get(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V
    .registers 5
    .param p1, "object"    # Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
    .param p2, "value"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 863
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 864
    :try_start_5
    invoke-static {p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-wrap0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit v0

    .line 862
    return-void

    .line 863
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 862
    check-cast p1, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Landroid/view/MagnificationSpec;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecProperty;->set(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;)V

    return-void
.end method
