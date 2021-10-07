.class Lcom/android/server/policy/pocket/PocketLock$2;
.super Ljava/lang/Object;
.source "PocketLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/pocket/PocketLock;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/pocket/PocketLock;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/pocket/PocketLock;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/pocket/PocketLock;
    .param p2, "val$animate"    # Z

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    iput-boolean p2, p0, Lcom/android/server/policy/pocket/PocketLock$2;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get1(Lcom/android/server/policy/pocket/PocketLock;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 115
    return-void

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get0(Lcom/android/server/policy/pocket/PocketLock;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 119
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 122
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->val$animate:Z

    if-eqz v0, :cond_3e

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/pocket/PocketLock$2$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/pocket/PocketLock$2$1;-><init>(Lcom/android/server/policy/pocket/PocketLock$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 113
    :goto_3d
    return-void

    .line 144
    :cond_3e
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-wrap1(Lcom/android/server/policy/pocket/PocketLock;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3d
.end method
