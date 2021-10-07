.class public abstract Lcom/android/server/fingerprint/EnumerateClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnumerateClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onEnumerationResult(II)Z
    .registers 9
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v1

    .line 85
    .local v1, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-nez v1, :cond_9

    .line 86
    return v2

    .line 88
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getHalDeviceId()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_13

    .line 92
    :goto_10
    if-nez p1, :cond_1e

    :goto_12
    return v2

    .line 89
    :catch_13
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Failed to notify enumerated:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    move v2, v3

    .line 92
    goto :goto_12
.end method

.method public start()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 43
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_start_5
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enumerate()I

    move-result v2

    .line 44
    .local v2, "result":I
    if-eqz v2, :cond_4d

    .line 45
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start enumerate for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 46
    const-string/jumbo v5, " failed, result="

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "fingerprintd_enum_start_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 48
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/EnumerateClient;->onError(I)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_42} :catch_43

    .line 49
    return v2

    .line 51
    .end local v2    # "result":I
    :catch_43
    move-exception v1

    .line 52
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "startRemove failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    return v6
.end method

.method public stop(Z)I
    .registers 9
    .param p1, "initiatedByClient"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 60
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_12

    .line 61
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v6

    .line 65
    :cond_12
    :try_start_12
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnumeration()I

    move-result v2

    .line 66
    .local v2, "result":I
    if-eqz v2, :cond_3e

    .line 67
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stop enumeration failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_32} :catch_33

    .line 68
    return v2

    .line 70
    .end local v2    # "result":I
    :catch_33
    move-exception v1

    .line 71
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stop enumeration failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    return v6

    .line 76
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "result":I
    :cond_3e
    if-eqz p1, :cond_44

    .line 77
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/EnumerateClient;->onError(I)Z

    .line 79
    :cond_44
    return v4
.end method
