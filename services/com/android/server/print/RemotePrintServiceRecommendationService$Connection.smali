.class Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintServiceRecommendationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

.field final synthetic this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;


# direct methods
.method static synthetic -get0(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintServiceRecommendationService;
    .param p2, "callbacks"    # Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    .line 193
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-get1(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 200
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {p2}, Landroid/printservice/recommendation/IRecommendationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-set0(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_2b

    .line 203
    :try_start_10
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-get2(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object v1

    new-instance v3, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;

    invoke-direct {v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)V

    invoke-interface {v1, v3}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_20
    .catchall {:try_start_10 .. :try_end_1e} :catchall_2b

    :goto_1e
    monitor-exit v2

    .line 198
    return-void

    .line 220
    :catch_20
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string/jumbo v1, "RemotePrintServiceRecS"

    const-string/jumbo v3, "Could not register callbacks"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_1e

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 228
    const-string/jumbo v0, "RemotePrintServiceRecS"

    const-string/jumbo v1, "Unexpected termination of connection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-get1(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 231
    :try_start_10
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-set0(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 227
    return-void

    .line 230
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method
