.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# instance fields
.field private mIsCancelled:Z

.field private mOpId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "targetUserId"    # I
    .param p7, "groupId"    # I
    .param p8, "opId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;

    .prologue
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 45
    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 37
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsCancelled:Z

    .line 46
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    .line 44
    return-void
.end method


# virtual methods
.method public abstract handleFailedAttempt()Z
.end method

.method public onAuthenticated(II)Z
    .registers 14
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 51
    const/4 v10, 0x0

    .line 52
    .local v10, "result":Z
    if-eqz p1, :cond_40

    const/4 v6, 0x1

    .line 54
    .local v6, "authenticated":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 55
    .local v9, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v9, :cond_ac

    .line 57
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfc

    invoke-static {v1, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 59
    if-nez v6, :cond_42

    .line 60
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v9, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_9d

    .line 78
    :goto_1c
    if-nez v6, :cond_ba

    .line 79
    if-eqz v9, :cond_27

    .line 80
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    .line 83
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()Z

    move-result v8

    .line 85
    .local v8, "inLockoutMode":Z
    if-eqz v8, :cond_3e

    .line 87
    :try_start_2d
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Forcing lockout (fp driver code should do this!)"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    .line 89
    const/4 v1, 0x7

    .line 88
    invoke-interface {v9, v2, v3, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3e} :catch_af

    .line 94
    :cond_3e
    :goto_3e
    or-int/2addr v10, v8

    .line 102
    .end local v8    # "inLockoutMode":Z
    .local v10, "result":Z
    :goto_3f
    return v10

    .line 52
    .end local v6    # "authenticated":Z
    .end local v9    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .local v10, "result":Z
    :cond_40
    const/4 v6, 0x0

    .restart local v6    # "authenticated":Z
    goto :goto_4

    .line 63
    .restart local v9    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :cond_42
    :try_start_42
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticated(owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    const-string/jumbo v3, ", id="

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    const-string/jumbo v3, ", gp="

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    const-string/jumbo v3, ")"

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v1

    if-nez v1, :cond_aa

    .line 67
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v4

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 69
    :goto_91
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-interface {v9, v2, v3, v0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_9c} :catch_9d

    goto :goto_1c

    .line 71
    :catch_9d
    move-exception v7

    .line 72
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to notify Authenticated:"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v10, 0x1

    goto/16 :goto_1c

    .line 68
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_aa
    const/4 v0, 0x0

    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_91

    .line 76
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_ac
    const/4 v10, 0x1

    goto/16 :goto_1c

    .line 90
    .restart local v8    # "inLockoutMode":Z
    :catch_af
    move-exception v7

    .line 91
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to notify lockout:"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 96
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "inLockoutMode":Z
    :cond_ba
    if-eqz v9, :cond_c3

    .line 97
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    .line 99
    :cond_c3
    const/4 v1, 0x1

    or-int/2addr v10, v1

    .line 100
    .local v10, "result":Z
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    goto/16 :goto_3f
.end method

.method public onEnrollResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "rem"    # I

    .prologue
    .line 159
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(II)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 171
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(II)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 165
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public start()I
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 111
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_12

    .line 112
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "start authentication: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v7

    .line 116
    :cond_12
    :try_start_12
    iget-wide v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v3

    invoke-interface {v0, v4, v5, v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    move-result v2

    .line 117
    .local v2, "result":I
    if-eqz v2, :cond_47

    .line 118
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "fingeprintd_auth_start_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 120
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(I)Z

    .line 121
    return v2

    .line 123
    :cond_47
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is authenticating..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_6c} :catch_6d

    .line 128
    return v6

    .line 124
    .end local v2    # "result":I
    :catch_6d
    move-exception v1

    .line 125
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "startAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return v7
.end method

.method public stop(Z)I
    .registers 10
    .param p1, "initiatedByClient"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 133
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsCancelled:Z

    if-eqz v3, :cond_10

    .line 134
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "daemon.cancelAuthentication() is called, so return."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v6

    .line 137
    :cond_10
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsCancelled:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 139
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_23

    .line 140
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v7

    .line 144
    :cond_23
    :try_start_23
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v2

    .line 145
    .local v2, "result":I
    if-eqz v2, :cond_44

    .line 146
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v2

    .line 149
    :cond_44
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is no longer authenticating"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_69} :catch_6a

    .line 154
    return v6

    .line 150
    .end local v2    # "result":I
    :catch_6a
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    return v7
.end method
