.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$1;,
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final KEY_PROXY:Ljava/lang/String; = "keyProxy"

.field private static final MAX_PAC_SIZE:J = 0x1312d00L

.field public static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field public static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field public static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field public static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private volatile mHasDownloaded:Z

.field private volatile mHasSentBroadcast:Z

.field private mLastPort:I

.field private final mNetThread:Landroid/os/HandlerThread;

.field private final mNetThreadHandler:Landroid/os/Handler;

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private volatile mPacUrl:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/PacManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/PacManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    .registers 3
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p0, "pacUri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0}, Lcom/android/server/connectivity/PacManager;->get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/PacManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->longSchedule()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/PacManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->reschedule()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/PacManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "proxyMessage"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "android.pacmanager"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    .line 145
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 147
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 152
    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    .line 155
    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    .line 144
    return-void
.end method

.method private bind()V
    .registers 5

    .prologue
    const v3, 0x40000005    # 2.0000012f

    .line 292
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_11

    .line 293
    const-string/jumbo v1, "PacManager"

    const-string/jumbo v2, "No context for binding"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 296
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.pacprocessor"

    const-string/jumbo v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2f

    .line 300
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void

    .line 303
    :cond_2f
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 335
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 338
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 339
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.proxyhandler"

    const-string/jumbo v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 373
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 291
    return-void
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .param p0, "pacUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x1312d00

    .line 212
    new-instance v6, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 213
    .local v6, "url":Ljava/net/URL;
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v6, v8}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v7

    .line 214
    .local v7, "urlConnection":Ljava/net/URLConnection;
    const-wide/16 v2, -0x1

    .line 216
    .local v2, "contentLength":J
    :try_start_14
    const-string/jumbo v8, "Content-Length"

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1e} :catch_73

    move-result-wide v2

    .line 220
    :goto_1f
    cmp-long v8, v2, v10

    if-lez v8, :cond_44

    .line 221
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PAC too big: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 223
    :cond_44
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 226
    .local v0, "buffer":[B
    :cond_4d
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_6e

    .line 227
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 228
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v8, v10

    if-lez v8, :cond_4d

    .line 229
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PAC too big"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 232
    :cond_6e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 217
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "count":I
    :catch_73
    move-exception v5

    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_1f
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_11

    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 162
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .registers 6
    .param p1, "delayIndex"    # I

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getPacChangeDelay()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_15

    .line 266
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 268
    :cond_15
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private getNextDelay(I)I
    .registers 3
    .param p1, "currentDelay"    # I

    .prologue
    const/4 v0, 0x3

    .line 236
    add-int/lit8 p1, p1, 0x1

    if-le p1, v0, :cond_6

    .line 237
    return v0

    .line 239
    :cond_6
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .registers 6

    .prologue
    .line 253
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "conn.pac_change_delay"

    .line 258
    const-string/jumbo v4, "8 32 120 14400 43200"

    .line 256
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string/jumbo v3, "pac_change_delay"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_1a

    .end local v1    # "defaultDelay":Ljava/lang/String;
    :goto_19
    return-object v1

    .restart local v1    # "defaultDelay":Ljava/lang/String;
    :cond_1a
    move-object v1, v2

    goto :goto_19
.end method

.method private longSchedule()V
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 244
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 242
    return-void
.end method

.method private reschedule()V
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 249
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 247
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .registers 5
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 395
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_21

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    :cond_a
    monitor-exit p0

    .line 396
    return-void

    .line 398
    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    if-nez v0, :cond_1f

    .line 399
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    .line 394
    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)Z
    .registers 5
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v1, :cond_f

    .line 279
    const-string/jumbo v1, "PacManager"

    const-string/jumbo v2, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    return v1

    .line 283
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 284
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 288
    :goto_16
    const/4 v1, 0x1

    return v1

    .line 285
    :catch_18
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PacManager"

    const-string/jumbo v2, "Unable to set PAC file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private setDownloadIn(I)V
    .registers 10
    .param p1, "delayIndex"    # I

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    move-result-wide v0

    .line 273
    .local v0, "delay":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 274
    .local v2, "timeTillTrigger":J
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 271
    return-void
.end method

.method private unbind()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_e

    .line 379
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 380
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 382
    :cond_e
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1b

    .line 383
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 384
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 386
    :cond_1b
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    .line 387
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 377
    return-void
.end method


# virtual methods
.method public declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z
    .registers 7
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 175
    :try_start_2
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 176
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_73

    move-result v1

    if-lez v1, :cond_22

    monitor-exit p0

    .line 178
    return v4

    .line 180
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 181
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    .line 184
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 185
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_73

    .line 186
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 188
    :cond_40
    :try_start_40
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 189
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_73

    .line 190
    :try_start_4c
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_70

    if-eqz v1, :cond_5f

    .line 194
    :try_start_57
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v1}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_62
    .catchall {:try_start_57 .. :try_end_5c} :catchall_76

    .line 198
    :try_start_5c
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_70

    :cond_5f
    :goto_5f
    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_73

    monitor-exit p0

    .line 202
    return v4

    .line 195
    :catch_62
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_63
    const-string/jumbo v1, "PacManager"

    const-string/jumbo v3, "Failed to stop PAC service"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_76

    .line 198
    :try_start_6c
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_5f

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v2

    throw v1
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_73

    :catchall_73
    move-exception v1

    monitor-exit p0

    throw v1

    .line 197
    :catchall_76
    move-exception v1

    .line 198
    :try_start_77
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    .line 197
    throw v1
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_70
.end method
