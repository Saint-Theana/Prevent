.class final Lcom/android/server/InputContentUriTokenHandler;
.super Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
.source "InputContentUriTokenHandler.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPermissionOwnerToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILjava/lang/String;II)V
    .registers 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "targetUserId"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 51
    iput-object p1, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 52
    iput p2, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    .line 53
    iput-object p3, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    .line 54
    iput p4, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    .line 55
    iput p5, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    .line 50
    return-void
.end method

.method private doTakeLocked(Landroid/os/IBinder;)V
    .registers 14
    .param p1, "permissionOwner"    # Landroid/os/IBinder;

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 81
    .local v10, "origId":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 82
    iget v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    iget-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 83
    iget v6, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    iget v7, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    const/4 v5, 0x1

    move-object v1, p1

    .line 81
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_1b
    .catchall {:try_start_4 .. :try_end_17} :catchall_20

    .line 88
    :goto_17
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return-void

    .line 84
    :catch_1b
    move-exception v8

    .line 85
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1c
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_17

    .line 87
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_20
    move-exception v0

    .line 88
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputContentUriTokenHandler;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 118
    invoke-super {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->finalize()V

    .line 114
    return-void

    .line 117
    :catchall_7
    move-exception v0

    .line 118
    invoke-super {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->finalize()V

    .line 117
    throw v0
.end method

.method public release()V
    .registers 8

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_9

    monitor-exit v2

    .line 96
    return-void

    .line 99
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 100
    iget-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 101
    iget v5, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    const/4 v6, 0x1

    .line 99
    invoke-interface {v1, v3, v4, v6, v5}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_1c
    .catchall {:try_start_9 .. :try_end_17} :catchall_27

    .line 105
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_24

    :goto_1a
    monitor-exit v2

    .line 93
    return-void

    .line 102
    :catch_1c
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    .line 105
    const/4 v1, 0x0

    :try_start_21
    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_1a

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    .line 104
    :catchall_27
    move-exception v1

    .line 105
    const/4 v3, 0x0

    :try_start_29
    iput-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 104
    throw v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_24
.end method

.method public take()V
    .registers 5

    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_9

    monitor-exit v2

    .line 63
    return-void

    .line 67
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 68
    const-string/jumbo v3, "InputContentUriTokenHandler"

    .line 67
    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_1d
    .catchall {:try_start_9 .. :try_end_16} :catchall_22

    .line 73
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/InputContentUriTokenHandler;->doTakeLocked(Landroid/os/IBinder;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_22

    monitor-exit v2

    .line 59
    return-void

    .line 69
    :catch_1d
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1e
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_16

    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method
