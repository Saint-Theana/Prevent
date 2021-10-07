.class Lcom/android/server/policy/pocket/PocketLock$2$1;
.super Ljava/lang/Object;
.source "PocketLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/pocket/PocketLock$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/pocket/PocketLock$2;


# direct methods
.method constructor <init>(Lcom/android/server/policy/pocket/PocketLock$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/policy/pocket/PocketLock$2;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock$2$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 136
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$2;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/pocket/PocketLock;->-set0(Lcom/android/server/policy/pocket/PocketLock;Z)Z

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$2;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-wrap1(Lcom/android/server/policy/pocket/PocketLock;)V

    .line 130
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 140
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$2;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/pocket/PocketLock;->-set0(Lcom/android/server/policy/pocket/PocketLock;Z)Z

    .line 125
    return-void
.end method
