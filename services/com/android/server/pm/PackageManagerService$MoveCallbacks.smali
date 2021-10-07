.class Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveCallbacks"
.end annotation


# static fields
.field private static final MSG_CREATED:I = 0x1

.field private static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IPackageMoveObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastStatus:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V
    .registers 3
    .param p1, "moveId"    # I
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V
    .registers 6
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 21146
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21141
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 21143
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    .line 21145
    return-void
.end method

.method private invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    .registers 10
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21174
    packed-switch p2, :pswitch_data_1e

    .line 21173
    :goto_3
    return-void

    .line 21176
    :pswitch_4
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p1, v1, v0}, Landroid/content/pm/IPackageMoveObserver;->onCreated(ILandroid/os/Bundle;)V

    goto :goto_3

    .line 21180
    :pswitch_e
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v1, v2, v4, v5}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V

    goto :goto_3

    .line 21174
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method

.method private notifyCreated(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 21187
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21189
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 21190
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 21191
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 21192
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 21186
    return-void
.end method

.method private notifyStatusChanged(II)V
    .registers 5
    .param p1, "moveId"    # I
    .param p2, "status"    # I

    .prologue
    .line 21196
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    .line 21195
    return-void
.end method

.method private notifyStatusChanged(IIJ)V
    .registers 10
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    .line 21200
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21202
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 21203
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 21204
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 21205
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 21206
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 21208
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    monitor-enter v2

    .line 21209
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_45

    monitor-exit v2

    .line 21199
    return-void

    .line 21208
    :catchall_45
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 21159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 21160
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 21161
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v4, :cond_1d

    .line 21162
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IPackageMoveObserver;

    .line 21164
    .local v1, "callback":Landroid/content/pm/IPackageMoveObserver;
    :try_start_15
    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v5, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_26

    .line 21161
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 21168
    .end local v1    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :cond_1d
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 21169
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 21158
    return-void

    .line 21165
    .restart local v1    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :catch_26
    move-exception v3

    .local v3, "ignored":Landroid/os/RemoteException;
    goto :goto_1a
.end method

.method public register(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 21150
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 21149
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 21154
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 21153
    return-void
.end method
