.class Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;
.super Landroid/os/RemoteCallbackList;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/print/IPrinterDiscoveryObserver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2
    .param p1, "observer"    # Landroid/os/IInterface;

    .prologue
    .line 1237
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .end local p1    # "observer":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->onCallbackDied(Landroid/print/IPrinterDiscoveryObserver;)V

    return-void
.end method

.method public onCallbackDied(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    iget-object v0, v0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1239
    :try_start_9
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 1240
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 1237
    return-void

    .line 1238
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method
