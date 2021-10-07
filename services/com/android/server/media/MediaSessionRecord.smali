.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$1;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final ACTIVE_BUFFER:I = 0x7530

.field private static final DEBUG:Z

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"

.field private static final UID_NOT_SET:I = -0x1


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mBrowsedPlayerURI:Ljava/lang/String;

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/session/ISessionControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLastActiveTime:J

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mNowPlayingList:[J

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlayItemStatus:Z

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Landroid/content/pm/ParceledListSlice;

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/media/MediaSessionRecord;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mBrowsedPlayerURI:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/media/MediaSessionRecord;[J)[J
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mNowPlayingList:[J

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlayItemStatus:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return p1
.end method

.method static synthetic -set19(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .registers 3
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushBrowsePlayerInfo()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushNowPlayingContentChange()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushNowPlayingEntries()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlayItemResponse()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    const-string/jumbo v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    .line 64
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V
    .registers 13
    .param p1, "ownerPid"    # I
    .param p2, "ownerUid"    # I
    .param p3, "userId"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    .line 120
    iput v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 122
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 123
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 124
    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 127
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 130
    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    .line 800
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 135
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 136
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 137
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 138
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 141
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$SessionStub;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 142
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v0, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 143
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 144
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-virtual {p8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 145
    invoke-virtual {p7}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 146
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 147
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 134
    return-void
.end method

.method private getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .registers 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    .line 764
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 765
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_24

    .line 766
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/ISessionControllerCallback;

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 767
    return v1

    .line 765
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 770
    :cond_24
    const/4 v2, -0x1

    return v2
.end method

.method private getShortMetadataString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 487
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_2a

    const/4 v1, 0x0

    .line 488
    .local v1, "fields":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_31

    const/4 v0, 0x0

    .line 490
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 487
    .end local v1    # "fields":I
    :cond_2a
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->size()I

    move-result v1

    .restart local v1    # "fields":I
    goto :goto_5

    .line 488
    :cond_31
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    .local v0, "description":Landroid/media/MediaDescription;
    goto :goto_a
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .registers 21

    .prologue
    .line 731
    const-wide/16 v10, -0x1

    .line 732
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 733
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 734
    .local v12, "state":Landroid/media/session/PlaybackState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_7e

    move-result-wide v10

    :cond_29
    monitor-exit v6

    .line 738
    const/4 v9, 0x0

    .line 739
    .local v9, "result":Landroid/media/session/PlaybackState;
    if-eqz v12, :cond_7b

    .line 740
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3b

    .line 741
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_81

    .line 743
    :cond_3b
    :goto_3b
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v14

    .line 744
    .local v14, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 745
    .local v7, "currentTime":J
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_7b

    .line 746
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v3

    .line 747
    sub-long v16, v7, v14

    move-wide/from16 v0, v16

    long-to-float v6, v0

    .line 746
    mul-float/2addr v3, v6

    float-to-long v0, v3

    move-wide/from16 v16, v0

    .line 747
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v18

    .line 746
    add-long v4, v16, v18

    .line 748
    .local v4, "position":J
    const-wide/16 v16, 0x0

    cmp-long v3, v10, v16

    if-ltz v3, :cond_89

    cmp-long v3, v4, v10

    if-lez v3, :cond_89

    .line 749
    move-wide v4, v10

    .line 753
    :cond_67
    :goto_67
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2, v12}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 754
    .local v2, "builder":Landroid/media/session/PlaybackState$Builder;
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 756
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v9

    .line 760
    .end local v2    # "builder":Landroid/media/session/PlaybackState$Builder;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/media/session/PlaybackState;
    .end local v14    # "updateTime":J
    :cond_7b
    if-nez v9, :cond_92

    .end local v12    # "state":Landroid/media/session/PlaybackState;
    :goto_7d
    return-object v12

    .line 732
    :catchall_7e
    move-exception v3

    monitor-exit v6

    throw v3

    .line 742
    .restart local v9    # "result":Landroid/media/session/PlaybackState;
    .restart local v12    # "state":Landroid/media/session/PlaybackState;
    :cond_81
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_7b

    goto :goto_3b

    .line 750
    .restart local v4    # "position":J
    .restart local v7    # "currentTime":J
    .restart local v14    # "updateTime":J
    :cond_89
    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-gez v3, :cond_67

    .line 751
    const-wide/16 v4, 0x0

    goto :goto_67

    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/media/session/PlaybackState;
    .end local v14    # "updateTime":J
    :cond_92
    move-object v12, v9

    .line 760
    goto :goto_7d
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IZI)V
    .registers 18
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "useSuggested"    # Z
    .param p7, "previousFlagPlaySound"    # I

    .prologue
    .line 466
    iget-object v9, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v0, Lcom/android/server/media/MediaSessionRecord$2;

    move-object v1, p0

    move/from16 v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V

    invoke-virtual {v9, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method

.method private pushBrowsePlayerInfo()V
    .registers 8

    .prologue
    .line 532
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 533
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_37

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 534
    return-void

    .line 536
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_4a

    .line 537
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_37

    .line 539
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "pushBrowsePlayerInfo"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mBrowsedPlayerURI:Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onUpdateFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_29} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2c
    .catchall {:try_start_1b .. :try_end_29} :catchall_37

    .line 536
    :goto_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 544
    :catch_2c
    move-exception v2

    .line 545
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushBrowsePlayerInfo. "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_29

    .line 532
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_37
    move-exception v4

    monitor-exit v5

    throw v4

    .line 541
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_3a
    move-exception v1

    .line 542
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_3b
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushBrowsePlayerInfo. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_37

    goto :goto_29

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_4a
    monitor-exit v5

    .line 531
    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 688
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 689
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 690
    return-void

    .line 692
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_3f

    .line 693
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2c

    .line 695
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    invoke-interface {v0, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_1e} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2c

    .line 692
    :goto_1e
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 699
    :catch_21
    move-exception v2

    .line 700
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushEvent."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    goto :goto_1e

    .line 688
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_2c
    move-exception v4

    monitor-exit v5

    throw v4

    .line 696
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_2f
    move-exception v1

    .line 697
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_30
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushEvent."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_2c

    goto :goto_1e

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_3f
    monitor-exit v5

    .line 687
    return-void
.end method

.method private pushExtrasUpdate()V
    .registers 8

    .prologue
    .line 650
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 651
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 652
    return-void

    .line 654
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_41

    .line 655
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2e

    .line 657
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catchall {:try_start_1b .. :try_end_20} :catchall_2e

    .line 654
    :goto_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 661
    :catch_23
    move-exception v2

    .line 662
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushExtrasUpdate."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_20

    .line 650
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_2e
    move-exception v4

    monitor-exit v5

    throw v4

    .line 658
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_31
    move-exception v1

    .line 659
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_32
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 660
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removed dead callback in pushExtrasUpdate."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2e

    goto :goto_20

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_41
    monitor-exit v5

    .line 649
    return-void
.end method

.method private pushMetadataUpdate()V
    .registers 8

    .prologue
    .line 513
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 514
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 515
    return-void

    .line 517
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_41

    .line 518
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2e

    .line 520
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catchall {:try_start_1b .. :try_end_20} :catchall_2e

    .line 517
    :goto_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 524
    :catch_23
    move-exception v2

    .line 525
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushMetadataUpdate. "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_20

    .line 513
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_2e
    move-exception v4

    monitor-exit v5

    throw v4

    .line 521
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_31
    move-exception v1

    .line 522
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_32
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushMetadataUpdate. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2e

    goto :goto_20

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_41
    monitor-exit v5

    .line 512
    return-void
.end method

.method private pushNowPlayingContentChange()V
    .registers 8

    .prologue
    .line 572
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 573
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_35

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 574
    return-void

    .line 576
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_48

    .line 577
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_35

    .line 579
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "pushNowPlayingContentChange"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-interface {v0}, Landroid/media/session/ISessionControllerCallback;->onUpdateNowPlayingContentChange()V
    :try_end_27
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_27} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_27} :catch_2a
    .catchall {:try_start_1b .. :try_end_27} :catchall_35

    .line 576
    :goto_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 584
    :catch_2a
    move-exception v2

    .line 585
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2b
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushNowPlayingContentChange. "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_27

    .line 572
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_35
    move-exception v4

    monitor-exit v5

    throw v4

    .line 581
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_38
    move-exception v1

    .line 582
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_39
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushNowPlayingContentChange. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_35

    goto :goto_27

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_48
    monitor-exit v5

    .line 571
    return-void
.end method

.method private pushNowPlayingEntries()V
    .registers 8

    .prologue
    .line 552
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 553
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_37

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 554
    return-void

    .line 556
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_4a

    .line 557
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_37

    .line 559
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "pushNowPlayingEntries"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mNowPlayingList:[J

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onUpdateNowPlayingEntries([J)V
    :try_end_29
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_29} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2c
    .catchall {:try_start_1b .. :try_end_29} :catchall_37

    .line 556
    :goto_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 564
    :catch_2c
    move-exception v2

    .line 565
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushNowPlayingEntries. "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_29

    .line 552
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_37
    move-exception v4

    monitor-exit v5

    throw v4

    .line 561
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_3a
    move-exception v1

    .line 562
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_3b
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushNowPlayingEntries. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_37

    goto :goto_29

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_4a
    monitor-exit v5

    .line 551
    return-void
.end method

.method private pushPlayItemResponse()V
    .registers 8

    .prologue
    .line 592
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 593
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_37

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 594
    return-void

    .line 596
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_4a

    .line 597
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_37

    .line 599
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "pushPlayItemResponse"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlayItemStatus:Z

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onPlayItemResponse(Z)V
    :try_end_29
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_29} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2c
    .catchall {:try_start_1b .. :try_end_29} :catchall_37

    .line 596
    :goto_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 604
    :catch_2c
    move-exception v2

    .line 605
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushPlayItemResponse. "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_29

    .line 592
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_37
    move-exception v4

    monitor-exit v5

    throw v4

    .line 601
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_3a
    move-exception v1

    .line 602
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_3b
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushPlayItemResponse. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_37

    goto :goto_29

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_4a
    monitor-exit v5

    .line 591
    return-void
.end method

.method private pushPlaybackStateUpdate()V
    .registers 8

    .prologue
    .line 494
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 495
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 496
    return-void

    .line 498
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_41

    .line 499
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2e

    .line 501
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catchall {:try_start_1b .. :try_end_20} :catchall_2e

    .line 498
    :goto_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 505
    :catch_23
    move-exception v2

    .line 506
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushPlaybackStateUpdate."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_20

    .line 494
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_2e
    move-exception v4

    monitor-exit v5

    throw v4

    .line 502
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_31
    move-exception v1

    .line 503
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_32
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 504
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removed dead callback in pushPlaybackStateUpdate."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2e

    goto :goto_20

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_41
    monitor-exit v5

    .line 493
    return-void
.end method

.method private pushQueueTitleUpdate()V
    .registers 8

    .prologue
    .line 631
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 632
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 633
    return-void

    .line 635
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_41

    .line 636
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2e

    .line 638
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catchall {:try_start_1b .. :try_end_20} :catchall_2e

    .line 635
    :goto_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 642
    :catch_23
    move-exception v2

    .line 643
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushQueueTitleUpdate."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_20

    .line 631
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_2e
    move-exception v4

    monitor-exit v5

    throw v4

    .line 639
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_31
    move-exception v1

    .line 640
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_32
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 641
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removed dead callback in pushQueueTitleUpdate."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2e

    goto :goto_20

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_41
    monitor-exit v5

    .line 630
    return-void
.end method

.method private pushQueueUpdate()V
    .registers 8

    .prologue
    .line 612
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 613
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v4, :cond_9

    monitor-exit v5

    .line 614
    return-void

    .line 616
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_41

    .line 617
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2e

    .line 619
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catchall {:try_start_1b .. :try_end_20} :catchall_2e

    .line 616
    :goto_20
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 623
    :catch_23
    move-exception v2

    .line 624
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushQueueUpdate."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_20

    .line 612
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_2e
    move-exception v4

    monitor-exit v5

    throw v4

    .line 620
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_31
    move-exception v1

    .line 621
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_32
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 622
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removed dead callback in pushQueueUpdate."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2e

    goto :goto_20

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_41
    monitor-exit v5

    .line 611
    return-void
.end method

.method private pushSessionDestroyed()V
    .registers 8

    .prologue
    .line 707
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 710
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    if-nez v4, :cond_9

    monitor-exit v5

    .line 711
    return-void

    .line 713
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_3f

    .line 714
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2c

    .line 716
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    invoke-interface {v0}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_1e} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2c

    .line 713
    :goto_1e
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 720
    :catch_21
    move-exception v2

    .line 721
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushEvent."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    goto :goto_1e

    .line 707
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_2c
    move-exception v4

    monitor-exit v5

    throw v4

    .line 717
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_2f
    move-exception v1

    .line 718
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_30
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushEvent."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    .line 725
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_3f
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_2c

    monitor-exit v5

    .line 706
    return-void
