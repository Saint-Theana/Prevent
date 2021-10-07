.class Lcom/android/server/location/LocationProviderProxy$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 99
    invoke-static {}, Lcom/android/server/location/LocationProviderProxy;->-get0()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string/jumbo v7, "LocationProviderProxy"

    const-string/jumbo v8, "applying state to connected service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_f
    const/4 v3, 0x0

    .line 106
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get2(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 107
    :try_start_17
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get1(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v2

    .line 108
    .local v2, "enabled":Z
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get3(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v4

    .line 109
    .local v4, "request":Lcom/android/internal/location/ProviderRequest;
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get5(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v6

    .line 110
    .local v6, "source":Landroid/os/WorkSource;
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-wrap0(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ILocationProvider;
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_33

    move-result-object v5

    .local v5, "service":Lcom/android/internal/location/ILocationProvider;
    monitor-exit v8

    .line 113
    if-nez v5, :cond_36

    return-void

    .line 106
    .end local v2    # "enabled":Z
    .end local v4    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v5    # "service":Lcom/android/internal/location/ILocationProvider;
    .end local v6    # "source":Landroid/os/WorkSource;
    :catchall_33
    move-exception v7

    monitor-exit v8

    throw v7

    .line 117
    .restart local v2    # "enabled":Z
    .restart local v4    # "request":Lcom/android/internal/location/ProviderRequest;
    .restart local v5    # "service":Lcom/android/internal/location/ILocationProvider;
    .restart local v6    # "source":Landroid/os/WorkSource;
    :cond_36
    :try_start_36
    invoke-interface {v5}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    .line 118
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    if-nez v3, :cond_60

    .line 119
    const-string/jumbo v7, "LocationProviderProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v9}, Lcom/android/server/location/LocationProviderProxy;->-get4(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 120
    const-string/jumbo v9, " has invalid locatino provider properties"

    .line 119
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_60
    if-eqz v2, :cond_6a

    .line 125
    invoke-interface {v5}, Lcom/android/internal/location/ILocationProvider;->enable()V

    .line 126
    if-eqz v4, :cond_6a

    .line 127
    invoke-interface {v5, v4, v6}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_6a} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6a} :catch_78

    .line 137
    .end local v3    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_6a
    :goto_6a
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v7}, Lcom/android/server/location/LocationProviderProxy;->-get2(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 138
    :try_start_71
    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v7, v3}, Lcom/android/server/location/LocationProviderProxy;->-set0(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_a6

    monitor-exit v8

    .line 98
    return-void

    .line 132
    :catch_78
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "LocationProviderProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v9}, Lcom/android/server/location/LocationProviderProxy;->-get4(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9e
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "LocationProviderProxy"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_a6
    move-exception v7

    monitor-exit v8

    throw v7
.end method
