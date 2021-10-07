.class final Lcom/android/server/tv/TvRemoteProviderProxy;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteProviderProxy$Connection;,
        Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;,
        Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_KEY:Z = false

.field protected static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.tv.remoteprovider.TvRemoteProvider"

.field private static final TAG:Ljava/lang/String; = "TvRemoteProvProxy"


# instance fields
.field private mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

.field private mRunning:Z

.field private final mUid:I

.field private final mUserId:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I
    .registers 2

    iget v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvRemoteProviderProxy;Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 2
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy;->onConnectionDied(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/tv/TvRemoteProviderProxy;Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 2
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy;->onConnectionReady(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-string/jumbo v0, "TvRemoteProvProxy"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "uid"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 74
    iput p3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    .line 75
    iput p4, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method private bind()V
    .registers 6

    .prologue
    .line 141
    iget-boolean v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-nez v2, :cond_63

    .line 142
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_22

    .line 143
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_22
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    .line 151
    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 150
    const v4, 0x4000001

    .line 149
    invoke-virtual {v2, v1, p0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    .line 152
    iget-boolean v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-nez v2, :cond_63

    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_63

    .line 153
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Bind failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_63} :catch_64

    .line 140
    .end local v1    # "service":Landroid/content/Intent;
    :cond_63
    :goto_63
    return-void

    .line 155
    .restart local v1    # "service":Landroid/content/Intent;
    :catch_64
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_63

    .line 157
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Bind failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63
.end method

.method private disconnect()V
    .registers 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_3
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v0, :cond_12

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    .line 233
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->dispose()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v1

    .line 229
    return-void

    .line 230
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onConnectionDied(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 5
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-ne v0, p1, :cond_25

    .line 224
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service connection died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_22
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 222
    :cond_25
    return-void
.end method

.method private onConnectionReady(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 5
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_3
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "TvRemoteProvProxy"

    const-string/jumbo v2, "onConnectionReady"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_10
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-ne v0, p1, :cond_24

    .line 216
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "TvRemoteProvProxy"

    const-string/jumbo v2, "mConnectionReady = true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit v1

    .line 212
    return-void

    .line 213
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private shouldBind()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    return v0
.end method

.method private unbind()V
    .registers 4

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v0, :cond_2d

    .line 165
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 166
    const-string/jumbo v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Unbinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    .line 170
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 171
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    :cond_2d
    return-void
.end method

.method private updateBinding()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 130
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    .line 128
    :goto_9
    return-void

    .line 132
    :cond_a
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    goto :goto_9
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mActiveConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mConnectionReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 94
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public inputBridgeConnected(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_3
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": inputBridgeConnected token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_2e

    .line 244
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    :cond_2e
    monitor-exit v1

    .line 240
    return-void

    .line 241
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 177
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_1e

    .line 178
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": onServiceConnected()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v2, :cond_5a

    .line 182
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 184
    invoke-static {p2}, Landroid/media/tv/ITvRemoteProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteProvider;

    move-result-object v1

    .line 185
    .local v1, "provider":Landroid/media/tv/ITvRemoteProvider;
    if-eqz v1, :cond_7d

    .line 186
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/media/tv/ITvRemoteProvider;)V

    .line 187
    .local v0, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->register()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 188
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_39
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_5b

    monitor-exit v2

    .line 191
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_5a

    .line 192
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Connected successfully."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    .end local v1    # "provider":Landroid/media/tv/ITvRemoteProvider;
    :cond_5a
    :goto_5a
    return-void

    .line 188
    .restart local v0    # "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    .restart local v1    # "provider":Landroid/media/tv/ITvRemoteProvider;
    :catchall_5b
    move-exception v3

    monitor-exit v2

    throw v3

    .line 195
    :cond_5e
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_5a

    .line 196
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Registration failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 200
    .end local v0    # "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    :cond_7d
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Service returned invalid remote-control provider binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 206
    return-void
.end method

.method public rebindIfDisconnected()V
    .registers 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_3
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 122
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    .line 123
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v1

    .line 119
    return-void

    .line 120
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setProviderSink(Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;)V
    .registers 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    .line 88
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-nez v0, :cond_28

    .line 99
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 100
    const-string/jumbo v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 104
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->updateBinding()V

    .line 97
    :cond_28
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-eqz v0, :cond_28

    .line 110
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 111
    const-string/jumbo v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 115
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->updateBinding()V

    .line 108
    :cond_28
    return-void
.end method
