.class Lcom/android/server/media/RemoteDisplayProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    invoke-static {}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->-get0()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 202
    const-string/jumbo v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received package manager broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_20
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->-wrap0(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    .line 200
    return-void
.end method