.end method

.method private pushVolumeUpdate()V
    .registers 9

    .prologue
    .line 669
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 670
    :try_start_3
    iget-boolean v5, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_32

    if-eqz v5, :cond_9

    monitor-exit v6

    .line 671
    return-void

    .line 673
    :cond_9
    :try_start_9
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v4

    .line 674
    .local v4, "info":Landroid/media/session/ParcelableVolumeInfo;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_40

    .line 675
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_32

    .line 677
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_21
    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_24} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_27
    .catchall {:try_start_21 .. :try_end_24} :catchall_32

    .line 674
    :goto_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 680
    :catch_27
    move-exception v2

    .line 681
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_28
    const-string/jumbo v5, "MediaSessionRecord"

    const-string/jumbo v7, "Unexpected exception in pushVolumeUpdate. "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    goto :goto_24

    .line 669
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catchall_32
    move-exception v5

    monitor-exit v6

    throw v5

    .line 678
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    .restart local v4    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catch_35
    move-exception v1

    .line 679
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_36
    const-string/jumbo v5, "MediaSessionRecord"

    const-string/jumbo v7, "Removing dead callback in pushVolumeUpdate. "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_32

    goto :goto_24

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_40
    monitor-exit v6

    .line 668
    return-void
.end method

.method private updateCallingPackage()V
    .registers 3

    .prologue
    .line 774
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage(ILjava/lang/String;)V

    .line 773
    return-void
