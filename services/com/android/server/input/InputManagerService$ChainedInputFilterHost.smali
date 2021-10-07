.class final Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChainedInputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field private final mInputFilter:Landroid/view/IInputFilter;

.field private mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Landroid/view/IInputFilter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .registers 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "filter"    # Landroid/view/IInputFilter;
    .param p3, "next"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    .line 2260
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    .line 2261
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 2262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    .line 2259
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "filter"    # Landroid/view/IInputFilter;
    .param p3, "next"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V

    return-void
.end method


# virtual methods
.method public connectLocked()V
    .registers 3

    .prologue
    .line 2267
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1, p0}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2265
    :goto_5
    return-void

    .line 2268
    :catch_6
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public disconnectLocked()V
    .registers 3

    .prologue
    .line 2275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    .line 2280
    :goto_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    .line 2273
    return-void

    .line 2276
    :catch_9
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 14
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2285
    if-nez p1, :cond_b

    .line 2286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2289
    :cond_b
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v10, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2290
    :try_start_10
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    if-nez v0, :cond_2b

    .line 2291
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    if-nez v0, :cond_2d

    .line 2292
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get2(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    .line 2294
    const/high16 v2, 0x4000000

    or-int v8, p2, v2

    .line 2292
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2293
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 2292
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->-wrap2(JLandroid/view/InputEvent;IIIIII)I
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_3b

    :cond_2b
    :goto_2b
    monitor-exit v10

    .line 2284
    return-void

    .line 2301
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-virtual {p1}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_38} :catch_39
    .catchall {:try_start_2d .. :try_end_38} :catchall_3b

    goto :goto_2b

    .line 2302
    :catch_39
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_2b

    .line 2289
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_3b
    move-exception v0

    monitor-exit v10

    throw v0
.end method
