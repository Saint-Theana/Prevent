.class Lcom/android/server/policy/pocket/PocketLock$1;
.super Ljava/lang/Object;
.source "PocketLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/pocket/PocketLock;->show(Z)V
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
    .line 63
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    iput-boolean p2, p0, Lcom/android/server/policy/pocket/PocketLock$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get1(Lcom/android/server/policy/pocket/PocketLock;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 67
    return-void

    .line 70
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get0(Lcom/android/server/policy/pocket/PocketLock;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 71
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 74
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->val$animate:Z

    if-eqz v0, :cond_48

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/pocket/PocketLock$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/pocket/PocketLock$1$1;-><init>(Lcom/android/server/policy/pocket/PocketLock$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/android/server/policy/pocket/PocketLock$1$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/pocket/PocketLock$1$2;-><init>(Lcom/android/server/policy/pocket/PocketLock$1;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 65
    :goto_47
    return-void

    .line 101
    :cond_48
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-wrap0(Lcom/android/server/policy/pocket/PocketLock;)V

    goto :goto_47
.end method
