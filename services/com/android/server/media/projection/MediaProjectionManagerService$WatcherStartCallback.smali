.class final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatcherStartCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field private mInfo:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 3
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 569
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 567
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    invoke-interface {v1, v2}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onStart(Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 573
    :goto_7
    return-void

    .line 576
    :catch_8
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaProjectionManagerService"

    const-string/jumbo v2, "Failed to notify media projection has stopped"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
