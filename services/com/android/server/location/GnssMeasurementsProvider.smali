.class public abstract Lcom/android/server/location/GnssMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGnssMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GnssMeasurementsProvider"


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    const-string/jumbo v0, "GnssMeasurementsProvider"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/os/IInterface;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IInterface;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .registers 7
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 65
    packed-switch p1, :pswitch_data_2c

    .line 80
    const-string/jumbo v1, "GnssMeasurementsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled addListener result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v4

    .line 67
    :pswitch_1f
    const/4 v0, 0x1

    .line 83
    .local v0, "status":I
    :goto_20
    new-instance v1, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;-><init>(I)V

    return-object v1

    .line 72
    .end local v0    # "status":I
    :pswitch_26
    const/4 v0, 0x0

    .line 73
    .restart local v0    # "status":I
    goto :goto_20

    .line 75
    .end local v0    # "status":I
    :pswitch_28
    const/4 v0, 0x2

    .line 76
    .restart local v0    # "status":I
    goto :goto_20

    .line 78
    .end local v0    # "status":I
    :pswitch_2a
    return-object v4

    .line 65
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_26
        :pswitch_26
        :pswitch_28
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method public onCapabilitiesUpdated(Z)V
    .registers 2
    .param p1, "isGnssMeasurementsSupported"    # Z

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->setSupported(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->updateResult()V

    .line 51
    return-void
.end method

.method public onGpsEnabledChanged()V
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->tryUpdateRegistrationWithService()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->updateResult()V

    .line 56
    :cond_9
    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .prologue
    .line 42
    new-instance v0, Lcom/android/server/location/GnssMeasurementsProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GnssMeasurementsProvider$1;-><init>(Lcom/android/server/location/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V

    .line 48
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<Landroid/location/IGnssMeasurementsListener;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 40
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/os/IInterface;)V
    .registers 2
    .param p1, "listener"    # Landroid/os/IInterface;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    return-void
.end method
