.class final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"


# static fields
.field static final MAX_RUNNING_USERS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field static final USER_SWITCH_TIMEOUT:I = 0xbb8


# instance fields
.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUserArray:[I

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetUserId:I

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/UserController;)Lcom/android/server/pm/UserManagerService;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .registers 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 109
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 125
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 141
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 145
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 150
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 156
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 155
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 170
    iput-object p1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 171
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 173
    new-instance v0, Lcom/android/server/am/UserState;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 174
    .local v0, "uss":Lcom/android/server/am/UserState;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 177
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 169
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 226
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 26
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 231
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 233
    .local v18, "userId":I
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finishing user boot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_11e

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_40

    monitor-exit v22

    .line 234
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 236
    return-void

    .line 242
    :cond_40
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_42
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 245
    if-nez v18, :cond_65

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 252
    :cond_65
    :goto_65
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const/high16 v2, 0x9000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 257
    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v4, 0x0

    aput-object v3, v11, v4

    .line 258
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 256
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 258
    const/16 v12, 0x42

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move-object/from16 v7, p2

    .line 256
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 263
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_9c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    .line 265
    .local v19, "parent":Landroid/content/pm/UserInfo;
    if-eqz v19, :cond_124

    .line 266
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    move-result v2

    .line 265
    if-eqz v2, :cond_124

    .line 267
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 268
    const-string/jumbo v4, "): attempting unlock because parent is unlocked"

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_f9
    .catchall {:try_start_42 .. :try_end_f9} :catchall_11e

    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    :goto_f9
    monitor-exit v22

    .line 234
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 230
    return-void

    .line 247
    :cond_fe
    :try_start_fe
    invoke-static {}, Lcom/android/server/am/UserController;->isFirstBootOrUpgrade()Z

    move-result v2

    if-nez v2, :cond_65

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v21, v0

    .line 249
    .local v21, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "framework_locked_boot_completed"

    move/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_11c
    .catchall {:try_start_fe .. :try_end_11c} :catchall_11e

    goto/16 :goto_65

    .line 234
    .end local v21    # "uptimeSeconds":I
    :catchall_11e
    move-exception v2

    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 271
    .restart local v19    # "parent":Landroid/content/pm/UserInfo;
    :cond_124
    if-nez v19, :cond_159

    :try_start_126
    const-string/jumbo v20, "<null>"

    .line 272
    .local v20, "parentId":Ljava/lang/String;
    :goto_129
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 273
    const-string/jumbo v4, "): delaying unlock because parent is locked"

    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    .line 271
    .end local v20    # "parentId":Ljava/lang/String;
    :cond_159
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "parentId":Ljava/lang/String;
    goto :goto_129

    .line 276
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    .end local v20    # "parentId":Ljava/lang/String;
    :cond_162
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_169
    .catchall {:try_start_126 .. :try_end_169} :catchall_11e

    goto :goto_f9
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 41
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 388
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 389
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_136

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_2b

    monitor-exit v38

    .line 389
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 391
    return-void

    .line 392
    :cond_2b
    :try_start_2b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_136

    move-result-object v37

    .line 393
    .local v37, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v37, :cond_3a

    monitor-exit v38

    .line 389
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 394
    return-void

    .line 398
    :cond_3a
    :try_start_3a
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_136

    move-result v2

    if-nez v2, :cond_45

    monitor-exit v38

    .line 389
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 398
    return-void

    .line 401
    :cond_45
    :try_start_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 403
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 404
    if-eqz v18, :cond_9d

    .line 405
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initializing user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 409
    new-instance v7, Lcom/android/server/am/UserController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    .line 418
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 408
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 417
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 418
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 408
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 422
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_9d
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending BOOT_COMPLETE user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez v18, :cond_c6

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_117

    .line 431
    :cond_c6
    :goto_c6
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 432
    .local v22, "bootIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const/high16 v2, 0x9000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 436
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v3, 0x0

    aput-object v2, v28, v3

    .line 437
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 435
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 437
    const/16 v29, 0x42

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    move/from16 v35, v18

    .line 435
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_112
    .catchall {:try_start_45 .. :try_end_112} :catchall_136

    monitor-exit v38

    .line 389
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 387
    return-void

    .line 426
    .end local v22    # "bootIntent":Landroid/content/Intent;
    :cond_117
    :try_start_117
    invoke-static {}, Lcom/android/server/am/UserController;->isFirstBootOrUpgrade()Z

    move-result v2

    if-nez v2, :cond_c6

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v36, v0

    .line 429
    .local v36, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "framework_boot_completed"

    .line 428
    move/from16 v0, v36

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_135
    .catchall {:try_start_117 .. :try_end_135} :catchall_136

    goto :goto_c6

    .line 389
    .end local v36    # "uptimeSeconds":I
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_136
    move-exception v2

    monitor-exit v38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 286
    iget-object v2, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 287
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 288
    .local v0, "proceedWithUnlock":Z
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 290
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_72

    move-result-object v2

    if-eq v2, p1, :cond_20

    monitor-exit v3

    .line 288
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 290
    return-void

    .line 293
    :cond_20
    :try_start_20
    invoke-static {v1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_72

    move-result v2

    if-nez v2, :cond_2b

    monitor-exit v3

    .line 288
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 293
    return-void

    .line 295
    :cond_2b
    const/4 v2, 0x1

    const/4 v4, 0x2

    :try_start_2d
    invoke-virtual {p1, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 296
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v4, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v1, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_72

    .line 297
    const/4 v0, 0x1

    :cond_3d
    monitor-exit v3

    .line 288
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 301
    if-eqz v0, :cond_71

    .line 302
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 305
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 306
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104044b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 307
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 308
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 312
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 285
    :cond_71
    return-void

    .line 288
    :catchall_72
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private forceStopUserLocked(ILjava/lang/String;)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 687
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 690
    const-string/jumbo v1, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 693
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 691
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 692
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 693
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v17, -0x1

    .line 691
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 684
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .registers 2

    .prologue
    .line 755
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 4

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 747
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    if-nez v1, :cond_13

    .line 748
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 749
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 751
    .end local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_13
    return-object v1
.end method

.method private getUserManagerInternal()Landroid/os/UserManagerInternal;
    .registers 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_e

    .line 1567
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1569
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method private getUsersToStopLocked(I)[I
    .registers 15
    .param p1, "userId"    # I

    .prologue
    const/16 v12, -0x2710

    .line 659
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 660
    .local v5, "startedUsersSize":I
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 661
    .local v7, "userIds":Landroid/util/IntArray;
    invoke-virtual {v7, p1}, Landroid/util/IntArray;->add(I)V

    .line 662
    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v10

    .line 663
    :try_start_13
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 664
    const/16 v11, -0x2710

    .line 663
    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 665
    .local v6, "userGroupId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    if-ge v0, v5, :cond_50

    .line 666
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/UserState;

    .line 667
    .local v8, "uss":Lcom/android/server/am/UserState;
    iget-object v9, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 669
    .local v4, "startedUserId":I
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 670
    const/16 v11, -0x2710

    .line 669
    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 671
    .local v3, "startedUserGroupId":I
    if-eq v6, v12, :cond_45

    .line 672
    if-ne v6, v3, :cond_43

    const/4 v1, 0x1

    .line 674
    .local v1, "sameGroup":Z
    :goto_39
    if-ne v4, p1, :cond_47

    const/4 v2, 0x1

    .line 675
    .local v2, "sameUserId":Z
    :goto_3c
    if-eqz v1, :cond_40

    if-eqz v2, :cond_49

    .line 665
    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 672
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    :cond_43
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_39

    .line 671
    .end local v1    # "sameGroup":Z
    :cond_45
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_39

    .line 674
    :cond_47
    const/4 v2, 0x0

    .restart local v2    # "sameUserId":Z
    goto :goto_3c

    .line 678
    :cond_49
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_4d

    goto :goto_40

    .line 662
    .end local v0    # "i":I
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    .end local v3    # "startedUserGroupId":I
    .end local v4    # "startedUserId":I
    .end local v6    # "userGroupId":I
    .end local v8    # "uss":Lcom/android/server/am/UserState;
    :catchall_4d
    move-exception v9

    monitor-exit v10

    throw v9

    .restart local v0    # "i":I
    .restart local v6    # "userGroupId":I
    :cond_50
    monitor-exit v10

    .line 681
    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v9

    return-object v9
.end method

.method private isCurrentUserLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isFirstBootOrUpgrade()Z
    .registers 3

    .prologue
    .line 442
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 444
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_4
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isUpgrade()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_11

    move-result v2

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x1

    goto :goto_e

    .line 445
    :catch_11
    move-exception v0

    .line 446
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 981
    if-nez p1, :cond_3

    return-void

    .line 983
    :cond_3
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, p0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 980
    :goto_7
    return-void

    .line 984
    :catch_8
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .registers 6
    .param p1, "oldUserId"    # I

    .prologue
    .line 1074
    if-nez p1, :cond_3

    .line 1075
    return-void

    .line 1078
    :cond_3
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 1080
    .local v0, "disallowRunInBg":Z
    if-nez v0, :cond_d

    .line 1081
    return-void

    .line 1083
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1086
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1d

    monitor-exit v2

    .line 1083
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1072
    return-void

    .line 1083
    :catchall_1d
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground()V
    .registers 10

    .prologue
    .line 700
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 701
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 702
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_70

    .line 703
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 704
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 705
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v5, v7, :cond_34

    .line 702
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 706
    :cond_34
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_31

    .line 707
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_31

    .line 710
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 711
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 712
    const-class v5, Landroid/os/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    .line 713
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 712
    invoke-virtual {v5, v7}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 715
    :cond_5b
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_67

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 717
    :cond_67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_75

    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_70
    monitor-exit v6

    .line 700
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 699
    return-void

    .line 700
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_75
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method private stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
    .registers 27
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/UserState;

    .line 508
    .local v21, "uss":Lcom/android/server/am/UserState;
    if-nez v21, :cond_23

    .line 511
    if-eqz p2, :cond_22

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/UserController$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    :cond_22
    return-void

    .line 525
    :cond_23
    if-eqz p2, :cond_2e

    .line 526
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_2e
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_ab

    .line 530
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_ab

    .line 531
    const/4 v4, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 540
    .local v22, "ident":J
    :try_start_56
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STOPPING"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v7, "stoppingIntent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 542
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    const-string/jumbo v4, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    new-instance v9, Lcom/android/server/am/UserController$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v9, v0, v1, v2}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 558
    .local v9, "stoppingReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 562
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v6, 0x0

    aput-object v5, v13, v6

    .line 563
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 560
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 561
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 562
    const/4 v14, -0x1

    .line 563
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    const/16 v20, -0x1

    .line 560
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_a8
    .catchall {:try_start_56 .. :try_end_a8} :catchall_ac

    .line 565
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    .end local v7    # "stoppingIntent":Landroid/content/Intent;
    .end local v9    # "stoppingReceiver":Landroid/content/IIntentReceiver;
    .end local v22    # "ident":J
    :cond_ab
    return-void

    .line 564
    .restart local v22    # "ident":J
    :catchall_ac
    move-exception v4

    .line 565
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    throw v4
.end method

.method private stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    .registers 12
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    const/4 v6, 0x0

    .line 475
    if-nez p1, :cond_5

    .line 476
    const/4 v4, -0x3

    return v4

    .line 478
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 479
    const/4 v4, -0x2

    return v4

    .line 481
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLocked(I)[I

    move-result-object v3

    .line 483
    .local v3, "usersToStop":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v4, v3

    if-ge v0, v4, :cond_4a

    .line 484
    aget v1, v3, v0

    .line 485
    .local v1, "relatedUserId":I
    if-eqz v1, :cond_1f

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 489
    :cond_1f
    if-eqz p2, :cond_45

    .line 490
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force stop user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Related users will not be stopped"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 493
    return v6

    .line 495
    :cond_45
    const/4 v4, -0x4

    return v4

    .line 483
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 499
    .end local v1    # "relatedUserId":I
    :cond_4a
    array-length v7, v3

    move v5, v6

    :goto_4c
    if-ge v5, v7, :cond_5c

    aget v2, v3, v5

    .line 500
    .local v2, "userIdToStop":I
    if-ne v2, p1, :cond_5a

    move-object v4, p3

    :goto_53
    invoke-direct {p0, v2, v4}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 499
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4c

    .line 500
    :cond_5a
    const/4 v4, 0x0

    goto :goto_53

    .line 502
    .end local v2    # "userIdToStop":I
    :cond_5c
    return v6
.end method

.method private updateCurrentProfileIdsLocked()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 1380
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 1382
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 1383
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v5, v0

    if-ge v1, v5, :cond_22

    .line 1384
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v0, v1

    .line 1383
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1386
    :cond_22
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1388
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 1389
    :try_start_27
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1390
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1391
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    :goto_36
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_54

    .line 1392
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1393
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v5, v7, :cond_51

    .line 1394
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    iget v8, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_51
    .catchall {:try_start_27 .. :try_end_51} :catchall_56

    .line 1391
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit v6

    .line 1379
    return-void

    .line 1388
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private updateStartedUserArrayLocked()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 1343
    const/4 v1, 0x0

    .line 1344
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_21

    .line 1345
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1347
    .local v3, "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_1e

    .line 1348
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_1e

    .line 1349
    add-int/lit8 v1, v1, 0x1

    .line 1344
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1352
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_21
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1353
    const/4 v1, 0x0

    .line 1354
    const/4 v0, 0x0

    :goto_27
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4f

    .line 1355
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1356
    .restart local v3    # "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_4c

    .line 1357
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_4c

    .line 1358
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "num":I
    .local v2, "num":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    move v1, v2

    .line 1354
    .end local v2    # "num":I
    .restart local v1    # "num":I
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1342
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_4f
    return-void
.end method


# virtual methods
.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    const/16 v4, 0x38

    const/4 v3, 0x0

    .line 1158
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continue user switch oldUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1160
    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_51

    monitor-exit v1

    .line 1159
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1162
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1163
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1166
    invoke-direct {p0}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground()V

    .line 1167
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1157
    return-void

    .line 1159
    :catchall_51
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dispatchForegroundProfileChanged(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1049
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1050
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 1052
    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 1050
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1057
    :cond_17
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1048
    return-void

    .line 1053
    :catch_1d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 19
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1099
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " newUser #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 1101
    .local v14, "observerCount":I
    if-lez v14, :cond_ae

    .line 1102
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1103
    .local v7, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1104
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/UserState;->switching:Z

    .line 1105
    iput-object v7, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_a0

    monitor-exit v9

    .line 1103
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1107
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1108
    .local v8, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1109
    .local v4, "dispatchStartedTime":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_50
    if-ge v13, v14, :cond_bb

    .line 1112
    :try_start_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "#"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v13}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1113
    .local v6, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_7a} :catch_ac

    :try_start_7a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1114
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_a6

    :try_start_80
    monitor-exit v9

    .line 1113
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1116
    new-instance v2, Lcom/android/server/am/UserController$7;

    move-object v3, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1138
    .local v2, "callback":Landroid/os/IRemoteCallback;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    move/from16 v0, p3

    invoke-interface {v3, v0, v2}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_9d} :catch_ac

    .line 1109
    .end local v2    # "callback":Landroid/os/IRemoteCallback;
    .end local v6    # "name":Ljava/lang/String;
    :goto_9d
    add-int/lit8 v13, v13, 0x1

    goto :goto_50

    .line 1103
    .end local v4    # "dispatchStartedTime":J
    .end local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v13    # "i":I
    :catchall_a0
    move-exception v3

    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 1113
    .restart local v4    # "dispatchStartedTime":J
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v13    # "i":I
    :catchall_a6
    move-exception v3

    :try_start_a7
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ac} :catch_ac

    .line 1139
    .end local v6    # "name":Ljava/lang/String;
    :catch_ac
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto :goto_9d

    .line 1143
    .end local v4    # "dispatchStartedTime":J
    .end local v7    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "i":I
    :cond_ae
    iget-object v9, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_b1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1144
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_c1

    monitor-exit v9

    .line 1143
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1147
    :cond_bb
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1098
    return-void

    .line 1143
    :catchall_c1
    move-exception v3

    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method dispatchUserSwitchComplete(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1062
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1063
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 1065
    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    .line 1063
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1069
    :cond_17
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1061
    return-void

    .line 1066
    :catch_1d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    .line 1573
    const-string/jumbo v2, "  mStartedUsers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 1575
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1576
    .local v1, "uss":Lcom/android/server/am/UserState;
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1577
    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1574
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1579
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_35
    const-string/jumbo v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    const/4 v0, 0x0

    :goto_3c
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_53

    .line 1581
    if-lez v0, :cond_49

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1582
    :cond_49
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1580
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1584
    :cond_53
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    const-string/jumbo v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    const/4 v0, 0x0

    :goto_60
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7c

    .line 1587
    if-lez v0, :cond_70

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1588
    :cond_70
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1586
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 1590
    :cond_7c
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    if-eqz p2, :cond_93

    .line 1592
    const-string/jumbo v2, "  mStartedUserArray: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    :cond_93
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 1595
    :try_start_96
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_ce

    .line 1596
    const-string/jumbo v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    const/4 v0, 0x0

    :goto_a5
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_ce

    .line 1598
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1599
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1600
    const-string/jumbo v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1601
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_cb
    .catchall {:try_start_96 .. :try_end_cb} :catchall_d0

    .line 1597
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_ce
    monitor-exit v3

    .line 1572
    return-void

    .line 1594
    :catchall_d0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1504
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .registers 10
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 610
    iget-object v5, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 613
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 615
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_61

    move-result-object v5

    if-eq v5, p1, :cond_35

    .line 616
    const/4 v3, 0x0

    .local v3, "stopped":Z
    :goto_1c
    monitor-exit v6

    .line 613
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 634
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_73

    .line 636
    if-eqz v3, :cond_67

    :try_start_29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IStopUserCallback;

    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_71

    .line 634
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 617
    .end local v2    # "i":I
    .end local v3    # "stopped":Z
    :cond_35
    :try_start_35
    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_3c

    .line 618
    const/4 v3, 0x0

    .restart local v3    # "stopped":Z
    goto :goto_1c

    .line 620
    .end local v3    # "stopped":Z
    :cond_3c
    const/4 v3, 0x1

    .line 622
    .restart local v3    # "stopped":Z
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 623
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 624
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 627
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->onUserStoppedLocked(I)V

    .line 630
    const-string/jumbo v5, "finish user"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/UserController;->forceStopUserLocked(ILjava/lang/String;)V
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_61

    goto :goto_1c

    .line 613
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v3    # "stopped":Z
    :catchall_61
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 637
    .restart local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .restart local v2    # "i":I
    .restart local v3    # "stopped":Z
    :cond_67
    :try_start_67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IStopUserCallback;

    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_70} :catch_71

    goto :goto_32

    .line 638
    :catch_71
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_32

    .line 642
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    if-eqz v3, :cond_9c

    .line 643
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v4}, Lcom/android/server/SystemServiceManager;->cleanupUser(I)V

    .line 644
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_7f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 645
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeUserLocked(I)V
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_9d

    monitor-exit v6

    .line 644
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 648
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 649
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 609
    :cond_9c
    return-void

    .line 644
    :catchall_9d
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .registers 23
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 572
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v5, "shutdownIntent":Landroid/content/Intent;
    new-instance v7, Lcom/android/server/am/UserController$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 587
    .local v7, "shutdownReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 588
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/server/am/UserState;->state:I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_7f

    const/4 v4, 0x4

    if-eq v2, v4, :cond_25

    monitor-exit v3

    .line 587
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 590
    return-void

    .line 592
    :cond_25
    const/4 v2, 0x5

    :try_start_26
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_7f

    monitor-exit v3

    .line 587
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 598
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 597
    const/16 v4, 0x4007

    .line 596
    move/from16 v0, p1

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_5f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 605
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 602
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 603
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 604
    const/4 v12, -0x1

    .line 605
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move/from16 v18, p1

    .line 602
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_85

    monitor-exit v19

    .line 601
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 570
    return-void

    .line 587
    :catchall_7f
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 601
    :catchall_85
    move-exception v2

    monitor-exit v19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfilesLocked()V

    .line 185
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLocked(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_15

    monitor-exit v1

    .line 181
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 180
    return-void

    .line 181
    :catchall_15
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 41
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 322
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 323
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_136

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_2b

    monitor-exit v38

    .line 323
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 325
    return-void

    .line 328
    :cond_2b
    :try_start_2b
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_136

    move-result v2

    if-nez v2, :cond_36

    monitor-exit v38

    .line 323
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 328
    return-void

    .line 330
    :cond_36
    const/4 v2, 0x2

    const/4 v3, 0x3

    :try_start_38
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 332
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 335
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v5, "unlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const/high16 v2, 0x50000000

    .line 337
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 340
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 339
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 340
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 339
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v37

    .line 345
    .local v37, "parent":Landroid/content/pm/UserInfo;
    if-eqz v37, :cond_e2

    .line 346
    new-instance v22, Landroid/content/Intent;

    .line 347
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 346
    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v22, "profileUnlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    const/high16 v2, 0x50000000

    .line 349
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 354
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 355
    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    .line 352
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 353
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    .line 354
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    .line 352
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 362
    .end local v22    # "profileUnlockedIntent":Landroid/content/Intent;
    .end local v37    # "parent":Landroid/content/pm/UserInfo;
    :cond_e2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v36

    .line 363
    .local v36, "info":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_132

    .line 368
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 369
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v2, :cond_129

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_12c

    const/16 v20, 0x0

    .line 374
    .local v20, "quiet":Z
    :goto_110
    new-instance v15, Lcom/android/server/am/UserController$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v16, p0

    move-object/from16 v21, p1

    invoke-direct/range {v15 .. v21}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLcom/android/server/am/UserState;)V

    invoke-virtual {v15}, Lcom/android/server/am/UserController$1;->sendNext()V
    :try_end_124
    .catchall {:try_start_38 .. :try_end_124} :catchall_136

    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v20    # "quiet":Z
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_124
    :goto_124
    monitor-exit v38

    .line 323
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 321
    return-void

    .line 369
    .restart local v5    # "unlockedIntent":Landroid/content/Intent;
    .restart local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_129
    const/16 v20, 0x1

    .restart local v20    # "quiet":Z
    goto :goto_110

    .line 370
    .end local v20    # "quiet":Z
    :cond_12c
    const/16 v20, 0x1

    .restart local v20    # "quiet":Z
    goto :goto_110

    .line 372
    .end local v20    # "quiet":Z
    :cond_12f
    const/16 v20, 0x0

    .restart local v20    # "quiet":Z
    goto :goto_110

    .line 381
    .end local v20    # "quiet":Z
    :cond_132
    :try_start_132
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_136

    goto :goto_124

    .line 323
    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :catchall_136
    move-exception v2

    monitor-exit v38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getCurrentOrTargetUserIdLocked()I
    .registers 3

    .prologue
    .line 1475
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_8
.end method