.end method

.method private updateCallingPackage(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 778
    if-ne p1, v4, :cond_7

    .line 779
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 781
    :cond_7
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 782
    :try_start_a
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    if-eq v2, v4, :cond_12

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    if-eq v2, p1, :cond_38

    .line 783
    :cond_12
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    .line 784
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;

    .line 785
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_3a

    if-eqz v2, :cond_1c

    monitor-exit v3

    .line 786
    return-void

    .line 788
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_3a

    move-result-object v0

    .line 789
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_26

    monitor-exit v3

    .line 790
    return-void

    .line 792
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_38

    array-length v2, v1

    if-lez v2, :cond_38

    .line 794
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3a

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_38
    monitor-exit v3

    .line 777
    return-void

    .line 781
    :catchall_3a
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;IZ)V
    .registers 15
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "useSuggested"    # Z

    .prologue
    const/4 v3, 0x0

    .line 247
    and-int/lit8 v7, p2, 0x4

    .line 248
    .local v7, "previousFlagPlaySound":I
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v0

    if-nez v0, :cond_11

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 249
    :cond_11
    and-int/lit8 p2, p2, -0x5

    .line 251
    :cond_13
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    .line 253
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .local v1, "stream":I
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 254
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V

    .line 246
    .end local v1    # "stream":I
    :cond_27
    :goto_27
    return-void

    .line 257
    :cond_28
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-nez v0, :cond_2d

    .line 259
    return-void

    .line 261
    :cond_2d
    const/16 v0, 0x65

    if-eq p1, v0, :cond_35

    .line 262
    const/16 v0, -0x64

    if-ne p1, v0, :cond_3f

    .line 264
    :cond_35
    const-string/jumbo v0, "MediaSessionRecord"

    const-string/jumbo v2, "Muting remote playback is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 263
    :cond_3f
    const/16 v0, 0x64

    if-eq p1, v0, :cond_35

    .line 267
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(I)V

    .line 269
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_ab

    iget v8, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 270
    .local v8, "volumeBefore":I
    :goto_4e
    add-int v0, v8, p1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 271
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 272
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v8, v0, :cond_77

    .line 275
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 277
    :cond_77
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 279
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 280
    const-string/jumbo v0, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adjusted optimistic volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 269
    .end local v8    # "volumeBefore":I
    :cond_ab
    iget v8, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    goto :goto_4e
