.class public Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mCallingUid:I

.field private final mClientId:Ljava/lang/String;

.field private mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field private final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field private mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mFocusGainRequest:I

.field private mFocusLossReceived:I

.field private final mGrantFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSourceRef:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V
    .registers 12
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusRequest"    # I
    .param p3, "grantFlags"    # I
    .param p4, "afl"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "source"    # Landroid/os/IBinder;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "hdlr"    # Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .param p8, "pn"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "ctlr"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 86
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 87
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 88
    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 90
    iput-object p8, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 91
    iput p9, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 92
    iput p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 93
    iput p3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 95
    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 84
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "flags"    # I

    .prologue
    .line 176
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 177
    .local v0, "msg":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1d

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DELAY_OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_1d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_4f

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "LOCK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_4f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_81

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PAUSES_ON_DUCKABLE_LOSS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_81
    return-object v0
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "focus"    # I

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_40

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_1f
    const-string/jumbo v0, "none"

    return-object v0

    .line 149
    :pswitch_23
    const-string/jumbo v0, "GAIN"

    return-object v0

    .line 151
    :pswitch_27
    const-string/jumbo v0, "GAIN_TRANSIENT"

    return-object v0

    .line 153
    :pswitch_2b
    const-string/jumbo v0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object v0

    .line 155
    :pswitch_2f
    const-string/jumbo v0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object v0

    .line 157
    :pswitch_33
    const-string/jumbo v0, "LOSS"

    return-object v0

    .line 159
    :pswitch_37
    const-string/jumbo v0, "LOSS_TRANSIENT"

    return-object v0

    .line 161
    :pswitch_3b
    const-string/jumbo v0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object v0

    .line 145
    nop

    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method private focusGainToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private focusLossForGainRequest(I)I
    .registers 5
    .param p1, "gainRequest"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v1, -0x1

    .line 228
    packed-switch p1, :pswitch_data_38

    .line 258
    :goto_5
    const-string/jumbo v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, 0x0

    return v0

    .line 230
    :pswitch_21
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    packed-switch v0, :pswitch_data_44

    .line 239
    :pswitch_26
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    packed-switch v0, :pswitch_data_50

    .line 248
    :pswitch_2b
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_5

    .line 251
    :pswitch_31
    const/4 v0, -0x3

    return v0

    .line 235
    :pswitch_33
    return v1

    .line 243
    :pswitch_34
    return v2

    .line 245
    :pswitch_35
    return v1

    .line 253
    :pswitch_36
    return v2

    .line 255
    :pswitch_37
    return v1

    .line 228
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_26
    .end packed-switch

    .line 230
    :pswitch_data_44
    .packed-switch -0x3
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    .line 239
    :pswitch_data_50
    .packed-switch -0x3
        :pswitch_34
        :pswitch_34
        :pswitch_35
        :pswitch_34
    .end packed-switch

    .line 248
    :pswitch_data_5c
    .packed-switch -0x3
        :pswitch_31
        :pswitch_36
        :pswitch_37
        :pswitch_31
    .end packed-switch
.end method

.method private focusLossToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    const-string/jumbo v1, " -- pack: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    const-string/jumbo v1, " -- client: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const-string/jumbo v1, " -- gain: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    invoke-direct {p0}, Lcom/android/server/audio/FocusRequester;->focusGainToString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    const-string/jumbo v1, " -- flags: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    const-string/jumbo v1, " -- loss: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-direct {p0}, Lcom/android/server/audio/FocusRequester;->focusLossToString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string/jumbo v1, " -- uid: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string/jumbo v1, " -- attr: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 218
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 216
    return-void
.end method

.method getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method getGainRequest()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    return v0
.end method

.method getGrantFlags()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    return v0
.end method

.method handleExternalFocusGain(I)V
    .registers 3
    .param p1, "focusGain"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/audio/FocusRequester;->focusLossForGainRequest(I)I

    move-result v0

    .line 268
    .local v0, "focusLoss":I
    invoke-virtual {p0, v0}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    .line 266
    return-void
.end method

.method handleFocusGain(I)V
    .registers 7
    .param p1, "focusGain"    # I

    .prologue
    .line 276
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 277
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    .line 278
    const/4 v4, 0x1

    .line 277
    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 279
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 280
    .local v1, "fd":Landroid/media/IAudioFocusDispatcher;
    if-eqz v1, :cond_16

    .line 285
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_17

    .line 274
    .end local v1    # "fd":Landroid/media/IAudioFocusDispatcher;
    :cond_16
    :goto_16
    return-void

    .line 287
    :catch_17
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "Failure to signal gain of audio focus due to: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method handleFocusLoss(I)V
    .registers 7
    .param p1, "focusLoss"    # I

    .prologue
    .line 297
    :try_start_0
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v2, :cond_39

    .line 298
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 304
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->mustNotifyFocusOwnerOnDuck()Z

    move-result v2

    if-nez v2, :cond_24

    .line 305
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_24

    .line 306
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_24

    .line 312
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 313
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x0

    .line 312
    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 314
    return-void

    .line 316
    :cond_24
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 317
    .local v1, "fd":Landroid/media/IAudioFocusDispatcher;
    if-eqz v1, :cond_39

    .line 322
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 323
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    .line 322
    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 324
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_39} :catch_3a

    .line 295
    .end local v1    # "fd":Landroid/media/IAudioFocusDispatcher;
    :cond_39
    :goto_39
    return-void

    .line 327
    :catch_3a
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "Failure to signal loss of audio focus due to:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method hasSameBinder(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "ib"    # Landroid/os/IBinder;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method hasSameClient(Ljava/lang/String;)Z
    .registers 5
    .param p1, "otherClient"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 101
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 102
    :catch_b
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1
.end method

.method hasSamePackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 118
    :catch_b
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1
.end method

.method hasSameUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isLockedFocusOwner()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method release()V
    .registers 5

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    if-eqz v1, :cond_16

    .line 206
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_16
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_16} :catch_17

    .line 203
    :cond_16
    :goto_16
    return-void

    .line 210
    :catch_17
    move-exception v0

    .line 211
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v2, "FocusRequester.release() hit "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .registers 8

    .prologue
    .line 333
    new-instance v0, Landroid/media/AudioFocusInfo;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 334
    iget v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget v6, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 333
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method
