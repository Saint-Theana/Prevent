.class public Lcom/android/server/camera/CameraService;
.super Lcom/android/server/SystemService;
.source "CameraService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraService$1;,
        Lcom/android/server/camera/CameraService$2;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field public static final CAMERA_STATE_ACTIVE:I = 0x1

.field public static final CAMERA_STATE_CLOSED:I = 0x3

.field public static final CAMERA_STATE_IDLE:I = 0x2

.field public static final CAMERA_STATE_OPEN:I = 0x0

.field private static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private mActiveCameraCount:I

.field private final mActiveCameraIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/camera/CameraService;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/camera/CameraService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(I)Ljava/lang/String;
    .registers 2
    .param p0, "newCameraState"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/camera/CameraService;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/camera/CameraService;I)V
    .registers 2
    .param p1, "retries"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/camera/CameraService;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/camera/CameraService;Ljava/lang/String;I)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/camera/CameraService;->updateActivityCount(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraService;->nfcInterfaceToken:Landroid/os/IBinder;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    .line 92
    iput v0, p0, Lcom/android/server/camera/CameraService;->mActiveCameraCount:I

    .line 94
    new-instance v1, Lcom/android/server/camera/CameraService$1;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraService$1;-><init>(Lcom/android/server/camera/CameraService;)V

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v1, Lcom/android/server/camera/CameraService$2;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraService$2;-><init>(Lcom/android/server/camera/CameraService;)V

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 136
    iput-object p1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    .line 137
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string/jumbo v2, "CameraService_proxy"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 138
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 139
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    .line 141
    const-string/jumbo v1, "ro.camera.notify_nfc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    iput-boolean v0, p0, Lcom/android/server/camera/CameraService;->mNotifyNfc:Z

    .line 134
    return-void
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "newCameraState"    # I

    .prologue
    .line 329
    packed-switch p0, :pswitch_data_18

    .line 336
    const-string/jumbo v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 330
    :pswitch_7
    const-string/jumbo v0, "CAMERA_STATE_OPEN"

    return-object v0

    .line 331
    :pswitch_b
    const-string/jumbo v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 332
    :pswitch_f
    const-string/jumbo v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 333
    :pswitch_13
    const-string/jumbo v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 329
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .registers 8
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v2

    .line 225
    .local v2, "userProfiles":[I
    new-instance v0, Landroid/util/ArraySet;

    array-length v3, v2

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 227
    .local v0, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    array-length v4, v2

    :goto_e
    if-ge v3, v4, :cond_1c

    aget v1, v2, v3

    .line 228
    .local v1, "id":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 231
    .end local v1    # "id":I
    :cond_1c
    return-object v0
.end method

.method private notifyMediaserverLocked(ILjava/util/Set;)Z
    .registers 9
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 254
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v2, :cond_22

    .line 255
    const-string/jumbo v2, "media.camera"

    invoke-virtual {p0, v2}, Lcom/android/server/camera/CameraService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 256
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_18

    .line 257
    const-string/jumbo v2, "CameraService_proxy"

    const-string/jumbo v3, "Could not notify mediaserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v5

    .line 261
    :cond_18
    const/4 v2, 0x0

    :try_start_19
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_2d

    .line 267
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 271
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraService;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_38

    .line 277
    const/4 v2, 0x1

    return v2

    .line 262
    .restart local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :catch_2d
    move-exception v1

    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CameraService_proxy"

    const-string/jumbo v3, "Could not link to death of native camera service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v5

    .line 272
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_38
    move-exception v1

    .line 273
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CameraService_proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not notify mediaserver, remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v5
.end method

.method private notifyNfcService(Z)V
    .registers 9
    .param p1, "enablePolling"    # Z

    .prologue
    .line 303
    const-string/jumbo v4, "nfc"

    invoke-virtual {p0, v4}, Lcom/android/server/camera/CameraService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 304
    .local v3, "nfcServiceBinder":Landroid/os/IBinder;
    if-nez v3, :cond_13

    .line 305
    const-string/jumbo v4, "CameraService_proxy"

    const-string/jumbo v5, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 308
    :cond_13
    invoke-static {v3}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 309
    .local v2, "nfcAdapterRaw":Landroid/nfc/INfcAdapter;
    if-eqz p1, :cond_22

    const/4 v1, 0x0

    .line 312
    .local v1, "flags":I
    :goto_1a
    :try_start_1a
    sget-object v4, Lcom/android/server/camera/CameraService;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v1, v6}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_25

    .line 301
    :goto_21
    return-void

    .line 309
    .end local v1    # "flags":I
    :cond_22
    const/16 v1, 0x1000

    .restart local v1    # "flags":I
    goto :goto_1a

    .line 313
    :catch_25
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "CameraService_proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not notify NFC service, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private notifySwitchWithRetries(I)V
    .registers 8
    .param p1, "retries"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_6
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1a

    if-nez v0, :cond_c

    monitor-exit v1

    .line 237
    return-void

    .line 239
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserverLocked(ILjava/util/Set;)Z
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1a

    move-result v0

    if-eqz v0, :cond_16

    .line 240
    const/4 p1, 0x0

    :cond_16
    monitor-exit v1

    .line 243
    if-gtz p1, :cond_1d

    .line 244
    return-void

    .line 235
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 246
    :cond_1d
    const-string/jumbo v0, "CameraService_proxy"

    const-string/jumbo v1, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 248
    const-wide/16 v2, 0x14

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 234
    return-void
.end method

.method private switchUserLocked(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 215
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraService;->mLastUser:I

    .line 216
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 213
    :goto_12
    return-void

    .line 218
    :cond_13
    iput-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    .line 219
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraService;->notifyMediaserverLocked(ILjava/util/Set;)Z

    goto :goto_12
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 320
    .local v4, "len":I
    new-array v5, v4, [I

    .line 321
    .local v5, "ret":[I
    const/4 v2, 0x0

    .line 322
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 323
    .local v0, "i":Ljava/lang/Integer;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .local v3, "idx":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    move v2, v3

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_b

    .line 325
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_21
    return-object v5
.end method

.method private updateActivityCount(Ljava/lang/String;I)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I

    .prologue
    .line 281
    iget-object v3, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 282
    :try_start_3
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    .line 283
    .local v1, "wasEmpty":Z
    packed-switch p2, :pswitch_data_2c

    .line 294
    :goto_c
    :pswitch_c
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    .line 295
    .local v0, "isEmpty":Z
    iget-boolean v2, p0, Lcom/android/server/camera/CameraService;->mNotifyNfc:Z

    if-eqz v2, :cond_1b

    if-eq v1, v0, :cond_1b

    .line 296
    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraService;->notifyNfcService(Z)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_23

    :cond_1b
    monitor-exit v3

    .line 280
    return-void

    .line 287
    .end local v0    # "isEmpty":Z
    :pswitch_1d
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    goto :goto_c

    .line 281
    .end local v1    # "wasEmpty":Z
    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2

    .line 291
    .restart local v1    # "wasEmpty":Z
    :pswitch_26
    :try_start_26
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    goto :goto_c

    .line 283
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1d
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 204
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    .line 205
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 207
    iget-boolean v1, p0, Lcom/android/server/camera/CameraService;->mNotifyNfc:Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1e

    if-eqz v1, :cond_17

    if-eqz v0, :cond_19

    :cond_17
    :goto_17
    monitor-exit v2

    .line 198
    return-void

    .line 208
    :cond_19
    const/4 v1, 0x1

    :try_start_1a
    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraService;->notifyNfcService(Z)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_17

    .line 200
    .end local v0    # "wasEmpty":Z
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 152
    const-string/jumbo v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraService error, invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_21
    const/4 v0, 0x1

    return v0

    .line 149
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraService;->notifySwitchWithRetries(I)V

    goto :goto_21

    .line 147
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    .line 161
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mUserManager:Landroid/os/UserManager;

    if-nez v1, :cond_15

    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "UserManagerService must start before CameraService!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_15
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "media.camera.proxy"

    iget-object v2, p0, Lcom/android/server/camera/CameraService;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/camera/CameraService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 159
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_3
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_a

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit v1

    .line 178
    return-void

    .line 179
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 188
    return-void

    .line 189
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method
