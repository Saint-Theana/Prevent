.class Lcom/android/server/trust/TrustManagerService$1$1;
.super Ljava/lang/Object;
.source "TrustManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/trust/TrustManagerService$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/trust/TrustManagerService$1;

.field final synthetic val$fout:Ljava/io/PrintWriter;

.field final synthetic val$userInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Ljava/util/List;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/trust/TrustManagerService$1;
    .param p2, "val$fout"    # Ljava/io/PrintWriter;

    .prologue
    .line 759
    .local p3, "val$userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1$1;->this$1:Lcom/android/server/trust/TrustManagerService$1;

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$fout:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$userInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 762
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$fout:Ljava/io/PrintWriter;

    const-string/jumbo v3, "Trust manager state:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$userInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 764
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$1$1;->this$1:Lcom/android/server/trust/TrustManagerService$1;

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$1$1;->val$fout:Ljava/io/PrintWriter;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$1$1;->this$1:Lcom/android/server/trust/TrustManagerService$1;

    iget-object v5, v5, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->-get2(Lcom/android/server/trust/TrustManagerService;)I

    move-result v5

    if-ne v2, v5, :cond_2f

    const/4 v2, 0x1

    :goto_2b
    invoke-static {v3, v4, v0, v2}, Lcom/android/server/trust/TrustManagerService$1;->-wrap0(Lcom/android/server/trust/TrustManagerService$1;Ljava/io/PrintWriter;Landroid/content/pm/UserInfo;Z)V

    goto :goto_e

    :cond_2f
    const/4 v2, 0x0

    goto :goto_2b

    .line 761
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_31
    return-void
.end method
