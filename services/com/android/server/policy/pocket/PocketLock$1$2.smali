.class Lcom/android/server/policy/pocket/PocketLock$1$2;
.super Ljava/lang/Object;
.source "PocketLock.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 93
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock$1$2;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1$2;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1$2;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-wrap0(Lcom/android/server/policy/pocket/PocketLock;)V

    .line 95
    return-void
.end method
