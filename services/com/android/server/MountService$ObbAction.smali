.class abstract Lcom/android/server/MountService$ObbAction;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field mObbState:Lcom/android/server/MountService$ObbState;

.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 3407
    iput-object p1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3408
    iput-object p2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    .line 3407
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/MountService$ObbActionHandler;)V
    .registers 7
    .param p1, "handler"    # Lcom/android/server/MountService$ObbActionHandler;

    .prologue
    const/4 v4, 0x3

    .line 3415
    :try_start_1
    iget v2, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    .line 3416
    iget v2, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    if-le v2, v4, :cond_22

    .line 3417
    const-string/jumbo v2, "MountService"

    const-string/jumbo v3, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    .line 3419
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    .line 3411
    :goto_21
    return-void

    .line 3421
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleExecute()V

    .line 3424
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_3c

    goto :goto_21

    .line 3426
    :catch_30
    move-exception v0

    .line 3429
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto :goto_21

    .line 3430
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3c
    move-exception v1

    .line 3433
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    .line 3434
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->-get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto :goto_21
.end method

.method protected getObbInfo()Landroid/content/res/ObbInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3444
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v2}, Lcom/android/server/MountService;->-get1(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v3, v3, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_2e

    move-result-object v1

    .line 3450
    :goto_e
    if-nez v1, :cond_4f

    .line 3451
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t read OBB file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3445
    :catch_2e
    move-exception v0

    .line 3446
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t call DefaultContainerService to fetch OBB info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3447
    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 3446
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    const/4 v1, 0x0

    .local v1, "obbInfo":Landroid/content/res/ObbInfo;
    goto :goto_e

    .line 3453
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "obbInfo":Landroid/content/res/ObbInfo;
    :cond_4f
    return-object v1
.end method

.method abstract handleError()V
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendNewStatusOrIgnore(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 3457
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v1, :cond_b

    .line 3458
    :cond_a
    return-void

    .line 3462
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v2, v2, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v3, v3, Lcom/android/server/MountService$ObbState;->nonce:I

    invoke-interface {v1, v2, v3, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    .line 3456
    :goto_1a
    return-void

    .line 3463
    :catch_1b
    move-exception v0

    .line 3464
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "MountServiceListener went away while calling onObbStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
