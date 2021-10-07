.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.super Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceInteractionManagerServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;
    }
.end annotation


# instance fields
.field private mCurUser:I

.field private final mEnableService:Z

.field mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSafeMode:Z

.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->unloadAllKeyphraseModels()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>()V

    .line 1143
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 185
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->shouldEnableService(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    .line 184
    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 1123
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller does not hold the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_24
    return-void
.end method

.method private getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 354
    const v1, 0x10400ce

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "interactorPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    .end local v0    # "interactorPackage":Ljava/lang/String;
    :cond_e
    return-object v0
.end method

.method private shouldEnableService(Landroid/content/res/Resources;)Z
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x1

    .line 348
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 348
    :cond_d
    :goto_d
    return v0

    .line 349
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private declared-synchronized unloadAllKeyphraseModels()V
    .registers 9

    .prologue
    monitor-enter p0

    .line 925
    :try_start_1
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "keyphraseId$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 926
    .local v2, "keyphraseId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_50

    move-result-wide v0

    .line 928
    .local v0, "caller":J
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {v5, v2}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->unloadKeyphraseModel(I)I

    move-result v4

    .line 929
    .local v4, "status":I
    if-eqz v4, :cond_4c

    .line 930
    const-string/jumbo v5, "VoiceInteractionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to unload keyphrase "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_1d .. :try_end_4c} :catchall_53

    .line 933
    :cond_4c
    :try_start_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_9

    .end local v0    # "caller":J
    .end local v2    # "keyphraseId":I
    .end local v3    # "keyphraseId$iterator":Ljava/util/Iterator;
    .end local v4    # "status":I
    :catchall_50
    move-exception v5

    monitor-exit p0

    throw v5

    .line 932
    .restart local v0    # "caller":J
    .restart local v2    # "keyphraseId":I
    .restart local v3    # "keyphraseId$iterator":Ljava/util/Iterator;
    :catchall_53
    move-exception v5

    .line 933
    :try_start_54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    throw v5

    .line 936
    .end local v0    # "caller":J
    .end local v2    # "keyphraseId":I
    :cond_58
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->clear()V
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_50

    monitor-exit p0

    .line 924
    return-void
.end method


