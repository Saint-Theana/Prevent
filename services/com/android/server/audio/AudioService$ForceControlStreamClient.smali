.class Lcom/android/server/audio/AudioService$ForceControlStreamClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceControlStreamClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1934
    if-eqz p2, :cond_b

    .line 1936
    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_e

    .line 1943
    .end local p2    # "cb":Landroid/os/IBinder;
    :cond_b
    :goto_b
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 1933
    return-void

    .line 1937
    .restart local p2    # "cb":Landroid/os/IBinder;
    :catch_e
    move-exception v0

    .line 1939
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ForceControlStreamClient() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    const/4 p2, 0x0

    .local p2, "cb":Landroid/os/IBinder;
    goto :goto_b
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get23(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1948
    :try_start_7
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "SCO client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get22(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    move-result-object v0

    if-eq v0, p0, :cond_23

    .line 1950
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "unregistered control stream client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_30

    :goto_21
    monitor-exit v1

    .line 1946
    return-void

    .line 1952
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-set6(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 1953
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-set18(Lcom/android/server/audio/AudioService;I)I
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_30

    goto :goto_21

    .line 1947
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1959
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_d

    .line 1960
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1961
    iput-object v2, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 1958
    :cond_d
    return-void
.end method
