.class final Lcom/android/server/pm/EphemeralResolverConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;,
        Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_TIMEOUT_MS:J


# instance fields
.field private volatile mBindRequested:Z

.field private final mContext:Landroid/content/Context;

.field private final mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/app/IEphemeralResolver;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/EphemeralResolverConnection;Landroid/app/IEphemeralResolver;)Landroid/app/IEphemeralResolver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IEphemeralResolver;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x12c

    :goto_d
    int-to-long v0, v0

    .line 48
    sput-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    .line 46
    return-void

    .line 49
    :cond_11
    const/16 v0, 0xc8

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    .line 54
    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.RESOLVE_EPHEMERAL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    .line 62
    return-void
.end method

.method private bindLocked()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IEphemeralResolver;

    if-eqz v3, :cond_5

    .line 112
    return-void

    .line 115
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindRequested:Z

    if-nez v3, :cond_1a

    .line 116
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindRequested:Z

    .line 117
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 118
    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v11, 0x4000001

    .line 117
    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 121
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 123
    .local v6, "startMillis":J
    :goto_1e
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IEphemeralResolver;

    if-eqz v3, :cond_28

    .line 138
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 110
    return-void

    .line 126
    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 127
    .local v0, "elapsedMillis":J
    sget-wide v8, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long v4, v8, v0

    .line 128
    .local v4, "remainingMillis":J
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gtz v3, :cond_41

    .line 129
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v8, "Didn\'t bind to resolver in time."

    invoke-direct {v3, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_41
    :try_start_41
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_46} :catch_47

    goto :goto_1e

    .line 133
    :catch_47
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_1e
.end method

.method private getRemoteInstanceLazy()Landroid/app/IEphemeralResolver;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IEphemeralResolver;

    if-eqz v0, :cond_b

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IEphemeralResolver;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    monitor-exit v1

    return-object v0

    .line 105
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->bindLocked()V

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IEphemeralResolver;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_19
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 85
    :try_start_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v4, "bound="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 86
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IEphemeralResolver;

    if-eqz v2, :cond_32

    const-string/jumbo v2, "true"

    .line 85
    :goto_15
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 88
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_36

    .line 91
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy()Landroid/app/IEphemeralResolver;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IEphemeralResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-interface {v2, p1, v4}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1f .. :try_end_30} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_30} :catch_3b
    .catchall {:try_start_1f .. :try_end_30} :catchall_36

    :goto_30
    monitor-exit v3

    .line 83
    return-void

    .line 86
    :cond_32
    :try_start_32
    const-string/jumbo v2, "false"
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_15

    .line 84
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2

    .line 92
    :catch_39
    move-exception v1

    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    goto :goto_30

    .line 94
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_3b
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_30
.end method

.method public final getEphemeralResolveInfoList([II)Ljava/util/List;
    .registers 8
    .param p1, "hashPrefix"    # [I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->throwIfCalledOnMainThread()V

    .line 71
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    .line 72
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy()Landroid/app/IEphemeralResolver;

    move-result-object v3

    .line 71
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getEphemeralResolveInfoList(Landroid/app/IEphemeralResolver;[II)Ljava/util/List;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_c} :catch_1a
    .catchall {:try_start_3 .. :try_end_c} :catchall_36

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 77
    :try_start_10
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_17

    monitor-exit v3

    .line 71
    return-object v2

    .line 76
    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2

    .line 74
    :catch_1a
    move-exception v1

    .line 76
    .local v1, "te":Ljava/util/concurrent/TimeoutException;
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 77
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_26

    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :goto_23
    monitor-exit v3

    .line 80
    const/4 v2, 0x0

    return-object v2

    .line 76
    .restart local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2

    .line 73
    .end local v1    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_29
    move-exception v0

    .line 76
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 77
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    goto :goto_23

    .line 76
    :catchall_33
    move-exception v2

    monitor-exit v3

    throw v2

    .line 75
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_36
    move-exception v2

    .line 76
    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 77
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_41

    monitor-exit v3

    .line 75
    throw v2

    .line 76
    :catchall_41
    move-exception v2

    monitor-exit v3

    throw v2
.end method
