.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$suggestedStream:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;III)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p2, "val$direction"    # I
    .param p3, "val$suggestedStream"    # I
    .param p4, "val$flags"    # I

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->val$direction:I

    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->val$suggestedStream:I

    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get3(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->val$direction:I

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->val$suggestedStream:I

    .line 923
    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->val$flags:I

    const-string/jumbo v5, "MediaSessionService"

    .line 922
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_21

    .line 919
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_20
    return-void

    .line 924
    :catch_21
    move-exception v6

    .line 925
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MediaSessionService"

    const-string/jumbo v1, "Error adjusting default volume."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method
