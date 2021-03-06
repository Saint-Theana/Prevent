.class final Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

.field private final mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/media/tv/ITvRemoteProvider;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "provider"    # Landroid/media/tv/ITvRemoteProvider;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    .line 278
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    .line 276
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get2(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method clearInputBridge(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 378
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 379
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v2

    if-ne v2, p0, :cond_6a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v4

    if-ne v2, v4, :cond_6a

    .line 380
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 381
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": clearInputBridge,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 382
    const-string/jumbo v5, " token="

    .line 381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_67

    move-result-wide v0

    .line 386
    .local v0, "idToken":J
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 387
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v2, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->clearInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_62

    .line 390
    :cond_5d
    :try_start_5d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_67

    .end local v0    # "idToken":J
    :cond_60
    :goto_60
    monitor-exit v3

    .line 377
    return-void

    .line 389
    .restart local v0    # "idToken":J
    :catchall_62
    move-exception v2

    .line 390
    :try_start_63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    throw v2
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    .line 378
    .end local v0    # "idToken":J
    :catchall_67
    move-exception v2

    monitor-exit v3

    throw v2

    .line 393
    :cond_6a
    :try_start_6a
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 394
    const-string/jumbo v2, "TvRemoteProvProxy"

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clearInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 395
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_6a .. :try_end_8e} :catchall_67

    goto :goto_60
.end method

.method closeInputBridge(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 354
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v2

    if-ne v2, p0, :cond_6a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v4

    if-ne v2, v4, :cond_6a

    .line 355
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 356
    const-string/jumbo v2, "TvRemoteProvProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": closeInputBridge,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    const-string/jumbo v5, " token="

    .line 356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_67

    move-result-wide v0

    .line 361
    .local v0, "idToken":J
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 362
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v2, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->closeInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_62

    .line 365
    :cond_5d
    :try_start_5d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_67

    .end local v0    # "idToken":J
    :cond_60
    :goto_60
    monitor-exit v3

    .line 352
    return-void

    .line 364
    .restart local v0    # "idToken":J
    :catchall_62
    move-exception v2

    .line 365
    :try_start_63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    throw v2
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    .line 353
    .end local v0    # "idToken":J
    :catchall_67
    move-exception v2

    monitor-exit v3

    throw v2

    .line 368
    :cond_6a
    :try_start_6a
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 369
    const-string/jumbo v2, "TvRemoteProvProxy"

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "closeInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 370
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_6a .. :try_end_8e} :catchall_67

    goto :goto_60
.end method

.method public dispose()V
    .registers 3

    .prologue
    .line 300
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "TvRemoteProvProxy"

    const-string/jumbo v1, "Connection::dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_f
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 302
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->dispose()V

    .line 299
    return-void
.end method

.method public onInputBridgeConnected(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 307
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": onInputBridgeConnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    .line 306
    :goto_25
    return-void

    .line 310
    :catch_26
    move-exception v0

    .line 311
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvRemoteProvProxy"

    const-string/jumbo v2, "Failed to deliver onInputBridgeConnected. "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxPointers"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 328
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v0

    if-ne v0, p0, :cond_7a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v1

    if-ne v0, v1, :cond_7a

    .line 329
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 330
    const-string/jumbo v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": openInputBridge,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    const-string/jumbo v2, " token="

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    const-string/jumbo v2, ", name="

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_77

    move-result-wide v8

    .line 335
    .local v8, "idToken":J
    :try_start_55
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 336
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->openInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_72

    .line 340
    :cond_6d
    :try_start_6d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_77

    .end local v8    # "idToken":J
    :cond_70
    :goto_70
    monitor-exit v7

    .line 326
    return-void

    .line 339
    .restart local v8    # "idToken":J
    :catchall_72
    move-exception v0

    .line 340
    :try_start_73
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw v0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    .line 327
    .end local v8    # "idToken":J
    :catchall_77
    move-exception v0

    monitor-exit v7

    throw v0

    .line 343
    :cond_7a
    :try_start_7a
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 344
    const-string/jumbo v0, "TvRemoteProvProxy"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_7a .. :try_end_9e} :catchall_77

    goto :goto_70
.end method

.method public register()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 282
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "TvRemoteProvProxy"

    const-string/jumbo v2, "Connection::register()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v1}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 285
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-interface {v1, v2}, Landroid/media/tv/ITvRemoteProvider;->setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V

    .line 286
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get2(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;

    invoke-direct {v2, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2f} :catch_31

    .line 292
    const/4 v1, 0x1

    return v1

    .line 293
    :catch_31
    move-exception v0

    .line 294
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->binderDied()V

    .line 296
    return v3
.end method

.method sendKeyDown(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 426
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v2

    if-ne v2, p0, :cond_3f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v4

    if-ne v2, v4, :cond_3f

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3c

    move-result-wide v0

    .line 433
    .local v0, "idToken":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 434
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v2, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 438
    :cond_32
    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .end local v0    # "idToken":J
    :cond_35
    :goto_35
    monitor-exit v3

    .line 424
    return-void

    .line 437
    .restart local v0    # "idToken":J
    :catchall_37
    move-exception v2

    .line 438
    :try_start_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    throw v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 425
    .end local v0    # "idToken":J
    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 441
    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 442
    const-string/jumbo v2, "TvRemoteProvProxy"

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendKeyDown, Invalid connection or incorrect uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_3f .. :try_end_63} :catchall_3c

    goto :goto_35
.end method

.method sendKeyUp(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .prologue
    .line 451
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 452
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v2

    if-ne v2, p0, :cond_3f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v4

    if-ne v2, v4, :cond_3f

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3c

    move-result-wide v0

    .line 459
    .local v0, "idToken":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 460
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v2, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 463
    :cond_32
    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .end local v0    # "idToken":J
    :cond_35
    :goto_35
    monitor-exit v3

    .line 450
    return-void

    .line 462
    .restart local v0    # "idToken":J
    :catchall_37
    move-exception v2

    .line 463
    :try_start_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    throw v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 451
    .end local v0    # "idToken":J
    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 466
    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 467
    const-string/jumbo v2, "TvRemoteProvProxy"

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendKeyUp, Invalid connection or incorrect uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_3f .. :try_end_63} :catchall_3c

    goto :goto_35
.end method

.method sendPointerDown(Landroid/os/IBinder;III)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 477
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v0

    if-ne v0, p0, :cond_43

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v1

    if-ne v0, v1, :cond_43

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_40

    move-result-wide v6

    .line 484
    .local v6, "idToken":J
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 485
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;III)V
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_3b

    .line 489
    :cond_36
    :try_start_36
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .end local v6    # "idToken":J
    :cond_39
    :goto_39
    monitor-exit v8

    .line 475
    return-void

    .line 488
    .restart local v6    # "idToken":J
    :catchall_3b
    move-exception v0

    .line 489
    :try_start_3c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    throw v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 476
    .end local v6    # "idToken":J
    :catchall_40
    move-exception v0

    monitor-exit v8

    throw v0

    .line 492
    :cond_43
    :try_start_43
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 493
    const-string/jumbo v0, "TvRemoteProvProxy"

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPointerDown, Invalid connection or incorrect uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_40

    goto :goto_39
.end method

.method sendPointerSync(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 528
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 529
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v2

    if-ne v2, p0, :cond_3f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v4

    if-ne v2, v4, :cond_3f

    .line 534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3c

    move-result-wide v0

    .line 536
    .local v0, "idToken":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 537
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v2, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerSync(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 540
    :cond_32
    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .end local v0    # "idToken":J
    :cond_35
    :goto_35
    monitor-exit v3

    .line 527
    return-void

    .line 539
    .restart local v0    # "idToken":J
    :catchall_37
    move-exception v2

    .line 540
    :try_start_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    throw v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 528
    .end local v0    # "idToken":J
    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 543
    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 544
    const-string/jumbo v2, "TvRemoteProvProxy"

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendPointerSync, Invalid connection or incorrect uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_3f .. :try_end_63} :catchall_3c

    goto :goto_35
.end method

.method sendPointerUp(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I

    .prologue
    .line 502
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 503
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v2

    if-ne v2, p0, :cond_3f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v4

    if-ne v2, v4, :cond_3f

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3c

    move-result-wide v0

    .line 510
    .local v0, "idToken":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 511
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v2, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 515
    :cond_32
    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .end local v0    # "idToken":J
    :cond_35
    :goto_35
    monitor-exit v3

    .line 501
    return-void

    .line 514
    .restart local v0    # "idToken":J
    :catchall_37
    move-exception v2

    .line 515
    :try_start_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    throw v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 502
    .end local v0    # "idToken":J
    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 518
    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 519
    const-string/jumbo v2, "TvRemoteProvProxy"

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendPointerUp, Invalid connection or incorrect uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_3f .. :try_end_63} :catchall_3c

    goto :goto_35
.end method

.method sendTimestamp(Landroid/os/IBinder;J)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J

    .prologue
    .line 403
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get3(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 404
    :try_start_7
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get1(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v2

    if-ne v2, p0, :cond_3f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get5(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v4

    if-ne v2, v4, :cond_3f

    .line 405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3c

    move-result-wide v0

    .line 407
    .local v0, "idToken":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 408
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get4(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v2, v4, p1, p2, p3}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendTimeStamp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;J)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 412
    :cond_32
    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .end local v0    # "idToken":J
    :cond_35
    :goto_35
    monitor-exit v3

    .line 402
    return-void

    .line 411
    .restart local v0    # "idToken":J
    :catchall_37
    move-exception v2

    .line 412
    :try_start_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    throw v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 403
    .end local v0    # "idToken":J
    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 415
    :cond_3f
    :try_start_3f
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->-get0()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 416
    const-string/jumbo v2, "TvRemoteProvProxy"

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTimeStamp, Invalid connection or incorrect uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_3f .. :try_end_63} :catchall_3c

    goto :goto_35
.end method