# virtual methods
.method public activeServiceSupportsAssist()Z
    .registers 2

    .prologue
    .line 1020
    const-string/jumbo v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1021
    monitor-enter p0

    .line 1022
    :try_start_7
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1d

    move-result v0

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    .line 1021
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1028
    const-string/jumbo v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1029
    monitor-enter p0

    .line 1030
    :try_start_7
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-eqz v0, :cond_1b

    .line 1031
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1d

    move-result v0

    :goto_19
    monitor-exit p0

    .line 1030
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    .line 1029
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeSystemDialogs(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 658
    monitor-enter p0

    .line 659
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_10

    .line 660
    const-string/jumbo v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "closeSystemDialogs without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    monitor-exit p0

    .line 661
    return-void

    .line 663
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_23

    move-result-wide v0

    .line 665
    .local v0, "caller":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->closeSystemDialogsLocked(Landroid/os/IBinder;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 667
    :try_start_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    monitor-exit p0

    .line 657
    return-void

    .line 666
    :catchall_1e
    move-exception v2

    .line 667
    :try_start_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    throw v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 658
    .end local v0    # "caller":J
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .registers 12
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 786
    const-string/jumbo v6, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 788
    if-nez p2, :cond_12

    .line 789
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 790
    const-string/jumbo v6, "Illegal argument(s) in deleteKeyphraseSoundModel"

    .line 789
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 793
    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 794
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 795
    .local v0, "caller":J
    const/4 v3, 0x0

    .line 797
    .local v3, "deleted":Z
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {v6, p1}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->unloadKeyphraseModel(I)I

    move-result v4

    .line 798
    .local v4, "unloadStatus":I
    if-eqz v4, :cond_3f

    .line 799
    const-string/jumbo v6, "VoiceInteractionManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to unload keyphrase sound model:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_3f
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v6, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    :try_end_46
    .catchall {:try_start_1b .. :try_end_46} :catchall_71

    move-result v3

    .line 802
    .local v3, "deleted":Z
    if-eqz v3, :cond_6b

    .line 804
    :goto_49
    if-eqz v3, :cond_67

    .line 805
    monitor-enter p0

    .line 807
    :try_start_4c
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v6, :cond_5b

    .line 808
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 810
    :cond_5b
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_6e

    monitor-exit p0

    .line 813
    :cond_67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    return v5

    :cond_6b
    const/high16 v5, -0x80000000

    goto :goto_49

    .line 805
    :catchall_6e
    move-exception v5

    monitor-exit p0

    throw v5

    .line 803
    .end local v4    # "unloadStatus":I
    .local v3, "deleted":Z
    :catchall_71
    move-exception v5

    .line 804
    if-eqz v3, :cond_90

    .line 805
    monitor-enter p0

    .line 807
    :try_start_75
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v6, :cond_84

    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v6, :cond_84

    .line 808
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 810
    :cond_84
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_94

    monitor-exit p0

    .line 813
    :cond_90
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    throw v5

    .line 805
    :catchall_94
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 575
    monitor-enter p0

    .line 576
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_11

    .line 577
    new-instance v2, Ljava/lang/SecurityException;

    .line 578
    const-string/jumbo v3, "deliverNewSession without running voice interaction service"

    .line 577
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 575
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 580
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    move-result-wide v0

    .line 582
    .local v0, "caller":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_20

    move-result v2

    .line 584
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_e

    monitor-exit p0

    .line 582
    return v2

    .line 583
    :catchall_20
    move-exception v2

    .line 584
    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    throw v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_e
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_38

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1104
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1105
    const-string/jumbo v1, ", uid="

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    return-void

    .line 1108
    :cond_38
    monitor-enter p0

    .line 1109
    :try_start_39
    const-string/jumbo v0, "VOICE INTERACTION MANAGER (dumpsys voiceinteraction)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mEnableService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_64

    .line 1112
    const-string/jumbo v0, "  (No active implementation)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_39 .. :try_end_62} :catchall_72

    monitor-exit p0

    .line 1113
    return-void

    .line 1115
    :cond_64
    :try_start_64
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_72

    monitor-exit p0

    .line 1117
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1100
    return-void

    .line 1108
    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;
    .registers 16
    .param p1, "userHandle"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 421
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 422
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.service.voice.VoiceInteractionService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    const/high16 v10, 0x100c0000

    .line 421
    invoke-virtual {v8, v9, v10, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 426
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 428
    .local v7, "numAvailable":I
    if-nez v7, :cond_38

    .line 429
    const-string/jumbo v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no available voice interaction services found for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v11

    .line 434
    :cond_38
    const/4 v4, 0x0

    .line 435
    .local v4, "foundInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    const/4 v5, 0x0

    .end local v4    # "foundInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    .local v5, "i":I
    :goto_3a
    if-ge v5, v7, :cond_103

    .line 436
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 437
    .local v2, "cur":Landroid/content/pm/ServiceInfo;
    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_79

    .line 438
    new-instance v1, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .local v1, "comp":Landroid/content/ComponentName;
    :try_start_55
    new-instance v6, Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 441
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 440
    invoke-direct {v6, v8, v1, p1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 442
    .local v6, "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d8

    .line 443
    if-eqz p2, :cond_76

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 445
    :cond_76
    if-nez v4, :cond_7c

    .line 446
    move-object v4, v6

    .line 435
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_79
    :goto_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 448
    .restart local v1    # "comp":Landroid/content/ComponentName;
    .restart local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_7c
    const-string/jumbo v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "More than one voice interaction service, picking first "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 450
    new-instance v10, Landroid/content/ComponentName;

    .line 451
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 452
    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 450
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 453
    const-string/jumbo v10, " over "

    .line 448
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 454
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_bb} :catch_bc

    goto :goto_79

    .line 461
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_bc
    move-exception v3

    .line 462
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failure looking up interaction service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 458
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_d8
    :try_start_d8
    const-string/jumbo v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad interaction service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 459
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v10

    .line 458
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_101} :catch_bc

    goto/16 :goto_79

    .line 467
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "cur":Landroid/content/pm/ServiceInfo;
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_103
    return-object v4
.end method

.method findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 12
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 493
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 494
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.speech.RecognitionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v4, v5, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 495
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 497
    .local v2, "numAvailable":I
    if-nez v2, :cond_37

    .line 498
    const-string/jumbo v4, "VoiceInteractionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no available voice recognition services found for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-object v8

    .line 501
    :cond_37
    if-eqz p1, :cond_59

    .line 502
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    if-ge v1, v2, :cond_59

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 504
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 505
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 502
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 509
    .end local v1    # "i":I
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_59
    const/4 v4, 0x1

    if-le v2, v4, :cond_65

    .line 510
    const-string/jumbo v4, "VoiceInteractionManagerService"

    const-string/jumbo v5, "more than one voice recognition service found, picking first"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_65
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 514
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public finish(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 674
    monitor-enter p0

    .line 675
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_10

    .line 676
    const-string/jumbo v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "finish without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    monitor-exit p0

    .line 677
    return-void

    .line 679
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_24

    move-result-wide v0

    .line 681
    .local v0, "caller":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1f

    .line 683
    :try_start_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_24

    monitor-exit p0

    .line 673
    return-void

    .line 682
    :catchall_1f
    move-exception v2

    .line 683
    :try_start_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 682
    throw v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 674
    .end local v0    # "caller":J
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 941
    const-string/jumbo v1, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 942
    monitor-enter p0

    .line 943
    :try_start_8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-object v0

    .line 942
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCurAssistant(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 541
    const-string/jumbo v2, "assistant"

    .line 539
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "curAssistant":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 543
    const/4 v1, 0x0

    return-object v1

    .line 547
    :cond_17
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method getCurInteractor(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 474
    const-string/jumbo v2, "voice_interaction_service"

    .line 472
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "curInteractor":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 476
    const/4 v1, 0x0

    return-object v1

    .line 480
    :cond_17
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method getCurRecognizer(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 521
    const-string/jumbo v2, "voice_recognition_service"

    .line 519
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "curRecognizer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 523
    const/4 v1, 0x0

    return-object v1

    .line 527
    :cond_17
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public getDisabledShowContext()I
    .registers 6

    .prologue
    .line 707
    monitor-enter p0

    .line 708
    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v3, :cond_11

    .line 709
    const-string/jumbo v3, "VoiceInteractionManagerService"

    const-string/jumbo v4, "getDisabledShowContext without running voice interaction service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_29

    .line 710
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 712
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 713
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_29

    move-result-wide v0

    .line 715
    .local v0, "caller":J
    :try_start_19
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getDisabledShowContextLocked(I)I
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_24

    move-result v3

    .line 717
    :try_start_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    monitor-exit p0

    .line 715
    return v3

    .line 716
    :catchall_24
    move-exception v3

    .line 717
    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 707
    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;

    .prologue
    .line 847
    monitor-enter p0

    .line 848
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v2, :cond_17

    .line 850
    :cond_b
    new-instance v2, Ljava/lang/SecurityException;

    .line 851
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    .line 850
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 847
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2

    .line 849
    :cond_17
    if-eqz p1, :cond_b

    :try_start_19
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_b

    .line 854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_14

    move-result-wide v0

    .line 856
    .local v0, "caller":J
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_38

    move-result-object v2

    .line 858
    :try_start_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_14

    monitor-exit p0

    .line 856
    return-object v2

    .line 857
    :catchall_38
    move-exception v2

    .line 858
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    throw v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_14
.end method

.method public getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 8
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 744
    const-string/jumbo v3, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 746
    if-nez p2, :cond_11

    .line 747
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Illegal argument(s) in getKeyphraseSoundModel"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 750
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 751
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 753
    .local v0, "caller":J
    :try_start_19
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_25

    move-result-object v3

    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    return-object v3

    .line 754
    :catchall_25
    move-exception v3

    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 754
    throw v3
.end method

.method public getUserDisabledShowContext()I
    .registers 6

    .prologue
    .line 724
    monitor-enter p0

    .line 725
    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v3, :cond_11

    .line 726
    const-string/jumbo v3, "VoiceInteractionManagerService"

    .line 727
    const-string/jumbo v4, "getUserDisabledShowContext without running voice interaction service"

    .line 726
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_29

    .line 728
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 730
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 731
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_29

    move-result-wide v0

    .line 733
    .local v0, "caller":J
    :try_start_19
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getUserDisabledShowContextLocked(I)I
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_24

    move-result v3

    .line 735
    :try_start_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    monitor-exit p0

    .line 733
    return v3

    .line 734
    :catchall_24
    move-exception v3

    .line 735
    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 724
    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public hideCurrentSession()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 972
    const-string/jumbo v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 973
    monitor-enter p0

    .line 974
    :try_start_7
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_3d

    if-nez v3, :cond_d

    monitor-exit p0

    .line 975
    return-void

    .line 977
    :cond_d
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_3d

    move-result-wide v0

    .line 979
    .local v0, "caller":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_38

    if-eqz v3, :cond_28

    .line 981
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionSession;->closeSystemDialogs()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2d
    .catchall {:try_start_1f .. :try_end_28} :catchall_38

    .line 987
    :cond_28
    :goto_28
    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3d

    monitor-exit p0

    .line 971
    return-void

    .line 982
    :catch_2d
    move-exception v2

    .line 983
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string/jumbo v3, "VoiceInteractionManagerService"

    const-string/jumbo v4, "Failed to call closeSystemDialogs"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_38

    goto :goto_28

    .line 986
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_38
    move-exception v3

    .line 987
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    throw v3
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    .line 973
    .end local v0    # "caller":J
    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public hideSessionFromSession(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 607
    monitor-enter p0

    .line 608
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_11

    .line 609
    const-string/jumbo v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "hideSessionFromSession without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_25

    .line 610
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 612
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_25

    move-result-wide v0

    .line 614
    .local v0, "caller":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->hideSessionLocked()Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_20

    move-result v2

    .line 616
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_25

    monitor-exit p0

    .line 614
    return v2

    .line 615
    :catchall_20
    move-exception v2

    .line 616
    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 615
    throw v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 607
    .end local v0    # "caller":J
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public initForUser(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    const/4 v12, 0x0

    .line 249
    iget-object v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v9, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 250
    const-string/jumbo v10, "voice_interaction_service"

    .line 248
    invoke-static {v9, v10, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "curInteractorStr":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 252
    .local v3, "curRecognizer":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 255
    .local v1, "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-nez v2, :cond_28

    if-eqz v3, :cond_28

    iget-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    if-eqz v9, :cond_28

    .line 262
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v1

    .line 263
    .local v1, "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-eqz v1, :cond_28

    .line 269
    const/4 v3, 0x0

    .line 276
    .end local v1    # "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    .end local v3    # "curRecognizer":Landroid/content/ComponentName;
    :cond_28
    iget-object v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v9, v9, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getForceVoiceInteractionServicePackage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "forceInteractorPackage":Ljava/lang/String;
    if-eqz v5, :cond_3d

    .line 278
    invoke-virtual {p0, p1, v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v1

    .line 279
    .restart local v1    # "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-eqz v1, :cond_3d

    .line 281
    const/4 v3, 0x0

    .line 287
    .end local v1    # "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_3d
    iget-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    if-nez v9, :cond_4f

    if-eqz v2, :cond_4f

    .line 288
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4f

    .line 290
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 291
    const-string/jumbo v2, ""

    .line 295
    :cond_4f
    if-eqz v3, :cond_76

    .line 298
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 299
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 300
    .local v6, "interactorInfo":Landroid/content/pm/ServiceInfo;
    const/4 v8, 0x0

    .line 301
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_74

    .line 302
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 304
    :goto_61
    const/4 v9, 0x0

    :try_start_62
    invoke-interface {v7, v3, v9, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 305
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_6d

    .line 306
    const/4 v9, 0x0

    invoke-interface {v7, v0, v9, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6c} :catch_be

    move-result-object v6

    .line 311
    .end local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .end local v8    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_6d
    :goto_6d
    if-eqz v8, :cond_76

    if-eqz v0, :cond_73

    if-eqz v6, :cond_76

    .line 313
    :cond_73
    return-void

    .line 302
    .restart local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .local v8, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_74
    const/4 v0, 0x0

    .local v0, "curInteractor":Landroid/content/ComponentName;
    goto :goto_61

    .line 320
    .end local v0    # "curInteractor":Landroid/content/ComponentName;
    .end local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    .end local v8    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_76
    if-nez v1, :cond_80

    iget-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mEnableService:Z

    if-eqz v9, :cond_80

    .line 321
    invoke-virtual {p0, p1, v12}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILjava/lang/String;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v1

    .line 324
    :cond_80
    if-eqz v1, :cond_af

    .line 326
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 327
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 326
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 328
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_af

    .line 330
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 331
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v11

    .line 330
    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, v9, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 332
    return-void

    .line 337
    :cond_af
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    .line 338
    .restart local v3    # "curRecognizer":Landroid/content/ComponentName;
    if-eqz v3, :cond_bd

    .line 339
    if-nez v1, :cond_ba

    .line 340
    invoke-virtual {p0, v12, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 342
    :cond_ba
    invoke-virtual {p0, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 246
    :cond_bd
    return-void

    .line 308
    .end local v3    # "curRecognizer":Landroid/content/ComponentName;
    .restart local v6    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "pm":Landroid/content/pm/IPackageManager;
    :catch_be
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_6d
.end method

.method public isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    .registers 10
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 821
    monitor-enter p0

    .line 822
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v4, :cond_17

    .line 824
    :cond_b
    new-instance v4, Ljava/lang/SecurityException;

    .line 825
    const-string/jumbo v5, "Caller is not the current voice interaction service"

    .line 824
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 821
    :catchall_14
    move-exception v4

    monitor-exit p0

    throw v4

    .line 823
    :cond_17
    :try_start_17
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_14

    move-result-object v5

    if-ne v4, v5, :cond_b

    monitor-exit p0

    .line 829
    if-nez p3, :cond_31

    .line 830
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Illegal argument(s) in isEnrolledForKeyphrase"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 833
    :cond_31
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 834
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 837
    .local v0, "caller":J
    :try_start_39
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v4, p2, v2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4a

    move-result-object v3

    .line 838
    .local v3, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_48

    const/4 v4, 0x1

    .line 840
    :goto_44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    return v4

    :cond_48
    const/4 v4, 0x0

    goto :goto_44

    .line 839
    .end local v3    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_4a
    move-exception v4

    .line 840
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 839
    throw v4
.end method

.method public isSessionRunning()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1012
    const-string/jumbo v1, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1013
    monitor-enter p0

    .line 1014
    :try_start_8
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_15

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    monitor-exit p0

    return v0

    .line 1013
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 5

    .prologue
    .line 994
    const-string/jumbo v2, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 995
    monitor-enter p0

    .line 996
    :try_start_7
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_16

    .line 997
    const-string/jumbo v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "launchVoiceAssistFromKeyguard without running voice interactionservice"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_29

    monitor-exit p0

    .line 999
    return-void

    .line 1001
    :cond_16
    :try_start_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_29

    move-result-wide v0

    .line 1003
    .local v0, "caller":J
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->launchVoiceAssistFromKeyguard()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_24

    .line 1005
    :try_start_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    monitor-exit p0

    .line 993
    return-void

    .line 1004
    :catchall_24
    move-exception v2

    .line 1005
    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1004
    throw v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 995
    .end local v0    # "caller":J
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onLockscreenShown()V
    .registers 6

    .prologue
    .line 1037
    const-string/jumbo v3, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1038
    monitor-enter p0

    .line 1039
    :try_start_7
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_3d

    if-nez v3, :cond_d

    monitor-exit p0

    .line 1040
    return-void

    .line 1042
    :cond_d
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_3d

    move-result-wide v0

    .line 1044
    .local v0, "caller":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_38

    if-eqz v3, :cond_28

    .line 1046
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionSession;->onLockscreenShown()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2d
    .catchall {:try_start_1f .. :try_end_28} :catchall_38

    .line 1052
    :cond_28
    :goto_28
    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3d

    monitor-exit p0

    .line 1036
    return-void

    .line 1047
    :catch_2d
    move-exception v2

    .line 1048
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string/jumbo v3, "VoiceInteractionManagerService"

    const-string/jumbo v4, "Failed to call onLockscreenShown"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_38

    goto :goto_28

    .line 1051
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_38
    move-exception v3

    .line 1052
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1051
    throw v3
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    .line 1038
    .end local v0    # "caller":J
    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onSessionHidden()V
    .registers 7

    .prologue
    .line 1083
    monitor-enter p0

    .line 1084
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1085
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v3, :cond_2e

    .line 1087
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 1089
    .local v2, "listener":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_start_1a
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionHidden()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_20
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2b

    .line 1085
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1091
    :catch_20
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string/jumbo v4, "VoiceInteractionManagerService"

    const-string/jumbo v5, "Error delivering voice interaction closed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_1d

    .line 1083
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    .end local v3    # "size":I
    :catchall_2b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1095
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2b

    monitor-exit p0

    .line 1082
    return-void
.end method

.method public onSessionShown()V
    .registers 7

    .prologue
    .line 1067
    monitor-enter p0

    .line 1068
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1069
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v3, :cond_2e

    .line 1071
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 1073
    .local v2, "listener":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    :try_start_1a
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionListener;->onVoiceSessionShown()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_20
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2b

    .line 1069
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1074
    :catch_20
    move-exception v0

    .line 1075
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string/jumbo v4, "VoiceInteractionManagerService"

    const-string/jumbo v5, "Error delivering voice interaction open event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_1d

    .line 1067
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    .end local v3    # "size":I
    :catchall_2b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1078
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2b

    monitor-exit p0

    .line 1066
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 236
    :catch_5
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_13

    .line 240
    const-string/jumbo v1, "VoiceInteractionManagerService"

    const-string/jumbo v2, "VoiceInteractionManagerService Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :cond_13
    throw v0
.end method

.method public registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/app/IVoiceInteractionSessionListener;

    .prologue
    .line 1060
    const-string/jumbo v0, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 1061
    monitor-enter p0

    .line 1062
    :try_start_7
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get1(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit p0

    .line 1059
    return-void

    .line 1061
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resetCurAssistant(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 552
    const-string/jumbo v1, "assistant"

    const/4 v2, 0x0

    .line 551
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 550
    return-void
.end method

.method setCurInteractor(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 485
    const-string/jumbo v2, "voice_interaction_service"

    .line 486
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 484
    :goto_11
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 483
    return-void

    .line 486
    :cond_15
    const-string/jumbo v0, ""

    goto :goto_11
.end method

.method setCurRecognizer(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 532
    const-string/jumbo v2, "voice_recognition_service"

    .line 533
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 531
    :goto_11
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 530
    return-void

    .line 533
    :cond_15
    const-string/jumbo v0, ""

    goto :goto_11
.end method

.method public setDisabledShowContext(I)V
    .registers 7
    .param p1, "flags"    # I

    .prologue
    .line 690
    monitor-enter p0

    .line 691
    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v3, :cond_10

    .line 692
    const-string/jumbo v3, "VoiceInteractionManagerService"

    const-string/jumbo v4, "setDisabledShowContext without running voice interaction service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_27

    monitor-exit p0

    .line 693
    return-void

    .line 695
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 696
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_27

    move-result-wide v0

    .line 698
    .local v0, "caller":J
    :try_start_18
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setDisabledShowContextLocked(II)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_22

    .line 700
    :try_start_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    monitor-exit p0

    .line 689
    return-void

    .line 699
    :catchall_22
    move-exception v3

    .line 700
    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    throw v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 690
    .end local v0    # "caller":J
    .end local v2    # "callingUid":I
    :catchall_27
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setKeepAwake(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keepAwake"    # Z

    .prologue
    .line 642
    monitor-enter p0

    .line 643
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_10

    .line 644
    const-string/jumbo v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "setKeepAwake without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    monitor-exit p0

    .line 645
    return-void

    .line 647
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_23

    move-result-wide v0

    .line 649
    .local v0, "caller":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 651
    :try_start_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    monitor-exit p0

    .line 641
    return-void

    .line 650
    :catchall_1e
    move-exception v2

    .line 651
    :try_start_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    throw v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 642
    .end local v0    # "caller":J
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .prologue
    .line 557
    monitor-enter p0

    .line 558
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v2, :cond_17

    .line 560
    :cond_b
    new-instance v2, Ljava/lang/SecurityException;

    .line 561
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    .line 560
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 557
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2

    .line 559
    :cond_17
    :try_start_17
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_b

    .line 563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_14

    move-result-wide v0

    .line 565
    .local v0, "caller":J
    :try_start_29
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, p3, v3, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_35

    .line 567
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_14

    monitor-exit p0

    .line 556
    return-void

    .line 566
    :catchall_35
    move-exception v2

    .line 567
    :try_start_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    throw v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_14
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 950
    const-string/jumbo v2, "android.permission.ACCESS_VOICE_INTERACTION_SERVICE"

    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 951
    monitor-enter p0

    .line 952
    :try_start_7
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_17

    .line 953
    const-string/jumbo v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "showSessionForActiveService without running voice interactionservice"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_2f

    .line 955
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 957
    :cond_17
    :try_start_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2f

    move-result-wide v0

    .line 959
    .local v0, "caller":J
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 960
    or-int/lit8 v3, p2, 0x1

    or-int/lit8 v3, v3, 0x2

    .line 959
    invoke-virtual {v2, p1, v3, p3, p4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_2a

    move-result v2

    .line 965
    :try_start_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2f

    monitor-exit p0

    .line 959
    return v2

    .line 964
    :catchall_2a
    move-exception v2

    .line 965
    :try_start_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 964
    throw v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    .line 951
    .end local v0    # "caller":J
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionArgs"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .prologue
    .line 591
    monitor-enter p0

    .line 592
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_11

    .line 593
    const-string/jumbo v2, "VoiceInteractionManagerService"

    const-string/jumbo v3, "showSessionFromSession without running voice interaction service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_27

    .line 594
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 596
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_27

    move-result-wide v0

    .line 598
    .local v0, "caller":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, p3, v3, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_22

    move-result v2

    .line 600
    :try_start_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    monitor-exit p0

    .line 598
    return v2

    .line 599
    :catchall_22
    move-exception v2

    .line 600
    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    throw v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 591
    .end local v0    # "caller":J
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_5

    return-void

    .line 192
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 194
    .local v0, "caller":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 196
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/IBinder;)V

    .line 195
    const/16 v4, 0x10

    .line 194
    invoke-virtual {v2, p2, v4, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    return-void

    .line 209
    :catchall_19
    move-exception v2

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    throw v2
.end method

.method public startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 12
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p5, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    .line 868
    monitor-enter p0

    .line 869
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v4, :cond_17

    .line 871
    :cond_b
    new-instance v4, Ljava/lang/SecurityException;

    .line 872
    const-string/jumbo v5, "Caller is not the current voice interaction service"

    .line 871
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 868
    :catchall_14
    move-exception v4

    monitor-exit p0

    throw v4

    .line 870
    :cond_17
    if-eqz p1, :cond_b

    :try_start_19
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_b

    .line 875
    if-eqz p4, :cond_2b

    if-nez p5, :cond_34

    .line 876
    :cond_2b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Illegal argument(s) in startRecognition"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_14

    .line 875
    :cond_34
    if-eqz p3, :cond_2b

    monitor-exit p0

    .line 880
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 881
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 884
    .local v0, "caller":J
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v4, p2, v2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v3

    .line 885
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_4d

    .line 886
    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    if-nez v4, :cond_5c

    .line 888
    :cond_4d
    const-string/jumbo v4, "VoiceInteractionManagerService"

    const-string/jumbo v5, "No matching sound model found in startRecognition"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_7c

    .line 889
    const/high16 v4, -0x80000000

    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return v4

    .line 887
    :cond_5c
    :try_start_5c
    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v4, :cond_4d

    .line 893
    monitor-enter p0
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_7c

    .line 894
    :try_start_61
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Ljava/util/TreeSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_79

    :try_start_6c
    monitor-exit p0

    .line 896
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {v4, p2, v3, p4, p5}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_7c

    move-result v4

    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 896
    return v4

    .line 893
    :catchall_79
    move-exception v4

    :try_start_7a
    monitor-exit p0

    throw v4
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_7c

    .line 899
    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_7c
    move-exception v4

    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 899
    throw v4
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 623
    monitor-enter p0

    .line 624
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_11

    .line 625
    const-string/jumbo v0, "VoiceInteractionManagerService"

    const-string/jumbo v3, "startVoiceActivity without running voice interaction service"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_30

    .line 626
    const/4 v0, -0x6

    monitor-exit p0

    return v0

    .line 628
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 629
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 630
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_30

    move-result-wide v6

    .line 632
    .local v6, "caller":J
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_2b

    move-result v0

    .line 635
    :try_start_26
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_30

    monitor-exit p0

    .line 632
    return v0

    .line 634
    :catchall_2b
    move-exception v0

    .line 635
    :try_start_2c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    throw v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    .line 623
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .end local v6    # "caller":J
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "callingActivity"    # Landroid/os/IBinder;

    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v2, :cond_5

    return-void

    .line 217
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 219
    .local v0, "caller":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    return-void

    .line 220
    :catchall_13
    move-exception v2

    .line 221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    throw v2
.end method

.method public stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 8
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    .line 908
    monitor-enter p0

    .line 909
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v2, :cond_17

    .line 911
    :cond_b
    new-instance v2, Ljava/lang/SecurityException;

    .line 912
    const-string/jumbo v3, "Caller is not the current voice interaction service"

    .line 911
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 908
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2

    .line 910
    :cond_17
    if-eqz p1, :cond_b

    :try_start_19
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_14

    move-result-object v3

    if-ne v2, v3, :cond_b

    monitor-exit p0

    .line 916
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 918
    .local v0, "caller":J
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerInternal;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_38

    move-result v2

    .line 920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 918
    return v2

    .line 919
    :catchall_38
    move-exception v2

    .line 920
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 919
    throw v2
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->supportsLocalVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method switchImplementationIfNeeded(Z)V
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 379
    monitor-enter p0

    .line 380
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 378
    return-void

    .line 379
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method switchImplementationIfNeededLocked(Z)V
    .registers 11
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    if-nez v0, :cond_49

    .line 387
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "voice_interaction_service"

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 386
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "curService":Ljava/lang/String;
    const/4 v5, 0x0

    .line 389
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 390
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_1c

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 402
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .end local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1c
    :goto_1c
    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_78

    .line 404
    :cond_22
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->unloadAllKeyphraseModels()V

    .line 405
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_2e

    .line 406
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    .line 408
    :cond_2e
    if-eqz v5, :cond_8b

    if-eqz v8, :cond_8b

    .line 409
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 410
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    move-object v3, p0

    .line 409
    invoke-direct/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILandroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 411
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startLocked()V

    .line 384
    .end local v6    # "curService":Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 392
    .restart local v5    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v6    # "curService":Ljava/lang/String;
    .restart local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_4a
    :try_start_4a
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 393
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 394
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    const/4 v2, 0x0

    .line 393
    invoke-interface {v0, v5, v2, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_58} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_58} :catch_5a

    move-result-object v8

    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_1c

    .line 395
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .local v8, "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_5a
    move-exception v7

    .line 396
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "VoiceInteractionManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad voice interaction service name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    const/4 v5, 0x0

    .line 398
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    const/4 v8, 0x0

    goto :goto_1c

    .line 402
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_78
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    if-ne v0, v1, :cond_22

    .line 403
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_49

    .line 413
    :cond_8b
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    goto :goto_49
.end method

.method public switchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    :try_start_1
    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 371
    return-void

    .line 372
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemRunning(Z)V
    .registers 7
    .param p1, "safeMode"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    .line 361
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 362
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 361
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 363
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/Handler;)V

    .line 365
    monitor-enter p0

    .line 366
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    .line 358
    return-void

    .line 365
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 6
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .prologue
    .line 761
    const-string/jumbo v2, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->enforceCallingPermission(Ljava/lang/String;)V

    .line 762
    if-nez p1, :cond_11

    .line 763
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Model must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 766
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 768
    .local v0, "caller":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 769
    monitor-enter p0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_38

    .line 771
    :try_start_20
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v2, :cond_2f

    .line 772
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_35

    :cond_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_38

    .line 775
    const/4 v2, 0x0

    .line 780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    return v2

    .line 769
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit p0

    throw v2
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_38

    .line 779
    :catchall_38
    move-exception v2

    .line 780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    throw v2

    .line 777
    :cond_3d
    const/high16 v2, -0x80000000

    .line 780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 777
    return v2
.end method
