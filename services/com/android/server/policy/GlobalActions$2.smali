.class Lcom/android/server/policy/GlobalActions$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get17(Lcom/android/server/policy/GlobalActions;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1021
    :try_start_7
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get14(Lcom/android/server/policy/GlobalActions;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1022
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get14(Lcom/android/server/policy/GlobalActions;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions;->-set3(Lcom/android/server/policy/GlobalActions;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit v1

    .line 1019
    return-void

    .line 1020
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method
