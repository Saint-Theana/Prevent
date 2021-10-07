.class Lcom/android/server/policy/pocket/PocketLock$1$1;
.super Ljava/lang/Object;
.source "PocketLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/pocket/PocketLock$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/pocket/PocketLock$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/pocket/PocketLock$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/policy/pocket/PocketLock$1;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock$1$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 87
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/pocket/PocketLock;->-set0(Lcom/android/server/policy/pocket/PocketLock;Z)Z

    .line 82
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 91
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/pocket/PocketLock;->-set0(Lcom/android/server/policy/pocket/PocketLock;Z)Z

    .line 77
    return-void
.end method
