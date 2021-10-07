.class public Lcom/android/server/gesture/EdgeGestureService;
.super Landroid/service/gesture/IEdgeGestureService$Stub;
.source "EdgeGestureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;,
        Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;,
        Lcom/android/server/gesture/EdgeGestureService$H;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_INPUT:Z = false

.field public static final MSG_EDGE_GESTURE_ACTIVATION:I = 0x7d17

.field public static final MSG_UPDATE_SERVICE:I = 0x7d19

.field public static final TAG:Ljava/lang/String; = "EdgeGestureService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

.field private final mEdgeGestureActivationListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalPositions:I

.field private mGlobalSensitivity:I

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/gesture/EdgeGestureService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/gesture/EdgeGestureService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/gesture/EdgeGestureService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/gesture/EdgeGestureService;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .registers 5
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService;->propagateActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/gesture/EdgeGestureService;Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V
    .registers 2
    .param p1, "record"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService;->removeListenerRecord(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/gesture/EdgeGestureService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->updateMonitoring()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/service/gesture/IEdgeGestureService$Stub;-><init>()V

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "EdgeGestureHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 179
    return-void
.end method

.method private enforceMonitoringLocked()V
    .registers 4

    .prologue
    .line 239
    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    .line 240
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->registerSecondaryInputFilter(Landroid/view/IInputFilter;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->observe()V

    .line 235
    return-void
.end method

.method private findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .registers 5
    .param p1, "listener"    # Landroid/os/IBinder;

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 304
    .local v0, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget-object v2, v0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    invoke-interface {v2}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 305
    return-object v0

    .line 308
    .end local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method private propagateActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .registers 9
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    .line 321
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :try_start_4
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 324
    .local v0, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget v3, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    invoke-static {v0, v3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->-wrap0(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 325
    move-object v2, v0

    .line 333
    .end local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .end local v2    # "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_1f
    if-eqz v2, :cond_27

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->-wrap1(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_30

    move-result v3

    if-eqz v3, :cond_2c

    .line 336
    :cond_27
    :goto_27
    if-eqz v2, :cond_2e

    const/4 v3, 0x1

    :goto_2a
    monitor-exit v4

    return v3

    .line 334
    :cond_2c
    const/4 v2, 0x0

    .restart local v2    # "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    goto :goto_27

    .line 336
    .end local v2    # "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a

    .line 321
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_30
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private removeListenerRecord(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_3
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 311
    return-void

    .line 312
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private shutdownMonitoringLocked()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->unobserve()V

    .line 249
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterSecondaryInputFilter(Landroid/view/IInputFilter;)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    .line 244
    return-void
.end method

.method private updateMonitoring()V
    .registers 9

    .prologue
    .line 205
    iget-object v6, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 206
    const/4 v5, 0x0

    :try_start_4
    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    .line 207
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "someLongLiving":Z
    const/4 v0, 0x0

    .line 210
    .local v0, "activePositions":I
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "someLongLiving":Z
    .local v4, "temp$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 211
    .local v3, "temp":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    iget v7, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    or-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    .line 212
    invoke-virtual {v3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->isActive()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 213
    iget v5, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    or-int/2addr v0, v5

    .line 215
    :cond_2d
    iget v5, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    if-eqz v5, :cond_3b

    .line 216
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    iget v7, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    .line 218
    :cond_3b
    iget-boolean v5, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->longLiving:Z

    or-int/2addr v2, v5

    .local v2, "someLongLiving":Z
    goto :goto_11

    .line 220
    .end local v2    # "someLongLiving":Z
    .end local v3    # "temp":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_3f
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    if-eqz v5, :cond_5c

    const/4 v1, 0x1

    .line 221
    .local v1, "havePositions":Z
    :goto_44
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    not-int v7, v0

    and-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    .line 223
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    if-nez v5, :cond_51

    .line 224
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    .line 227
    :cond_51
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-nez v5, :cond_5e

    if-eqz v1, :cond_5e

    .line 228
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->enforceMonitoringLocked()V
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_6a

    :cond_5a
    :goto_5a
    monitor-exit v6

    .line 204
    return-void

    .line 220
    .end local v1    # "havePositions":Z
    :cond_5c
    const/4 v1, 0x0

    .restart local v1    # "havePositions":Z
    goto :goto_44

    .line 229
    :cond_5e
    :try_start_5e
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-eqz v5, :cond_5a

    if-nez v1, :cond_5a

    if-nez v2, :cond_5a

    .line 230
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->shutdownMonitoringLocked()V
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_6a

    goto :goto_5a

    .line 205
    .end local v0    # "activePositions":I
    .end local v1    # "havePositions":Z
    .end local v4    # "temp$iterator":Ljava/util/Iterator;
    :catchall_6a
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 456
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_36

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump EdgeGestureService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 459
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 458
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 460
    const-string/jumbo v4, ", uid="

    .line 458
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 460
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 458
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    return-void

    .line 464
    :cond_36
    const-string/jumbo v3, "EDGE GESTURE SERVICE (dumpsys edgegestureservice)\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 466
    :try_start_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mInputFilter="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-eqz v3, :cond_64

    .line 468
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    const-string/jumbo v5, "    "

    invoke-virtual {v3, p2, v5}, Lcom/android/server/gesture/EdgeGestureInputFilter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 470
    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mGlobalPositions=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mGlobalSensitivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_a0
    :goto_a0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 474
    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->isActive()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Active record: #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_3f .. :try_end_ca} :catchall_cb

    goto :goto_a0

    .line 465
    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_cb
    move-exception v3

    monitor-exit v4

    throw v3

    .line 478
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_ce
    const/4 v0, 0x0

    .line 479
    .local v0, "i":I
    :try_start_cf
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 480
    .restart local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Listener #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const-string/jumbo v3, "    "

    invoke-virtual {v1, p2, v3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_cf .. :try_end_105} :catchall_cb

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_108
    monitor-exit v4

    .line 455
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/gesture/IEdgeGestureService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 445
    :catch_5
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_18

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    :goto_c
    if-nez v1, :cond_17

    .line 448
    const-string/jumbo v1, "EdgeGestureService"

    const-string/jumbo v2, "EdgeGestureService crashed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    :cond_17
    throw v0

    .line 447
    :cond_18
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public registerEdgeGestureActivationListener(Landroid/service/gesture/IEdgeGestureActivationListener;)Landroid/service/gesture/IEdgeGestureHostCallback;
    .registers 10
    .param p1, "listener"    # Landroid/service/gesture/IEdgeGestureActivationListener;

    .prologue
    const/4 v7, 0x0

    .line 255
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.INJECT_EVENTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3a

    .line 257
    const-string/jumbo v3, "EdgeGestureService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: can\'t register from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 258
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 258
    const-string/jumbo v5, ", uid="

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 258
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v7

    .line 262
    :cond_3a
    if-nez p1, :cond_45

    .line 263
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "listener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_45
    const/4 v1, 0x0

    .line 267
    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 268
    :try_start_49
    invoke-interface {p1}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/gesture/EdgeGestureService;->findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    move-result-object v1

    .line 269
    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    if-nez v1, :cond_66

    .line 270
    new-instance v2, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    invoke-direct {v2, p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/service/gesture/IEdgeGestureActivationListener;)V
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_89

    .line 272
    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .local v2, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :try_start_58
    invoke-interface {p1}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_60} :catch_68
    .catchall {:try_start_58 .. :try_end_60} :catchall_8c

    .line 277
    :try_start_60
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_8c

    move-object v1, v2

    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_66
    monitor-exit v4

    .line 280
    return-object v1

    .line 273
    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catch_68
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_69
    const-string/jumbo v3, "EdgeGestureService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Recipient died during registration pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_69 .. :try_end_87} :catchall_8c

    monitor-exit v4

    .line 275
    return-object v7

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catchall_89
    move-exception v3

    :goto_8a
    monitor-exit v4

    throw v3

    .restart local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catchall_8c
    move-exception v3

    move-object v1, v2

    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    goto :goto_8a
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v0, Lcom/android/server/gesture/EdgeGestureService$H;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/gesture/EdgeGestureService$H;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    .line 190
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/gesture/EdgeGestureService$1;

    invoke-direct {v1, p0}, Lcom/android/server/gesture/EdgeGestureService$1;-><init>(Lcom/android/server/gesture/EdgeGestureService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    new-instance v0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    .line 200
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    return-void
.end method

.method public updateEdgeGestureActivationListener(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "listener"    # Landroid/os/IBinder;
    .param p2, "positionFlags"    # I

    .prologue
    .line 285
    if-nez p1, :cond_b

    .line 286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_b
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 289
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService;->findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    move-result-object v0

    .line 290
    .local v0, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    if-nez v0, :cond_29

    .line 291
    const-string/jumbo v1, "EdgeGestureService"

    const-string/jumbo v3, "Unknown listener on update listener. Register first?"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "listener not registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_26

    .line 288
    .end local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    .line 294
    .restart local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_29
    :try_start_29
    invoke-static {v0, p2}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->-wrap2(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)V

    .line 296
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_37

    .line 297
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d19

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_26

    :cond_37
    monitor-exit v2

    .line 284
    return-void
.end method