.method getCurrentProfileIdsLocked()[I
    .registers 2

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    return-object v0
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 4

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_56

    .line 1455
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    .line 1454
    if-eqz v1, :cond_56

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1458
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1459
    const-string/jumbo v2, ", uid="

    .line 1457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1460
    const-string/jumbo v2, " requires "

    .line 1457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1460
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1461
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1464
    .end local v0    # "msg":Ljava/lang/String;
    :cond_56
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_59
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLocked()Landroid/content/pm/UserInfo;
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_65

    move-result-object v1

    monitor-exit v2

    .line 1464
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1465
    return-object v1

    .line 1464
    :catchall_65
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getCurrentUserIdLocked()I
    .registers 2

    .prologue
    .line 1479
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLocked()Landroid/content/pm/UserInfo;
    .registers 4

    .prologue
    .line 1470
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_d

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1471
    .local v0, "userId":I
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 1470
    .end local v0    # "userId":I
    :cond_d
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_8
.end method

.method getProfileIds(I)Ljava/util/Set;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1512
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1513
    .local v3, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    .line 1514
    const/4 v5, 0x0

    .line 1513
    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1515
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1516
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1518
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_28
    return-object v3
.end method

.method getStartedUserArrayLocked()[I
    .registers 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    return-object v0
.end method

.method getStartedUserStateLocked(I)Lcom/android/server/am/UserState;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    return-object v0
.end method

.method getUserIds()[I
    .registers 2

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1491
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1492
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    goto :goto_b
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 20
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 1232
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1233
    .local v9, "callingUserId":I
    if-ne v9, p3, :cond_7

    .line 1234
    return p3

    .line 1243
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUserLocked(I)I

    move-result v11

    .line 1245
    .local v11, "targetUserId":I
    if-eqz p2, :cond_27

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_27

    .line 1247
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1248
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1247
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_45

    .line 1250
    const/4 v7, 0x1

    .line 1268
    :goto_21
    if-nez v7, :cond_27

    .line 1269
    const/4 v1, -0x3

    if-ne p3, v1, :cond_87

    .line 1272
    move v11, v9

    .line 1297
    :cond_27
    if-nez p4, :cond_e8

    if-gez v11, :cond_e8

    .line 1298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call does not support special user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1298
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1251
    :cond_45
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_4c

    .line 1253
    const/4 v7, 0x0

    .local v7, "allow":Z
    goto :goto_21

    .line 1254
    .end local v7    # "allow":Z
    :cond_4c
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1255
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1254
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_5d

    .line 1257
    const/4 v7, 0x0

    .restart local v7    # "allow":Z
    goto :goto_21

    .line 1258
    .end local v7    # "allow":Z
    :cond_5d
    if-nez p5, :cond_61

    .line 1260
    const/4 v7, 0x1

    .restart local v7    # "allow":Z
    goto :goto_21

    .line 1261
    .end local v7    # "allow":Z
    :cond_61
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_6b

    .line 1264
    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v7

    .local v7, "allow":Z
    goto :goto_21

    .line 1266
    .end local v7    # "allow":Z
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1274
    :cond_87
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1275
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Permission Denial: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    if-eqz p7, :cond_a6

    .line 1278
    const-string/jumbo v1, " from "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    :cond_a6
    const-string/jumbo v1, " asks to run as user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1283
    const-string/jumbo v1, " but is calling from user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1285
    const-string/jumbo v1, "; this requires "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const/4 v1, 0x2

    move/from16 v0, p5

    if-eq v0, v1, :cond_d9

    .line 1288
    const-string/jumbo v1, " or "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :cond_d9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1292
    .local v10, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1302
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_e8
    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_121

    if-ltz v11, :cond_121

    .line 1303
    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {p0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 1304
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shell does not have permission to access user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1305
    const-string/jumbo v3, "\n "

    .line 1304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1305
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1308
    :cond_121
    return v11
.end method

.method hasStartedUserState(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method isLockScreenDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .registers 11
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v7, -0x2710

    .line 1522
    if-ne p1, p2, :cond_7

    .line 1523
    return v2

    .line 1525
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 1526
    :try_start_a
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1527
    const/16 v6, -0x2710

    .line 1526
    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1528
    .local v0, "callingProfile":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1529
    const/16 v6, -0x2710

    .line 1528
    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_24

    move-result v1

    .line 1530
    .local v1, "targetProfile":I
    if-eq v0, v7, :cond_22

    .line 1531
    if-ne v0, v1, :cond_20

    :goto_1e
    monitor-exit v4

    .line 1530
    return v2

    :cond_20
    move v2, v3

    .line 1531
    goto :goto_1e

    :cond_22
    move v2, v3

    .line 1530
    goto :goto_1e

    .line 1525
    .end local v0    # "callingProfile":I
    .end local v1    # "targetProfile":I
    :catchall_24
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method isUserRunningLocked(II)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1414
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1415
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_9

    .line 1416
    return v2

    .line 1418
    :cond_9
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_e

    .line 1419
    return v3

    .line 1421
    :cond_e
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_19

    .line 1422
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_30

    .line 1427
    return v2

    .line 1425
    :pswitch_18
    return v3

    .line 1430
    :cond_19
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_24

    .line 1431
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_38

    .line 1436
    return v2

    .line 1434
    :pswitch_23
    return v3

    .line 1439
    :cond_24
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2f

    .line 1440
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_40

    .line 1444
    return v2

    .line 1442
    :pswitch_2e
    return v3

    .line 1449
    :cond_2f
    return v3

    .line 1422
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
    .end packed-switch

    .line 1431
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_23
        :pswitch_23
    .end packed-switch

    .line 1440
    :pswitch_data_40
    .packed-switch 0x3
        :pswitch_2e
    .end packed-switch
.end method

.method isUserStoppingOrShuttingDownLocked(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1405
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1406
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_9

    .line 1407
    return v2

    .line 1409
    :cond_9
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_13

    .line 1410
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_14

    .line 1409
    :cond_13
    :goto_13
    return v1

    :cond_14
    move v1, v2

    .line 1410
    goto :goto_13
.end method

.method maybeUnlockUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 977
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->switchUserLocked(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1172
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_19

    .line 1173
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    .line 1177
    :goto_12
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1178
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcastsLocked(II)V

    .line 1170
    return-void

    .line 1175
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_12
.end method

.method onSystemReady()V
    .registers 1

    .prologue
    .line 1371
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 1370
    return-void
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 6
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1317
    const-string/jumbo v1, "Observer name cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_51

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1321
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1322
    const-string/jumbo v2, ", uid="

    .line 1320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1323
    const-string/jumbo v2, " requires "

    .line 1320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1323
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1327
    .end local v0    # "msg":Ljava/lang/String;
    :cond_51
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1316
    return-void
.end method

.method sendBootCompletedLocked(Landroid/content/IIntentReceiver;)V
    .registers 5
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 1364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1365
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1366
    .local v1, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1363
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_17
    return-void
.end method

.method sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1152
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1150
    return-void
.end method

.method sendUserSwitchBroadcastsLocked(II)V
    .registers 44
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .prologue
    .line 1182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 1185
    .local v38, "ident":J
    if-ltz p1, :cond_5a

    .line 1187
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v40

    .line 1188
    .local v40, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v36

    .line 1189
    .local v36, "count":I
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_17
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_5a

    .line 1190
    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 1191
    .local v18, "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1194
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1197
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1195
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1196
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 1197
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 1195
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1189
    add-int/lit8 v37, v37, 0x1

    goto :goto_17

    .line 1200
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5a
    if-ltz p2, :cond_f7

    .line 1202
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v40

    .line 1203
    .restart local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v36

    .line 1204
    .restart local v36    # "count":I
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_6d
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_b0

    .line 1205
    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 1206
    .restart local v18    # "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1209
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1212
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1210
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1211
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 1212
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 1210
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1204
    add-int/lit8 v37, v37, 0x1

    goto :goto_6d

    .line 1214
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    :cond_b0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1217
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, p2

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 1220
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    const/4 v3, 0x0

    aput-object v2, v28, v3

    .line 1221
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1218
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1219
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 1221
    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    .line 1222
    const/16 v35, -0x1

    move-object/from16 v22, v5

    .line 1218
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_f7
    .catchall {:try_start_6 .. :try_end_f7} :catchall_fb

    .line 1225
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f7
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1181
    return-void

    .line 1224
    :catchall_fb
    move-exception v2

    .line 1225
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1224
    throw v2
.end method

.method setTargetUserIdLocked(I)I
    .registers 2
    .param p1, "targetUserId"    # I

    .prologue
    .line 1487
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    return p1
.end method

.method shouldConfirmCredentials(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1548
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1549
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_21

    move-result-object v3

    if-nez v3, :cond_14

    monitor-exit v2

    .line 1548
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1550
    return v1

    :cond_14
    monitor-exit v2

    .line 1548
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1553
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1554
    return v1

    .line 1548
    :catchall_21
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1556
    :cond_27
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1557
    const-string/jumbo v3, "keyguard"

    .line 1556
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1558
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    :cond_3e
    return v1
.end method

.method showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1044
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/UserInfo;

    const/4 v5, 0x1

    .line 1043
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Z)V

    .line 1045
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1041
    return-void
.end method

.method startProfilesLocked()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 726
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    .line 727
    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 726
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 728
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 729
    .local v2, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 730
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_18

    .line 731
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v6, v7, :cond_18

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-nez v6, :cond_18

    .line 732
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 735
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_3c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 736
    .local v3, "profilesToStartSize":I
    const/4 v0, 0x0

    .line 737
    .local v0, "i":I
    :goto_41
    if-ge v0, v3, :cond_54

    const/4 v6, 0x2

    if-ge v0, v6, :cond_54

    .line 738
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 740
    :cond_54
    if-ge v0, v3, :cond_5e

    .line 741
    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_5e
    return-void
.end method

.method startUser(IZ)Z
    .registers 35
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .prologue
    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_51

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: switchUser() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 791
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 792
    const-string/jumbo v5, ", uid="

    .line 790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 792
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 793
    const-string/jumbo v5, " requires "

    .line 790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 793
    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 790
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 794
    .local v24, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 798
    .end local v24    # "msg":Ljava/lang/String;
    :cond_51
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting userid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " fg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 802
    .local v22, "ident":J
    :try_start_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_2fa

    :try_start_84
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    move/from16 v26, v0
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_2f4

    .line 804
    .local v26, "oldUserId":I
    move/from16 v0, v26

    move/from16 v1, p1

    if-ne v0, v1, :cond_9c

    :try_start_93
    monitor-exit v31

    .line 802
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_2fa

    .line 805
    const/4 v4, 0x1

    .line 935
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 805
    return v4

    .line 808
    :cond_9c
    :try_start_9c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 809
    const-string/jumbo v5, "startUser"

    .line 808
    const/4 v6, 0x0

    .line 809
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 808
    invoke-virtual {v4, v6, v8, v5, v9}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 811
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v28

    .line 812
    .local v28, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v28, :cond_d5

    .line 813
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No user info for user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_9c .. :try_end_cc} :catchall_2f4

    :try_start_cc
    monitor-exit v31

    .line 802
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_2fa

    .line 814
    const/4 v4, 0x0

    .line 935
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    return v4

    .line 816
    :cond_d5
    if-eqz p2, :cond_108

    :try_start_d7
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 817
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot switch to User #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": not a full user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_d7 .. :try_end_ff} :catchall_2f4

    :try_start_ff
    monitor-exit v31

    .line 802
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_103
    .catchall {:try_start_ff .. :try_end_103} :catchall_2fa

    .line 818
    const/4 v4, 0x0

    .line 935
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 818
    return v4

    .line 821
    :cond_108
    if-eqz p2, :cond_119

    .line 822
    :try_start_10a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 823
    const v5, 0x10a008f

    const v6, 0x10a008e

    .line 822
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 826
    :cond_119
    const/16 v25, 0x0

    .line 830
    .local v25, "needStart":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14f

    .line 831
    new-instance v29, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 832
    .local v29, "userState":Lcom/android/server/am/UserState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 835
    const/16 v25, 0x1

    .line 838
    .end local v29    # "userState":Lcom/android/server/am/UserState;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/UserState;

    .line 839
    .local v30, "uss":Lcom/android/server/am/UserState;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 840
    .local v27, "userIdInt":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    if-eqz p2, :cond_2c8

    .line 844
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateUserConfigurationLocked()V

    .line 846
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 862
    :goto_1a2
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2ff

    .line 866
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->lastState:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 869
    const/16 v25, 0x1

    .line 879
    :cond_1c4
    :goto_1c4
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    if-nez v4, :cond_1e7

    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2a

    const/4 v8, 0x0

    move/from16 v0, p1

    invoke-virtual {v5, v6, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    :cond_1e7
    if-eqz p2, :cond_240

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    move/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x22

    move/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x24

    move/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 898
    const-wide/16 v8, 0xbb8

    .line 897
    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 901
    :cond_240
    if-eqz v25, :cond_272

    .line 903
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 906
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 909
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 907
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 908
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    .line 909
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    move/from16 v20, p1

    .line 907
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 912
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_272
    if-eqz p2, :cond_320

    .line 913
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V

    .line 918
    :goto_27f
    if-eqz v25, :cond_2bf

    .line 919
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STARTING"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 921
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 923
    new-instance v9, Lcom/android/server/am/UserController$6;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    .line 930
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v6, 0x0

    aput-object v5, v13, v6

    .line 931
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 922
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 923
    const/4 v8, 0x0

    .line 929
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 930
    const/4 v14, -0x1

    .line 931
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    const/16 v20, -0x1

    .line 922
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_2bf
    .catchall {:try_start_10a .. :try_end_2bf} :catchall_2f4

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2bf
    :try_start_2bf
    monitor-exit v31

    .line 802
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2c3
    .catchall {:try_start_2bf .. :try_end_2c3} :catchall_2fa

    .line 935
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 938
    const/4 v4, 0x1

    return v4

    .line 853
    :cond_2c8
    :try_start_2c8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 854
    .local v21, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f2
    .catchall {:try_start_2c8 .. :try_end_2f2} :catchall_2f4

    goto/16 :goto_1a2

    .line 802
    .end local v21    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v25    # "needStart":Z
    .end local v26    # "oldUserId":I
    .end local v27    # "userIdInt":Ljava/lang/Integer;
    .end local v28    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    :catchall_2f4
    move-exception v4

    :try_start_2f5
    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_2fa
    .catchall {:try_start_2f5 .. :try_end_2fa} :catchall_2fa

    .line 934
    :catchall_2fa
    move-exception v4

    .line 935
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    throw v4

    .line 870
    .restart local v25    # "needStart":Z
    .restart local v26    # "oldUserId":I
    .restart local v27    # "userIdInt":Ljava/lang/Integer;
    .restart local v28    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    :cond_2ff
    :try_start_2ff
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1c4

    .line 873
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 874
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 875
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 876
    const/16 v25, 0x1

    goto/16 :goto_1c4

    .line 915
    :cond_320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V
    :try_end_32b
    .catchall {:try_start_2ff .. :try_end_32b} :catchall_2f4

    goto/16 :goto_27f
.end method

.method startUserInForeground(ILandroid/app/Dialog;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "dlg"    # Landroid/app/Dialog;

    .prologue
    .line 945
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .line 946
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 947
    return v0
.end method

.method stopRunningUsersLocked(I)V
    .registers 10
    .param p1, "maxRunningUsers"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 190
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 191
    .local v1, "num":I
    const/4 v0, 0x0

    .line 192
    .local v0, "i":I
    :goto_9
    if-le v1, p1, :cond_6e

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6e

    .line 193
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 194
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 195
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_31

    .line 197
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    add-int/lit8 v1, v1, -0x1

    .line 199
    goto :goto_9

    .line 201
    :cond_31
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3b

    .line 202
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_40

    .line 204
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    goto :goto_9

    .line 208
    :cond_40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v4, v5, :cond_5d

    .line 211
    :cond_4e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 212
    add-int/lit8 v1, v1, -0x1

    .line 214
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    .line 215
    goto :goto_9

    .line 218
    :cond_5d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    if-eqz v4, :cond_69

    .line 219
    add-int/lit8 v1, v1, -0x1

    .line 221
    :cond_69
    add-int/lit8 v1, v1, -0x1

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 189
    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    :cond_6e
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4b

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: switchUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 455
    const-string/jumbo v2, ", uid="

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 456
    const-string/jumbo v2, " requires "

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 456
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4b
    if-ltz p1, :cond_4f

    if-nez p1, :cond_69

    .line 461
    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t stop system user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_69
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 465
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_74
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 466
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_80

    move-result v1

    monitor-exit v2

    .line 465
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 466
    return v1

    .line 465
    :catchall_80
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1092
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1093
    const-string/jumbo v3, ". Observers that didn\'t send results: "

    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1093
    iget-object v3, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3f

    monitor-exit v1

    .line 1091
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1090
    return-void

    .line 1091
    :catchall_3f
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 951
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4b

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 954
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 953
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 955
    const-string/jumbo v4, ", uid="

    .line 953
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 955
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 953
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 956
    const-string/jumbo v4, " requires "

    .line 953
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 956
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 953
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 957
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 961
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 963
    .local v0, "binderToken":J
    :try_start_4f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_57

    move-result v3

    .line 965
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 963
    return v3

    .line 964
    :catchall_57
    move-exception v3

    .line 965
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 964
    throw v3
.end method

.method unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .registers 21
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 991
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 993
    invoke-static/range {p1 .. p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v12

    if-nez v12, :cond_21

    .line 994
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 995
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getMountService()Landroid/os/storage/IMountService;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_5b

    move-result-object v6

    .line 998
    .local v6, "mountService":Landroid/os/storage/IMountService;
    :try_start_16
    iget v12, v10, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v6, v0, v12, v1, v2}, Landroid/os/storage/IMountService;->unlockUserKey(II[B[B)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_21} :catch_3c
    .catchall {:try_start_16 .. :try_end_21} :catchall_5b

    .line 1005
    .end local v6    # "mountService":Landroid/os/storage/IMountService;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_21
    :goto_21
    :try_start_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/UserState;

    .line 1006
    .local v11, "uss":Lcom/android/server/am/UserState;
    if-nez v11, :cond_61

    .line 1007
    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_5b

    .line 1008
    const/4 v12, 0x0

    monitor-exit v13

    .line 991
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1008
    return v12

    .line 999
    .end local v11    # "uss":Lcom/android/server/am/UserState;
    .restart local v6    # "mountService":Landroid/os/storage/IMountService;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_3c
    move-exception v4

    .line 1000
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3d
    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to unlock: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_5b

    goto :goto_21

    .line 991
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "mountService":Landroid/os/storage/IMountService;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_5b
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    .line 1010
    .restart local v11    # "uss":Lcom/android/server/am/UserState;
    :cond_61
    :try_start_61
    iget-object v12, v11, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1011
    if-eqz p2, :cond_e1

    const/4 v12, 0x1

    :goto_6b
    iput-boolean v12, v11, Lcom/android/server/am/UserState;->tokenProvided:Z
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_5b

    monitor-exit v13

    .line 991
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1015
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)V

    .line 1017
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1018
    .local v3, "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1022
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_84
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v5, v12, :cond_e3

    .line 1023
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1024
    .local v9, "testUserId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1025
    .local v7, "parent":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_de

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_de

    move/from16 v0, p1

    if-eq v9, v0, :cond_de

    .line 1026
    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "User "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " (parent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1027
    const-string/jumbo v15, "): attempting unlock because parent was just unlocked"

    .line 1026
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_de
    .catchall {:try_start_80 .. :try_end_de} :catchall_100

    .line 1022
    :cond_de
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 1011
    .end local v3    # "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v7    # "parent":Landroid/content/pm/UserInfo;
    .end local v9    # "testUserId":I
    :cond_e1
    const/4 v12, 0x0

    goto :goto_6b

    .restart local v3    # "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    :cond_e3
    monitor-exit v13

    .line 1018
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1033
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 1034
    .local v8, "size":I
    const/4 v5, 0x0

    :goto_ec
    if-ge v5, v8, :cond_106

    .line 1035
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 1034
    add-int/lit8 v5, v5, 0x1

    goto :goto_ec

    .line 1018
    .end local v5    # "i":I
    .end local v8    # "size":I
    :catchall_100
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    .line 1038
    .restart local v5    # "i":I
    .restart local v8    # "size":I
    :cond_106
    const/4 v12, 0x1

    return v12
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1330
    return-void
.end method

.method unsafeConvertIncomingUserLocked(I)I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1312
    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    const/4 v0, -0x3

    if-ne p1, v0, :cond_a

    .line 1313
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result p1

    .line 1312
    .end local p1    # "userId":I
    :cond_a
    return p1
.end method