.end method

.method public binderDied()V
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    .line 408
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "indent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ownerPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ownerUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    const-string/jumbo v3, ", userId="

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "launchIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mediaButtonReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "rating type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "controllers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v3, :cond_209

    :goto_150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    const-string/jumbo v2, ", max="

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    const-string/jumbo v2, ", current="

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getShortMetadataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 455
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    if-nez v1, :cond_211

    const/4 v1, 0x0

    .line 454
    :goto_1fd
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    return-void

    .line 449
    :cond_209
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_150

    .line 455
    :cond_211
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1fd
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-get0(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method public getCurrentVolume()I
    .registers 2

    .prologue
    .line 390
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method public getFlags()J
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public getMaxVolume()I
    .registers 2

    .prologue
    .line 380
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOptimisticVolume()I
    .registers 2

    .prologue
    .line 400
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackType()I
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public getVolumeControl()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method public hasFlag(I)Z
    .registers 6
    .param p1, "flag"    # I

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 320
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isPlaybackActive(Z)Z
    .registers 11
    .param p1, "includeRecentlyActive"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 332
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v4, :cond_e

    move v2, v3

    .line 333
    .local v2, "state":I
    :goto_7
    invoke-static {v2}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 334
    return v8

    .line 332
    .end local v2    # "state":I
    :cond_e
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    goto :goto_7

    .line 336
    .restart local v2    # "state":I
    :cond_15
    if-eqz p1, :cond_29

    const/4 v4, 0x2

    if-ne v2, v4, :cond_29

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J

    sub-long v0, v4, v6

    .line 338
    .local v0, "inactiveTime":J
    const-wide/16 v4, 0x7530

    cmp-long v4, v0, v4

    if-gez v4, :cond_29

    .line 339
    return v8

    .line 342
    .end local v0    # "inactiveTime":J
    :cond_29
    return v3
.end method

.method public isSystemPriority()Z
    .registers 5

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTransportControlEnabled()Z
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v0, :cond_9

    monitor-exit v1

    .line 419
    return-void

    .line 421
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 422
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 416
    return-void

    .line 417
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;ILjava/lang/String;)V
    .registers 7
    .param p1, "ke"    # Landroid/view/KeyEvent;
    .param p2, "sequenceId"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-direct {p0, p4, p5}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage(ILjava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 431
    return-void
.end method

.method public setVolumeTo(IILjava/lang/String;I)V
    .registers 12
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 287
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 288
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 289
    .local v1, "stream":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 286
    .end local v1    # "stream":I
    :cond_15
    :goto_15
    return-void

    .line 291
    :cond_16
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1c

    .line 293
    return-void

    .line 295
    :cond_1c
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(I)V

    .line 298
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_87

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 299
    .local v6, "volumeBefore":I
    :goto_31
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 300
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v6, v0, :cond_54

    .line 303
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 305
    :cond_54
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 307
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 308
    const-string/jumbo v0, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set optimistic volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 298
    .end local v6    # "volumeBefore":I
    :cond_87
    iget v6, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .restart local v6    # "volumeBefore":I
    goto :goto_31
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
