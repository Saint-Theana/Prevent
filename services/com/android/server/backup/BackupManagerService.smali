.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;,
        Lcom/android/server/backup/BackupManagerService$1;,
        Lcom/android/server/backup/BackupManagerService$2;,
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;,
        Lcom/android/server/backup/BackupManagerService$BackupHandler;,
        Lcom/android/server/backup/BackupManagerService$BackupParams;,
        Lcom/android/server/backup/BackupManagerService$BackupRequest;,
        Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$BackupState;,
        Lcom/android/server/backup/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/backup/BackupManagerService$ClearParams;,
        Lcom/android/server/backup/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/backup/BackupManagerService$FileMetadata;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEntry;,
        Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/backup/BackupManagerService$FullBackupParams;,
        Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$FullBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullParams;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/backup/BackupManagerService$Lifecycle;,
        Lcom/android/server/backup/BackupManagerService$Operation;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformClearTask;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/backup/BackupManagerService$RestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreParams;,
        Lcom/android/server/backup/BackupManagerService$RestorePolicy;,
        Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/backup/BackupManagerService$TransportConnection;,
        Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    }
.end annotation


# static fields
.field static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"

.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x4

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field static final BACKUP_METADATA_VERSION:I = 0x1

.field static final BACKUP_PW_FILE_VERSION:I = 0x2

.field static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field static final DEBUG:Z = true

.field static final DEBUG_BACKUP_TRACE:Z = true

.field static final DEBUG_SCHEDULING:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field static final MIN_FULL_BACKUP_INTERVAL:J = 0x5265c00L

.field static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_REQUEST_BACKUP:I = 0xf

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RETRY_CLEAR:I = 0xc

.field private static final MSG_RETRY_INIT:I = 0xb

.field private static final MSG_RUN_ADB_BACKUP:I = 0x2

.field private static final MSG_RUN_ADB_RESTORE:I = 0xa

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field private static final MSG_TIMEOUT:I = 0x7

.field private static final MSG_WIDGET_BROADCAST:I = 0xd

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field static final SCHEDULE_FILE_VERSION:I = 0x1

.field static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_FINISHED_INTERVAL:J = 0x7530L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupScheduleFile:Ljava/io/File;

.field mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private mPasswordVersionFile:Ljava/io/File;

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field mProvisionedObserver:Landroid/database/ContentObserver;

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransportConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$TransportConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportNames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportServiceIntent:Landroid/content/Intent;

.field final mTransportWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mTransports:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;
    .registers 3
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .registers 3
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targets"    # Ljava/util/HashSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/app/backup/IBackupObserver;I)V
    .registers 2
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "status"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .registers 3
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 3
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "progress"    # Landroid/app/backup/BackupProgress;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(ZI)V
    .registers 2
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/backup/BackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p1, "currentPw"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(I)Z
    .registers 2
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->backupSettingMigrated(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(I)Z
    .registers 2
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->readBackupEnableState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B
    .registers 3
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwBytes"    # [B
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/backup/BackupManagerService;I)[B
    .registers 3
    .param p1, "bits"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/server/backup/Trampoline;

    .prologue
    .line 1074
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    .line 283
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 299
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 298
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 305
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 311
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 319
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    .line 322
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 327
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.backup.TRANSPORT_HOST"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    .line 329
    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 328
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    .line 331
    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 330
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    .line 333
    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 332
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    .line 607
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 608
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 609
    new-instance v20, Ljava/util/Random;

    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 611
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    .line 625
    new-instance v20, Ljava/security/SecureRandom;

    invoke-direct/range {v20 .. v20}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 642
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    .line 646
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 647
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 648
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 652
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    .line 1491
    new-instance v20, Lcom/android/server/backup/BackupManagerService$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1873
    new-instance v20, Lcom/android/server/backup/BackupManagerService$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1075
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1077
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 1078
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1080
    const-string/jumbo v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/AlarmManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1081
    const-string/jumbo v20, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1082
    const-string/jumbo v20, "mount"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    .line 1084
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 1087
    new-instance v20, Landroid/os/HandlerThread;

    const-string/jumbo v21, "backup"

    const/16 v22, 0xa

    invoke-direct/range {v20 .. v22}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->start()V

    .line 1089
    new-instance v20, Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1094
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v20, "device_provisioned"

    const/16 v21, 0x0

    .line 1093
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_4a8

    const/16 v20, 0x1

    :goto_1a9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 1096
    const-string/jumbo v20, "backup_auto_restore"

    const/16 v21, 0x1

    .line 1095
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_4ac

    const/16 v20, 0x1

    :goto_1c0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    .line 1098
    new-instance v20, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    .line 1100
    const-string/jumbo v20, "device_provisioned"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 1099
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1105
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string/jumbo v22, "backup"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v20

    if-nez v20, :cond_23c

    .line 1108
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "SELinux restorecon failed on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_23c
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v21

    const-string/jumbo v22, "backup_stage"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 1114
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    .line 1115
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "pwversion"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_29e

    .line 1117
    const/4 v7, 0x0

    .line 1118
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1120
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_278
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_285
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_285} :catch_4bc
    .catchall {:try_start_278 .. :try_end_285} :catchall_4de

    .line 1121
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_285
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_28a
    .catch Ljava/io/IOException; {:try_start_285 .. :try_end_28a} :catch_58c
    .catchall {:try_start_285 .. :try_end_28a} :catchall_583

    .line 1122
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_28a
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    .end local v11    # "in":Ljava/io/DataInputStream;
    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I
    :try_end_294
    .catch Ljava/io/IOException; {:try_start_28a .. :try_end_294} :catch_590
    .catchall {:try_start_28a .. :try_end_294} :catchall_587

    .line 1127
    if-eqz v12, :cond_299

    :try_start_296
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1128
    :cond_299
    if-eqz v8, :cond_29e

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_29e
    .catch Ljava/io/IOException; {:try_start_296 .. :try_end_29e} :catch_4b0

    .line 1135
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    :cond_29e
    :goto_29e
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "pwhash"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2fe

    .line 1137
    const/4 v7, 0x0

    .line 1138
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1140
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :try_start_2c0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2cd} :catch_501
    .catchall {:try_start_2c0 .. :try_end_2cd} :catchall_523

    .line 1141
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :try_start_2cd
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v20, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2db
    .catch Ljava/io/IOException; {:try_start_2cd .. :try_end_2db} :catch_57c
    .catchall {:try_start_2cd .. :try_end_2db} :catchall_575

    .line 1144
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :try_start_2db
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    .end local v11    # "in":Ljava/io/DataInputStream;
    move-result v16

    .line 1145
    .local v16, "saltLen":I
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 1146
    .local v15, "salt":[B
    invoke-virtual {v12, v15}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1147
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1148
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_2f4
    .catch Ljava/io/IOException; {:try_start_2db .. :try_end_2f4} :catch_57f
    .catchall {:try_start_2db .. :try_end_2f4} :catchall_578

    .line 1153
    if-eqz v12, :cond_2f9

    :try_start_2f6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1154
    :cond_2f9
    if-eqz v8, :cond_2fe

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2fe
    .catch Ljava/io/IOException; {:try_start_2f6 .. :try_end_2fe} :catch_4f5

    .line 1162
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    :cond_2fe
    :goto_2fe
    new-instance v20, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1164
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v20, "android.app.backup.intent.RUN"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    .line 1166
    const-string/jumbo v21, "android.permission.BACKUP"

    const/16 v22, 0x0

    .line 1165
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1168
    new-instance v20, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 1169
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1170
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v20, "android.app.backup.intent.INIT"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    .line 1172
    const-string/jumbo v21, "android.permission.BACKUP"

    const/16 v22, 0x0

    .line 1171
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1174
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "android.app.backup.intent.RUN"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v4, "backupIntent":Landroid/content/Intent;
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1176
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 1178
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v20, "android.app.backup.intent.INIT"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1179
    .local v13, "initIntent":Landroid/content/Intent;
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1180
    const/16 v20, 0x5

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1183
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "pending"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 1185
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .line 1188
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "fb-schedule"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 1189
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->initPackageTracking()V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1195
    const/16 v21, 0x0

    :try_start_3f9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_400
    .catchall {:try_start_3f9 .. :try_end_400} :catchall_53a

    monitor-exit v20

    .line 1200
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v17

    .line 1201
    .local v17, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    .line 1203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 1204
    const-string/jumbo v21, "backup_transport"

    .line 1203
    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1205
    .local v18, "transport":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_422

    .line 1206
    const/16 v18, 0x0

    .line 1208
    .end local v18    # "transport":Ljava/lang/String;
    :cond_422
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 1209
    const-string/jumbo v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Starting with transport "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1213
    invoke-virtual/range {v20 .. v23}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 1216
    .local v9, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v21, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Found transports: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v9, :cond_53d

    const-string/jumbo v20, "null"

    :goto_474
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    if-eqz v9, :cond_547

    .line 1219
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_48a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_547

    .line 1220
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 1224
    .local v19, "transportService":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 1219
    add-int/lit8 v10, v10, 0x1

    goto :goto_48a

    .line 1093
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "i":I
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    .end local v19    # "transportService":Landroid/content/pm/ServiceInfo;
    :cond_4a8
    const/16 v20, 0x0

    goto/16 :goto_1a9

    .line 1095
    :cond_4ac
    const/16 v20, 0x0

    goto/16 :goto_1c0

    .line 1129
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_4b0
    move-exception v5

    .line 1130
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Error closing pw version files"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29e

    .line 1123
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_4bc
    move-exception v5

    .line 1124
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_4bd
    :try_start_4bd
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to read backup pw version"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c6
    .catchall {:try_start_4bd .. :try_end_4c6} :catchall_4de

    .line 1127
    if-eqz v11, :cond_4cb

    :try_start_4c8
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1128
    :cond_4cb
    if-eqz v7, :cond_29e

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4d0
    .catch Ljava/io/IOException; {:try_start_4c8 .. :try_end_4d0} :catch_4d2

    goto/16 :goto_29e

    .line 1129
    :catch_4d2
    move-exception v5

    .line 1130
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Error closing pw version files"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29e

    .line 1125
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_4de
    move-exception v20

    .line 1127
    :goto_4df
    if-eqz v11, :cond_4e4

    :try_start_4e1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1128
    :cond_4e4
    if-eqz v7, :cond_4e9

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4e9
    .catch Ljava/io/IOException; {:try_start_4e1 .. :try_end_4e9} :catch_4ea

    .line 1125
    :cond_4e9
    :goto_4e9
    throw v20

    .line 1129
    :catch_4ea
    move-exception v5

    .line 1130
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Error closing pw version files"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e9

    .line 1155
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v15    # "salt":[B
    .restart local v16    # "saltLen":I
    :catch_4f5
    move-exception v5

    .line 1156
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close streams"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2fe

    .line 1149
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_501
    move-exception v5

    .line 1150
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_502
    :try_start_502
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to read saved backup pw hash"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50b
    .catchall {:try_start_502 .. :try_end_50b} :catchall_523

    .line 1153
    if-eqz v11, :cond_510

    :try_start_50d
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1154
    :cond_510
    if-eqz v7, :cond_2fe

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_515
    .catch Ljava/io/IOException; {:try_start_50d .. :try_end_515} :catch_517

    goto/16 :goto_2fe

    .line 1155
    :catch_517
    move-exception v5

    .line 1156
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close streams"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2fe

    .line 1151
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_523
    move-exception v20

    .line 1153
    :goto_524
    if-eqz v11, :cond_529

    :try_start_526
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1154
    :cond_529
    if-eqz v7, :cond_52e

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_52e
    .catch Ljava/io/IOException; {:try_start_526 .. :try_end_52e} :catch_52f

    .line 1151
    :cond_52e
    :goto_52e
    throw v20

    .line 1155
    :catch_52f
    move-exception v5

    .line 1156
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Unable to close streams"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52e

    .line 1194
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "backupIntent":Landroid/content/Intent;
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "initIntent":Landroid/content/Intent;
    :catchall_53a
    move-exception v21

    monitor-exit v20

    throw v21

    .line 1216
    .restart local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_53d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto/16 :goto_474

    .line 1230
    :cond_547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$-void__init__android_content_Context_context_com_android_server_backup_Trampoline_parent_LambdaImpl0;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "*backup*"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 1074
    return-void

    .line 1151
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catchall_575
    move-exception v20

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .local v7, "fin":Ljava/io/FileInputStream;
    goto :goto_524

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_578
    move-exception v20

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_524

    .line 1149
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catch_57c
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_502

    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_57f
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_502

    .line 1125
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catchall_583
    move-exception v20

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_4df

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_587
    move-exception v20

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_4df

    .line 1123
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    :catch_58c
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_4bd

    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_590
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v11, "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_4bd
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2173
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 2174
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1a

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2175
    :cond_1a
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2176
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 2177
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_32

    .line 2178
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2179
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2181
    :cond_32
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2186
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 2187
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x10

    .line 2186
    invoke-virtual {v5, v7, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2188
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 2168
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "uid":I
    :cond_47
    return-void
.end method

.method private static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 5
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 720
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 722
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    .line 726
    :cond_14
    return v0
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x0

    .line 696
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    .line 697
    return v2

    .line 701
    :cond_a
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 702
    return v2

    .line 706
    :cond_15
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 707
    return v2

    .line 710
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method private static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 735
    const-string/jumbo v1, "com.android.providers.settings"

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 736
    return v0

    .line 739
    :cond_d
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 715
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method private backupPasswordMatches(Ljava/lang/String;)Z
    .registers 6
    .param p1, "currentPw"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2710

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1731
    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_24

    const/4 v0, 0x1

    .line 1732
    .local v0, "pbkdf2Fallback":Z
    :goto_e
    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1733
    if-eqz v0, :cond_26

    const-string/jumbo v1, "PBKDF2WithHmacSHA1And8bit"

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1739
    .end local v0    # "pbkdf2Fallback":Z
    :cond_22
    const/4 v1, 0x1

    return v1

    .line 1731
    :cond_24
    const/4 v0, 0x0

    .restart local v0    # "pbkdf2Fallback":Z
    goto :goto_e

    .line 1735
    :cond_26
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup password mismatch; aborting"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const/4 v1, 0x0

    return v1
.end method

.method private static backupSettingMigrated(I)Z
    .registers 5
    .param p0, "userId"    # I

    .prologue
    .line 9608
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "backup"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9609
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9610
    .local v1, "enableFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .registers 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwArray"    # [C
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1566
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1567
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v4, 0x100

    invoke-direct {v3, p2, p3, p4, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1568
    .local v3, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_e} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v4

    return-object v4

    .line 1571
    .end local v2    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "ks":Ljava/security/spec/KeySpec;
    :catch_10
    move-exception v0

    .line 1572
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "PBKDF2 unavailable!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1a
    const/4 v4, 0x0

    return-object v4

    .line 1569
    :catch_1c
    move-exception v1

    .line 1570
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Invalid key spec for PBKDF2!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    const/4 v1, 0x0

    .line 1578
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1579
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_10

    .line 1580
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1582
    :cond_10
    return-object v1
.end method

.method private buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1561
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # [B

    .prologue
    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1587
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 1588
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1590
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9138
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 9139
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 9137
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9146
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_33

    .line 9147
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9148
    const-string/jumbo v3, " uid="

    .line 9147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9148
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 9147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9149
    return-void

    .line 9152
    :cond_33
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9154
    :try_start_36
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 9157
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 9158
    .local v0, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 9164
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_53

    .end local v0    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_4c
    monitor-exit v2

    .line 9170
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 9142
    return-void

    .line 9152
    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9177
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 9178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 9177
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    .line 9178
    const/4 v5, -0x1

    .line 9177
    if-ne v4, v5, :cond_28

    .line 9179
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 9180
    :try_start_17
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    monitor-exit v5

    return-object v4

    .line 9179
    :catchall_25
    move-exception v4

    monitor-exit v5

    throw v4

    .line 9185
    :cond_28
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 9186
    .local v3, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v4, "@pm@"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 9187
    const-string/jumbo v4, "@pm@"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9199
    :goto_3c
    return-object v3

    .line 9189
    :cond_3d
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 9190
    :try_start_40
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 9191
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    if-ge v1, v0, :cond_59

    .line 9192
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 9193
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_56

    .line 9194
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_5b

    .line 9191
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .end local v2    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_59
    monitor-exit v5

    goto :goto_3c

    .line 9189
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_5b
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 10467
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 10468
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string/jumbo v3, "Defined backup agents:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10469
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 10470
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10471
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 10472
    const-string/jumbo v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 10466
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_38
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 38
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 10477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 10478
    :try_start_7
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Backup Manager is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_146

    const-string/jumbo v26, "enabled"

    :goto_1e
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10479
    const-string/jumbo v27, " / "

    .line 10478
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 10479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v26, v0

    if-nez v26, :cond_14b

    const-string/jumbo v26, "not "

    .line 10478
    :goto_38
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10479
    const-string/jumbo v27, "provisioned / "

    .line 10478
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 10480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->size()I

    move-result v26

    if-nez v26, :cond_150

    const-string/jumbo v26, "not "

    .line 10478
    :goto_56
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10480
    const-string/jumbo v27, "pending init"

    .line 10478
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10481
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Auto-restore is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    move/from16 v26, v0

    if-eqz v26, :cond_155

    const-string/jumbo v26, "enabled"

    :goto_87
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    move/from16 v26, v0

    if-eqz v26, :cond_ac

    const-string/jumbo v26, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10483
    :cond_ac
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Last backup pass started: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10484
    const-string/jumbo v27, " (now = "

    .line 10483
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 10483
    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 10484
    const/16 v27, 0x29

    .line 10483
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10485
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "  next scheduled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    move-result-wide v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10487
    const-string/jumbo v26, "Transport whitelist:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "transport$iterator":Ljava/util/Iterator;
    :goto_121
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ComponentName;

    .line 10489
    .local v21, "transport":Landroid/content/ComponentName;
    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10490
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_142
    .catchall {:try_start_7 .. :try_end_142} :catchall_143

    goto :goto_121

    .line 10477
    .end local v21    # "transport":Landroid/content/ComponentName;
    .end local v23    # "transport$iterator":Ljava/util/Iterator;
    :catchall_143
    move-exception v26

    monitor-exit v28

    throw v26

    .line 10478
    :cond_146
    :try_start_146
    const-string/jumbo v26, "disabled"

    goto/16 :goto_1e

    .line 10479
    :cond_14b
    const-string/jumbo v26, ""

    goto/16 :goto_38

    .line 10480
    :cond_150
    const-string/jumbo v26, ""

    goto/16 :goto_56

    .line 10481
    :cond_155
    const-string/jumbo v26, "disabled"

    goto/16 :goto_87

    .line 10493
    .restart local v23    # "transport$iterator":Ljava/util/Iterator;
    :cond_15a
    const-string/jumbo v26, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v24

    .line 10495
    .local v24, "transports":[Ljava/lang/String;
    if-eqz v24, :cond_2a0

    .line 10496
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v29

    const/16 v26, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v27, v26

    :goto_177
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_2a0

    aget-object v20, v29, v27

    .line 10497
    .local v20, "t":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_266

    const-string/jumbo v26, "  * "

    :goto_197
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b2
    .catchall {:try_start_146 .. :try_end_1b2} :catchall_143

    .line 10499
    :try_start_1b2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v22

    .line 10500
    .local v22, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10501
    .local v7, "dir":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "       destination: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10502
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "       intent: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10503
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    const/16 v26, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_226
    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_29a

    aget-object v11, v31, v26

    .line 10504
    .local v11, "f":Ljava/io/File;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "       "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " state bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_263} :catch_26b
    .catchall {:try_start_1b2 .. :try_end_263} :catchall_143

    .line 10503
    add-int/lit8 v26, v26, 0x1

    goto :goto_226

    .line 10497
    .end local v7    # "dir":Ljava/io/File;
    .end local v11    # "f":Ljava/io/File;
    .end local v22    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_266
    :try_start_266
    const-string/jumbo v26, "    "

    goto/16 :goto_197

    .line 10506
    :catch_26b
    move-exception v8

    .line 10507
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "BackupManagerService"

    const-string/jumbo v31, "Error in transport"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10508
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "        Error: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10496
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_29a
    add-int/lit8 v26, v27, 0x1

    move/from16 v27, v26

    goto/16 :goto_177

    .line 10513
    .end local v20    # "t":Ljava/lang/String;
    :cond_2a0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pending init: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_2cf
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2fb

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 10515
    .local v18, "s":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2cf

    .line 10519
    .end local v18    # "s":Ljava/lang/String;
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_302
    .catchall {:try_start_266 .. :try_end_302} :catchall_143

    .line 10520
    :try_start_302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_355

    .line 10521
    const-string/jumbo v26, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_322
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_355

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 10523
    .restart local v18    # "s":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "   "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_351
    .catchall {:try_start_302 .. :try_end_351} :catchall_352

    goto :goto_322

    .line 10519
    .end local v18    # "s":Ljava/lang/String;
    :catchall_352
    move-exception v26

    :try_start_353
    monitor-exit v27

    throw v26

    :cond_355
    monitor-exit v27

    .line 10529
    const-string/jumbo v26, "Ancestral: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10530
    const-string/jumbo v26, "Current:   "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 10533
    .local v4, "N":I
    const-string/jumbo v26, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10534
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3a1
    if-ge v12, v4, :cond_3ff

    .line 10535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    .line 10536
    .local v25, "uid":I
    const-string/jumbo v26, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10537
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 10538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    .line 10539
    .local v13, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "app$iterator":Ljava/util/Iterator;
    :goto_3d2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3fc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10540
    .local v5, "app":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3d2

    .line 10534
    .end local v5    # "app":Ljava/lang/String;
    :cond_3fc
    add-int/lit8 v12, v12, 0x1

    goto :goto_3a1

    .line 10544
    .end local v6    # "app$iterator":Ljava/util/Iterator;
    .end local v13    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "uid":I
    :cond_3ff
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Ancestral packages: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 10545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-nez v26, :cond_465

    const-string/jumbo v26, "none"

    .line 10544
    :goto_416
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-eqz v26, :cond_474

    .line 10547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "pkg$iterator":Ljava/util/Iterator;
    :goto_43b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_474

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 10548
    .local v14, "pkg":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_43b

    .line 10545
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "pkg$iterator":Ljava/util/Iterator;
    :cond_465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    goto :goto_416

    .line 10552
    :cond_474
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Ever backed up: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "pkg$iterator":Ljava/util/Iterator;
    :goto_4a3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4cd

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 10554
    .restart local v14    # "pkg":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a3

    .line 10557
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_4cd
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pending key/value backup: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "req$iterator":Ljava/util/Iterator;
    :goto_500
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_52c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 10559
    .local v16, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_500

    .line 10562
    .end local v16    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_52c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Full backup queue:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :goto_55b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_592

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 10564
    .local v9, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 10565
    const-string/jumbo v26, " : "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_591
    .catchall {:try_start_353 .. :try_end_591} :catchall_143

    goto :goto_55b

    .end local v9    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_592
    monitor-exit v28

    .line 10476
    return-void
.end method

.method private fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z
    .registers 11
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    const/4 v8, 0x0

    .line 5003
    if-nez p1, :cond_d

    .line 5004
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Transport not present; full data backup not performed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    return v8

    .line 5011
    :cond_d
    :try_start_d
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5012
    .local v2, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "@pm@"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5013
    .local v1, "pmState":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_54

    .line 5015
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup requested but dataset not yet initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_34

    .line 5017
    return v8

    .line 5019
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    :catch_34
    move-exception v0

    .line 5020
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get transport name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    return v8

    .line 5024
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pmState":Ljava/io/File;
    .restart local v2    # "stateDir":Ljava/io/File;
    :cond_54
    const/4 v3, 0x1

    return v3
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .registers 1

    .prologue
    .line 347
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 2353
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 2355
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_27

    .line 2356
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit v2

    .line 2358
    return-object v0

    .line 2353
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_29
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .registers 6
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 2367
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2368
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2369
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_27

    .line 2370
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2374
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_2a

    monitor-exit v3

    return-object v2

    .line 2369
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_27
    monitor-exit v3

    .line 2378
    const/4 v2, 0x0

    return-object v2

    .line 2367
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1594
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1595
    .local v0, "bytes":I
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_17

    .line 1596
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1599
    :cond_17
    new-array v2, v0, [B

    .line 1600
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_34

    .line 1601
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1600
    add-int/lit8 v1, v1, 0x2

    goto :goto_1a

    .line 1603
    :cond_34
    return-object v2
.end method

.method private initPackageTracking()V
    .registers 25

    .prologue
    .line 1298
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v23, "ancestral"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    .line 1300
    :try_start_14
    new-instance v19, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1301
    .local v19, "tf":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v20

    .line 1302
    .local v20, "version":I
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6e

    .line 1303
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 1304
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 1306
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 1307
    .local v12, "numPackages":I
    if-ltz v12, :cond_6e

    .line 1308
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1309
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5a
    if-ge v9, v12, :cond_6e

    .line 1310
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v14

    .line 1311
    .local v14, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1309
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 1315
    .end local v9    # "i":I
    .end local v12    # "numPackages":I
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_6e
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_71} :catch_107
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_71} :catch_f7

    .line 1326
    .end local v19    # "tf":Ljava/io/RandomAccessFile;
    .end local v20    # "version":I
    :goto_71
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v23, "processed"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    .line 1327
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "processed.new"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1332
    .local v18, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_a2

    .line 1333
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 1338
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_12b

    .line 1339
    const/16 v16, 0x0

    .line 1340
    .local v16, "temp":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .line 1343
    .local v10, "in":Ljava/io/RandomAccessFile;
    :try_start_b1
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string/jumbo v21, "rws"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/io/EOFException; {:try_start_b1 .. :try_end_bf} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_bf} :catch_113
    .catchall {:try_start_b1 .. :try_end_bf} :catchall_1f3

    .line 1344
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v17, "temp":Ljava/io/RandomAccessFile;
    :try_start_bf
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "r"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/io/EOFException; {:try_start_bf .. :try_end_d1} :catch_20f
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d1} :catch_218
    .catchall {:try_start_bf .. :try_end_d1} :catchall_206

    .line 1348
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .local v11, "in":Ljava/io/RandomAccessFile;
    :goto_d1
    :try_start_d1
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_d4
    .catch Ljava/io/EOFException; {:try_start_d1 .. :try_end_d4} :catch_213
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_21d
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_20a

    move-result-object v13

    .line 1351
    .local v13, "pkg":Ljava/lang/String;
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1354
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d5 .. :try_end_f4} :catch_f5
    .catch Ljava/io/EOFException; {:try_start_d5 .. :try_end_f4} :catch_213
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_f4} :catch_21d
    .catchall {:try_start_d5 .. :try_end_f4} :catchall_20a

    goto :goto_d1

    .line 1356
    :catch_f5
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_d1

    .line 1319
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .end local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_f7
    move-exception v6

    .line 1320
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Unable to read token file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_71

    .line 1316
    .end local v6    # "e":Ljava/io/IOException;
    :catch_107
    move-exception v8

    .line 1318
    .local v8, "fnf":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "No ancestral data"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71

    .line 1367
    .end local v8    # "fnf":Ljava/io/FileNotFoundException;
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_113
    move-exception v6

    .line 1368
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_114
    :try_start_114
    const-string/jumbo v21, "BackupManagerService"

    const-string/jumbo v22, "Error in processed file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_121
    .catchall {:try_start_114 .. :try_end_121} :catchall_1f3

    .line 1370
    if-eqz v16, :cond_126

    :try_start_123
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_19e

    .line 1371
    :cond_126
    :goto_126
    if-eqz v10, :cond_12b

    :try_start_128
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_1a0

    .line 1375
    .end local v6    # "e":Ljava/io/IOException;
    :cond_12b
    :goto_12b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1377
    :try_start_132
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_13c
    .catchall {:try_start_132 .. :try_end_13c} :catchall_203

    monitor-exit v22

    .line 1382
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1383
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1384
    const-string/jumbo v21, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1385
    const-string/jumbo v21, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v21, "package"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1389
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 1390
    .local v15, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1391
    const-string/jumbo v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1294
    return-void

    .line 1370
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_19e
    move-exception v6

    goto :goto_126

    .line 1371
    :catch_1a0
    move-exception v6

    goto :goto_12b

    .line 1361
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catch_1a2
    move-exception v5

    .line 1364
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v5, "e":Ljava/io/EOFException;
    :goto_1a3
    :try_start_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v21

    if-nez v21, :cond_1e2

    .line 1365
    const-string/jumbo v21, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error renaming "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e2
    .catchall {:try_start_1a3 .. :try_end_1e2} :catchall_1f3

    .line 1370
    :cond_1e2
    if-eqz v16, :cond_1e7

    :try_start_1e4
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1f1

    .line 1371
    :cond_1e7
    :goto_1e7
    if-eqz v10, :cond_12b

    :try_start_1e9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_1ec} :catch_1ee

    goto/16 :goto_12b

    :catch_1ee
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_12b

    .line 1370
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1f1
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_1e7

    .line 1369
    .end local v5    # "e":Ljava/io/EOFException;
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1f3
    move-exception v21

    .line 1370
    :goto_1f4
    if-eqz v16, :cond_1f9

    :try_start_1f6
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1f9} :catch_1ff

    .line 1371
    :cond_1f9
    :goto_1f9
    if-eqz v10, :cond_1fe

    :try_start_1fb
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_1fb .. :try_end_1fe} :catch_201

    .line 1369
    :cond_1fe
    :goto_1fe
    throw v21

    .line 1370
    :catch_1ff
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_1f9

    .line 1371
    .end local v6    # "e":Ljava/io/IOException;
    :catch_201
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_1fe

    .line 1375
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_203
    move-exception v21

    monitor-exit v22

    throw v21

    .line 1369
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catchall_206
    move-exception v21

    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .local v16, "temp":Ljava/io/RandomAccessFile;
    goto :goto_1f4

    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catchall_20a
    move-exception v21

    move-object v10, v11

    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1f4

    .line 1361
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_20f
    move-exception v5

    .restart local v5    # "e":Ljava/io/EOFException;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1a3

    .end local v5    # "e":Ljava/io/EOFException;
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_213
    move-exception v5

    .restart local v5    # "e":Ljava/io/EOFException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1a3

    .line 1367
    .end local v5    # "e":Ljava/io/EOFException;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_218
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_114

    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_21d
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_114
.end method

.method private makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .registers 9
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwBytes"    # [B
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1607
    array-length v3, p2

    new-array v2, v3, [C

    .line 1608
    .local v2, "mkAsChar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v3, p2

    if-ge v1, v3, :cond_f

    .line 1609
    aget-byte v3, p2, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1608
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1612
    :cond_f
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1613
    .local v0, "checksum":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private parseLeftoverJournals()V
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 1533
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    :goto_8
    if-ge v7, v9, :cond_73

    aget-object v3, v8, v7

    .line 1534
    .local v3, "f":Ljava/io/File;
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v3, v10}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v10

    if-eqz v10, :cond_3c

    .line 1538
    :cond_18
    const/4 v4, 0x0

    .line 1540
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_19
    const-string/jumbo v10, "BackupManagerService"

    const-string/jumbo v11, "Found stale backup journal, scheduling"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v5, v3, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_2a} :catch_77
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_3f
    .catchall {:try_start_19 .. :try_end_2a} :catchall_67

    .line 1543
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v5, "in":Ljava/io/RandomAccessFile;
    :goto_2a
    :try_start_2a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 1545
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_31} :catch_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_79
    .catchall {:try_start_2a .. :try_end_31} :catchall_74

    goto :goto_2a

    .line 1547
    .end local v6    # "packageName":Ljava/lang/String;
    :catch_32
    move-exception v0

    .local v0, "e":Ljava/io/EOFException;
    move-object v4, v5

    .line 1553
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    :goto_34
    if-eqz v4, :cond_39

    :try_start_36
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_65

    .line 1554
    :cond_39
    :goto_39
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1533
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_3c
    :goto_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 1549
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_3f
    move-exception v2

    .line 1550
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    :goto_40
    :try_start_40
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_67

    .line 1553
    if-eqz v4, :cond_5f

    :try_start_5c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_63

    .line 1554
    :cond_5f
    :goto_5f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_3c

    .line 1553
    :catch_63
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_5f

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "e":Ljava/io/EOFException;
    :catch_65
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_39

    .line 1551
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_67
    move-exception v7

    .line 1553
    :goto_68
    if-eqz v4, :cond_6d

    :try_start_6a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_71

    .line 1554
    :cond_6d
    :goto_6d
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1551
    throw v7

    .line 1553
    :catch_71
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6d

    .line 1532
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :cond_73
    return-void

    .line 1551
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catchall_74
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .local v4, "in":Ljava/io/RandomAccessFile;
    goto :goto_68

    .line 1547
    .local v4, "in":Ljava/io/RandomAccessFile;
    :catch_77
    move-exception v0

    .restart local v0    # "e":Ljava/io/EOFException;
    goto :goto_34

    .line 1549
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catch_79
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .local v4, "in":Ljava/io/RandomAccessFile;
    goto :goto_40
.end method

.method private randomBytes(I)[B
    .registers 4
    .param p1, "bits"    # I

    .prologue
    .line 1618
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1619
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1620
    return-object v0
.end method

.method private static readBackupEnableState(I)Z
    .registers 12
    .param p0, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 9614
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v8, "backup"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9615
    .local v0, "base":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "backup_enabled"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9616
    .local v2, "enableFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 9617
    const/4 v3, 0x0

    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_42
    .catchall {:try_start_1d .. :try_end_22} :catchall_68

    .line 9618
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_22
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_6d
    .catchall {:try_start_22 .. :try_end_25} :catchall_6a

    move-result v5

    .line 9619
    .local v5, "state":I
    if-eqz v5, :cond_3d

    const/4 v6, 0x1

    .line 9623
    :goto_29
    if-eqz v4, :cond_2e

    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_31

    :cond_2e
    :goto_2e
    if-eqz v7, :cond_41

    :try_start_30
    throw v7
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_31

    .line 9620
    :catch_31
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 9622
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "state":I
    :goto_33
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Cannot read enable state; assuming disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9629
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3c
    return v9

    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "state":I
    :cond_3d
    move v6, v9

    .line 9619
    goto :goto_29

    .line 9623
    :catch_3f
    move-exception v7

    goto :goto_2e

    .line 9619
    :cond_41
    return v6

    .line 9623
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "state":I
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_42
    move-exception v6

    .end local v3    # "fin":Ljava/io/FileInputStream;
    :goto_43
    :try_start_43
    throw v6
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_50

    :cond_4d
    :goto_4d
    if-eqz v7, :cond_5d

    :try_start_4f
    throw v7

    .line 9620
    :catch_50
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_33

    .line 9623
    .end local v1    # "e":Ljava/io/IOException;
    :catch_52
    move-exception v8

    if-nez v7, :cond_57

    move-object v7, v8

    goto :goto_4d

    :cond_57
    if-eq v7, v8, :cond_4d

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4d

    :cond_5d
    throw v6
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5e} :catch_50

    .line 9626
    :cond_5e
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 9623
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_68
    move-exception v6

    goto :goto_48

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_6a
    move-exception v6

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    goto :goto_48

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_6d
    move-exception v6

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_43
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1396
    const/4 v12, 0x0

    .line 1397
    .local v12, "changed":Z
    const/16 v27, 0x0

    .line 1399
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v9

    .line 1401
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_6e

    .line 1402
    const/16 v16, 0x0

    .line 1403
    .local v16, "fstream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 1404
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .line 1406
    .local v19, "in":Ljava/io/DataInputStream;
    :try_start_1e
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_20c
    .catchall {:try_start_1e .. :try_end_2d} :catchall_1e2

    .line 1407
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .local v17, "fstream":Ljava/io/FileInputStream;
    :try_start_2d
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_20f
    .catchall {:try_start_2d .. :try_end_34} :catchall_1f3

    .line 1408
    .local v11, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_34
    new-instance v20, Ljava/io/DataInputStream;

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_214
    .catchall {:try_start_34 .. :try_end_3b} :catchall_1f7

    .line 1410
    .local v20, "in":Ljava/io/DataInputStream;
    :try_start_3b
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    .end local v19    # "in":Ljava/io/DataInputStream;
    move-result v29

    .line 1411
    .local v29, "version":I
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_bd

    .line 1412
    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unknown backup schedule version "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_65} :catch_21a
    .catchall {:try_start_3b .. :try_end_65} :catchall_1fc

    .line 1467
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :goto_65
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1468
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1473
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .end local v20    # "in":Ljava/io/DataInputStream;
    .end local v29    # "version":I
    :cond_6e
    :goto_6e
    if-nez v27, :cond_1ed

    .line 1476
    const/4 v12, 0x1

    .line 1477
    new-instance v27, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1478
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "info$iterator":Ljava/util/Iterator;
    :cond_82
    :goto_82
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1ed

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    .line 1479
    .local v21, "info":Landroid/content/pm/PackageInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_82

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-eqz v30, :cond_82

    .line 1480
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 1415
    .end local v21    # "info":Landroid/content/pm/PackageInfo;
    .end local v22    # "info$iterator":Ljava/util/Iterator;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v29    # "version":I
    :cond_bd
    :try_start_bd
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1416
    .local v6, "N":I
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c8} :catch_21a
    .catchall {:try_start_bd .. :try_end_c8} :catchall_1fc

    .line 1422
    .local v28, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :try_start_c8
    new-instance v15, Ljava/util/HashSet;

    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-direct {v15, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 1424
    .local v15, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_cf
    move/from16 v0, v18

    if-ge v0, v6, :cond_193

    .line 1425
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    .line 1426
    .local v26, "pkgName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v24

    .line 1427
    .local v24, "lastBackup":J
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_e0} :catch_168
    .catchall {:try_start_c8 .. :try_end_e0} :catchall_203

    .line 1429
    :try_start_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 1430
    .local v23, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static/range {v23 .. v23}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_11b

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-eqz v30, :cond_11b

    .line 1431
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_118
    add-int/lit8 v18, v18, 0x1

    goto :goto_cf

    .line 1434
    .restart local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_11b
    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1435
    const-string/jumbo v32, " no longer eligible for full backup"

    .line 1434
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e0 .. :try_end_140} :catch_141
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_140} :catch_168
    .catchall {:try_start_e0 .. :try_end_140} :catchall_203

    goto :goto_118

    .line 1438
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_141
    move-exception v13

    .line 1440
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_142
    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1441
    const-string/jumbo v32, " not installed; dropping from full backup"

    .line 1440
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_167} :catch_168
    .catchall {:try_start_142 .. :try_end_167} :catchall_203

    goto :goto_118

    .line 1462
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "i":I
    .end local v24    # "lastBackup":J
    .end local v26    # "pkgName":Ljava/lang/String;
    :catch_168
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    move-object/from16 v27, v28

    .line 1463
    .end local v6    # "N":I
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .end local v29    # "version":I
    :goto_170
    :try_start_170
    const-string/jumbo v30, "BackupManagerService"

    const-string/jumbo v31, "Unable to read backup schedule"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z
    :try_end_186
    .catchall {:try_start_170 .. :try_end_186} :catchall_1e2

    .line 1465
    const/16 v27, 0x0

    .line 1467
    .restart local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1468
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_6e

    .line 1448
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "i":I
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v29    # "version":I
    :cond_193
    :try_start_193
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "app$iterator":Ljava/util/Iterator;
    :cond_197
    :goto_197
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1db

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 1449
    .local v7, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_197

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-eqz v30, :cond_197

    .line 1450
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_197

    .line 1454
    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    const/4 v12, 0x1

    goto :goto_197

    .line 1460
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    :cond_1db
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1de} :catch_168
    .catchall {:try_start_193 .. :try_end_1de} :catchall_203

    move-object/from16 v27, v28

    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto/16 :goto_65

    .line 1466
    .end local v6    # "N":I
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .end local v18    # "i":I
    .end local v20    # "in":Ljava/io/DataInputStream;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .end local v29    # "version":I
    :catchall_1e2
    move-exception v30

    .line 1467
    :goto_1e3
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1468
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1466
    throw v30

    .line 1485
    :cond_1ed
    if-eqz v12, :cond_1f2

    .line 1486
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    .line 1488
    :cond_1f2
    return-object v27

    .line 1466
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :catchall_1f3
    move-exception v30

    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1e3

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catchall_1f7
    move-exception v30

    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1e3

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    :catchall_1fc
    move-exception v30

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1e3

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v27    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v29    # "version":I
    :catchall_203
    move-exception v30

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v27, v28

    .end local v28    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_1e3

    .line 1462
    .end local v6    # "N":I
    .end local v29    # "version":I
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    .local v27, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :catch_20c
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    goto/16 :goto_170

    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catch_20f
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .local v16, "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_170

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    :catch_214
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_170

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    :catch_21a
    move-exception v14

    .restart local v14    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    move-object v10, v11

    .end local v11    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v16, v17

    .end local v17    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_170
.end method

.method private registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1831
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1832
    :try_start_3
    const-string/jumbo v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Registering transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1833
    const-string/jumbo v7, "::"

    .line 1832
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1833
    const-string/jumbo v7, " = "

    .line 1832
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    if-eqz p3, :cond_76

    .line 1835
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_88

    monitor-exit v5

    .line 1849
    :try_start_40
    invoke-interface {p3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 1850
    .local v3, "transportName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1851
    .local v2, "stateDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1853
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "_need_init_"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1854
    .local v1, "initSentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1855
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5f} :catch_8e

    .line 1856
    :try_start_5f
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1860
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1859
    const-wide/32 v8, 0xea60

    .line 1861
    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1860
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_8b

    :try_start_74
    monitor-exit v5
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_8e

    .line 1830
    .end local v1    # "initSentinel":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "transportName":Ljava/lang/String;
    :cond_75
    :goto_75
    return-void

    .line 1838
    :cond_76
    :try_start_76
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_88

    monitor-exit v5

    .line 1841
    return-void

    .line 1831
    :catchall_88
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1855
    .restart local v1    # "initSentinel":Ljava/io/File;
    .restart local v2    # "stateDir":Ljava/io/File;
    .restart local v3    # "transportName":Ljava/lang/String;
    :catchall_8b
    move-exception v4

    :try_start_8c
    monitor-exit v5

    throw v4
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8e} :catch_8e

    .line 1864
    .end local v1    # "initSentinel":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    .end local v3    # "transportName":Ljava/lang/String;
    :catch_8e
    move-exception v0

    .line 1866
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to register transport as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2217
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2225
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2226
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    :cond_e
    return-void
.end method

.method private routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 11
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3570
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3571
    .local v4, "raw":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3573
    .local v2, "in":Ljava/io/DataInputStream;
    const v6, 0x8000

    new-array v0, v6, [B

    .line 3575
    .local v0, "buffer":[B
    :cond_14
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "chunkTotal":I
    if-lez v1, :cond_2b

    .line 3576
    :goto_1a
    if-lez v1, :cond_14

    .line 3577
    array-length v6, v0

    if-le v1, v6, :cond_29

    array-length v5, v0

    .line 3578
    .local v5, "toRead":I
    :goto_20
    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 3579
    .local v3, "nRead":I
    invoke-virtual {p2, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 3580
    sub-int/2addr v1, v3

    goto :goto_1a

    .end local v3    # "nRead":I
    .end local v5    # "toRead":I
    :cond_29
    move v5, v1

    .line 3577
    goto :goto_20

    .line 3568
    :cond_2b
    return-void
.end method

.method private static sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V
    .registers 5
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "status"    # I

    .prologue
    .line 10597
    if-eqz p0, :cond_5

    .line 10599
    :try_start_2
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 10596
    :cond_5
    :goto_5
    return-void

    .line 10600
    :catch_6
    move-exception v0

    .line 10602
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: backupFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .registers 6
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 10585
    if-eqz p0, :cond_5

    .line 10587
    :try_start_2
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 10584
    :cond_5
    :goto_5
    return-void

    .line 10588
    :catch_6
    move-exception v0

    .line 10590
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: onResult"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 6
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "progress"    # Landroid/app/backup/BackupProgress;

    .prologue
    .line 10572
    if-eqz p0, :cond_5

    .line 10574
    :try_start_2
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 10571
    :cond_5
    :goto_5
    return-void

    .line 10575
    :catch_6
    move-exception v0

    .line 10577
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 12
    .param p0, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p1, "target"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7868
    if-nez p1, :cond_5

    .line 7869
    return v8

    .line 7877
    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e

    .line 7879
    return v9

    .line 7884
    :cond_e
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7887
    .local v0, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_15

    array-length v6, p0

    if-nez v6, :cond_1b

    .line 7888
    :cond_15
    if-eqz v0, :cond_1a

    array-length v6, v0

    if-nez v6, :cond_1b

    .line 7889
    :cond_1a
    return v9

    .line 7891
    :cond_1b
    if-eqz p0, :cond_1f

    if-nez v0, :cond_20

    .line 7892
    :cond_1f
    return v8

    .line 7898
    :cond_20
    array-length v5, p0

    .line 7899
    .local v5, "nStored":I
    array-length v4, v0

    .line 7901
    .local v4, "nDevice":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v5, :cond_3d

    .line 7902
    const/4 v3, 0x0

    .line 7903
    .local v3, "match":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_27
    if-ge v2, v4, :cond_34

    .line 7904
    aget-object v6, p0, v1

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 7905
    const/4 v3, 0x1

    .line 7909
    :cond_34
    if-nez v3, :cond_3a

    .line 7910
    return v8

    .line 7903
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 7901
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 7913
    .end local v2    # "j":I
    .end local v3    # "match":Z
    :cond_3d
    return v9
.end method

.method private static writeBackupEnableState(ZI)V
    .registers 12
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    .prologue
    .line 9633
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "backup"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9634
    .local v0, "base":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "backup_enabled"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9635
    .local v2, "enableFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "backup_enabled-stage"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9636
    .local v6, "stage":Ljava/io/File;
    const/4 v3, 0x0

    .line 9638
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_22} :catch_35
    .catchall {:try_start_1d .. :try_end_22} :catchall_6d

    .line 9639
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_33

    const/4 v7, 0x1

    :goto_25
    :try_start_25
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write(I)V

    .line 9640
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 9641
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2e} :catch_75
    .catchall {:try_start_25 .. :try_end_2e} :catchall_72

    .line 9655
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .line 9632
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    :goto_32
    return-void

    .line 9639
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :cond_33
    const/4 v7, 0x0

    goto :goto_25

    .line 9643
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_35
    move-exception v1

    .line 9646
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_36
    :try_start_36
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 9647
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 9646
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9649
    sget-object v7, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v7, v7, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 9651
    .local v5, "r":Landroid/content/ContentResolver;
    const-string/jumbo v7, "backup_enabled"

    const/4 v8, 0x0

    .line 9650
    invoke-static {v5, v7, v8, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 9652
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 9653
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_69
    .catchall {:try_start_36 .. :try_end_69} :catchall_6d

    .line 9655
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_32

    .line 9654
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "r":Landroid/content/ContentResolver;
    :catchall_6d
    move-exception v7

    .line 9655
    :goto_6e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9654
    throw v7

    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_72
    move-exception v7

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    goto :goto_6e

    .line 9643
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_75
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_36
.end method

.method private writeFullBackupScheduleAsync()V
    .registers 3

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1529
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1527
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 9203
    const/4 v1, 0x0

    .line 9205
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v3, :cond_11

    const-string/jumbo v3, "journal"

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    .line 9206
    :cond_11
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    const-string/jumbo v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_2e
    .catchall {:try_start_1 .. :try_end_1b} :catchall_5b

    .line 9207
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9208
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_67
    .catchall {:try_start_1b .. :try_end_25} :catchall_64

    .line 9213
    if-eqz v2, :cond_2a

    :try_start_27
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2c

    :cond_2a
    :goto_2a
    move-object v1, v2

    .line 9202
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    :cond_2b
    :goto_2b
    return-void

    .line 9213
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_2c
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_2a

    .line 9209
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_2e
    move-exception v0

    .line 9210
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2f
    :try_start_2f
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9211
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_5b

    .line 9213
    if-eqz v1, :cond_2b

    :try_start_55
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_2b

    :catch_59
    move-exception v0

    goto :goto_2b

    .line 9212
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5b
    move-exception v3

    .line 9213
    :goto_5c
    if-eqz v1, :cond_61

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 9212
    :cond_61
    :goto_61
    throw v3

    .line 9213
    :catch_62
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_61

    .line 9212
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_64
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    goto :goto_5c

    .line 9209
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_67
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2f
.end method


# virtual methods
.method synthetic -com_android_server_backup_BackupManagerService_lambda$1()V
    .registers 1

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->parseLeftoverJournals()V

    .line 0
    return-void
.end method

.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 9562
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "acknowledgeFullBackupOrRestore : token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 9563
    const-string/jumbo v7, " allow="

    .line 9562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9567
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BACKUP"

    const-string/jumbo v7, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9573
    .local v2, "oldId":J
    :try_start_34
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_82

    .line 9574
    :try_start_37
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullParams;

    .line 9575
    .local v1, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v1, :cond_87

    .line 9576
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 9577
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 9579
    if-eqz p2, :cond_72

    .line 9580
    instance-of v5, v1, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    if-eqz v5, :cond_6f

    .line 9581
    const/4 v4, 0x2

    .line 9584
    .local v4, "verb":I
    :goto_54
    iput-object p5, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 9585
    iput-object p3, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    .line 9587
    iput-object p4, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 9590
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9591
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9592
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6a
    .catchall {:try_start_37 .. :try_end_6a} :catchall_7f

    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "verb":I
    :goto_6a
    :try_start_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_82

    .line 9603
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9561
    return-void

    .line 9582
    :cond_6f
    const/16 v4, 0xa

    .restart local v4    # "verb":I
    goto :goto_54

    .line 9594
    .end local v4    # "verb":I
    :cond_72
    :try_start_72
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "User rejected full backup/restore operation"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9596
    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_7f

    goto :goto_6a

    .line 9573
    .end local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_7f
    move-exception v5

    :try_start_80
    monitor-exit v6

    throw v5
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_82

    .line 9602
    :catchall_82
    move-exception v5

    .line 9603
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9602
    throw v5

    .line 9599
    .restart local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :cond_87
    :try_start_87
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_7f

    goto :goto_6a
.end method

.method addBackupTrace(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 1059
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 1056
    return-void

    .line 1058
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 6
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2155
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v1

    .line 2156
    .local v1, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_13

    .line 2158
    const/4 v2, 0x0

    array-length v3, p1

    :goto_9
    if-ge v2, v3, :cond_16

    aget-object v0, p1, v2

    .line 2159
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 2158
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2163
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_13
    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 2153
    :cond_16
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .prologue
    .line 9900
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9901
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_40

    .line 9902
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9903
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 9904
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 9905
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 9910
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_39
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_66

    monitor-exit v2

    .line 9899
    return-void

    .line 9907
    :cond_40
    :try_start_40
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9908
    const-string/jumbo v4, " claiming agent connected"

    .line 9907
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_40 .. :try_end_65} :catchall_66

    goto :goto_39

    .line 9900
    :catchall_66
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9919
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9920
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_18

    .line 9921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 9922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 9927
    :goto_11
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3e

    monitor-exit v1

    .line 9917
    return-void

    .line 9924
    :cond_18
    :try_start_18
    const-string/jumbo v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9925
    const-string/jumbo v3, " claiming agent disconnected"

    .line 9924
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3e

    goto :goto_11

    .line 9919
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2233
    const/16 v4, 0x40

    .line 2234
    .local v4, "flags":I
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 2235
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 2236
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_e
    if-ltz v1, :cond_47

    .line 2237
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 2239
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_16
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2240
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_24

    .line 2241
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_2a

    .line 2243
    :cond_24
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2236
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2242
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4000000

    and-int/2addr v7, v8

    if-nez v7, :cond_24

    .line 2249
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2250
    const/16 v9, 0x400

    .line 2249
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2251
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_41} :catch_42

    goto :goto_27

    .line 2253
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_42
    move-exception v3

    .line 2254
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_27

    .line 2257
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_47
    return-object v5
.end method

.method public backupNow()V
    .registers 5

    .prologue
    .line 9306
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    const-string/jumbo v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9308
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 9309
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Not running backup while in battery save mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9310
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 9305
    :goto_21
    return-void

    .line 9312
    :cond_22
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9313
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9316
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_33
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2e .. :try_end_33} :catch_3a
    .catchall {:try_start_2e .. :try_end_33} :catchall_45

    .line 9323
    :goto_33
    :try_start_33
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_45

    monitor-exit v2

    goto :goto_21

    .line 9317
    :catch_3a
    move-exception v0

    .line 9319
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_3b
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v3, "run-backup intent cancelled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_45

    goto :goto_33

    .line 9313
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_45
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 32
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .prologue
    .line 5038
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 5039
    .local v22, "now":J
    const/4 v15, 0x0

    .line 5040
    .local v15, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-wide/32 v18, 0x5265c00

    .line 5042
    .local v18, "latency":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_33

    .line 5055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 5056
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v6, 0xdbba00

    invoke-static {v2, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    .line 5058
    const/4 v2, 0x0

    return v2

    .line 5050
    :cond_33
    const/4 v2, 0x0

    return v2

    .line 5062
    :cond_35
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Beginning scheduled full backup operation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 5067
    :try_start_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v2, :cond_57

    .line 5068
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup triggered but one already/still running!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_1cd

    .line 5069
    const/4 v2, 0x0

    monitor-exit v27

    return v2

    .line 5075
    :cond_57
    const/16 v25, 0x1

    .line 5081
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :goto_59
    :try_start_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9f

    .line 5084
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup queue empty; doing nothing"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    const/16 v25, 0x0

    .line 5164
    :cond_6e
    :goto_6e
    if-nez v25, :cond_190

    .line 5166
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    move-wide/from16 v12, v18

    .line 5169
    .local v12, "deferTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12, v13}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_9c
    .catchall {:try_start_59 .. :try_end_9c} :catchall_1cd

    .line 5174
    const/4 v2, 0x0

    monitor-exit v27

    return v2

    .line 5090
    .end local v12    # "deferTime":J
    :cond_9f
    const/16 v16, 0x0

    .line 5092
    .local v16, "headBusy":Z
    :try_start_a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 5096
    const/16 v25, 0x0

    .line 5100
    .local v25, "runBackup":Z
    const-wide/32 v18, 0xdbba00

    .line 5103
    .end local v25    # "runBackup":Z
    :cond_b8
    if-eqz v25, :cond_fa

    .line 5104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object v15, v0

    .line 5105
    .local v15, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J
    :try_end_c9
    .catchall {:try_start_a1 .. :try_end_c9} :catchall_1cd

    sub-long v28, v22, v2

    .line 5106
    .local v28, "timeSinceRun":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v28, v2

    if-ltz v2, :cond_dc

    const/16 v25, 0x1

    .line 5107
    .local v25, "runBackup":Z
    :goto_d4
    if-nez v25, :cond_df

    .line 5113
    const-wide/32 v2, 0x5265c00

    sub-long v18, v2, v28

    .line 5114
    goto :goto_6e

    .line 5106
    .end local v25    # "runBackup":Z
    :cond_dc
    const/16 v25, 0x0

    goto :goto_d4

    .line 5118
    .restart local v25    # "runBackup":Z
    :cond_df
    :try_start_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 5119
    .local v11, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v11}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 5127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5128
    const/16 v16, 0x1

    .line 5162
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v16    # "headBusy":Z
    .end local v25    # "runBackup":Z
    .end local v28    # "timeSinceRun":J
    :cond_fa
    :goto_fa
    if-eqz v16, :cond_6e

    goto/16 :goto_59

    .line 5132
    .restart local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .restart local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .restart local v16    # "headBusy":Z
    .restart local v25    # "runBackup":Z
    .restart local v28    # "timeSinceRun":J
    :cond_fe
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v24, v0

    .line 5133
    .local v24, "privFlags":I
    move/from16 v0, v24

    and-int/lit16 v2, v0, 0x1000

    if-nez v2, :cond_189

    .line 5134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v16

    .line 5136
    .local v16, "headBusy":Z
    :goto_116
    if-eqz v16, :cond_fa

    .line 5137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5138
    const-wide/32 v6, 0x36ee80

    .line 5137
    add-long/2addr v2, v6

    .line 5139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    const v6, 0x6ddd00

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v6, v4

    .line 5137
    add-long v20, v2, v6

    .line 5141
    .local v20, "nextEligible":J
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5142
    .local v26, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Full backup time but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5143
    const-string/jumbo v4, " is busy; deferring to "

    .line 5142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5144
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v20

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 5142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    iget-object v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    .line 5150
    const-wide/32 v6, 0x5265c00

    sub-long v6, v20, v6

    .line 5149
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_178
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_df .. :try_end_178} :catch_179
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_178} :catch_1d0
    .catchall {:try_start_df .. :try_end_178} :catchall_1cd

    goto :goto_fa

    .line 5152
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "headBusy":Z
    .end local v20    # "nextEligible":J
    .end local v24    # "privFlags":I
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_179
    move-exception v17

    .line 5157
    .local v17, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_17a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_18c

    const/16 v25, 0x1

    .local v25, "runBackup":Z
    goto/16 :goto_fa

    .line 5133
    .end local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .local v16, "headBusy":Z
    .restart local v24    # "privFlags":I
    .local v25, "runBackup":Z
    :cond_189
    const/16 v16, 0x0

    goto :goto_116

    .line 5157
    .end local v11    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "headBusy":Z
    .end local v24    # "privFlags":I
    .restart local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_18c
    const/16 v25, 0x0

    .local v25, "runBackup":Z
    goto/16 :goto_fa

    .line 5178
    .end local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v17    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v25    # "runBackup":Z
    .end local v28    # "timeSinceRun":J
    :cond_190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5179
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5180
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    .line 5181
    .local v5, "pkg":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 5182
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    .line 5181
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 5184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5185
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1ca
    .catchall {:try_start_17a .. :try_end_1ca} :catchall_1cd

    monitor-exit v27

    .line 5188
    const/4 v2, 0x1

    return v2

    .line 5066
    .end local v5    # "pkg":[Ljava/lang/String;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1cd
    move-exception v2

    monitor-exit v27

    throw v2

    .line 5158
    .restart local v15    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .local v25, "runBackup":Z
    .restart local v28    # "timeSinceRun":J
    :catch_1d0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_fa
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 10001
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10002
    const-string/jumbo v5, " transport="

    .line 10001
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10004
    const/4 v1, 0x1

    .line 10005
    .local v1, "needPermission":Z
    if-nez p2, :cond_40

    .line 10006
    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 10008
    if-eqz p1, :cond_40

    .line 10009
    const/4 v0, 0x0

    .line 10011
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_34} :catch_5d

    move-result-object v0

    .line 10017
    .local v0, "app":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_40

    .line 10021
    const/4 v1, 0x0

    .line 10026
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_40
    if-eqz v1, :cond_99

    .line 10027
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 10028
    const-string/jumbo v5, "beginRestoreSession"

    .line 10027
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10033
    :goto_4d
    monitor-enter p0

    .line 10034
    :try_start_4e
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_a3

    .line 10035
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_c7

    monitor-exit p0

    .line 10036
    return-object v6

    .line 10012
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :catch_5d
    move-exception v2

    .line 10013
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10014
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 10030
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_99
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 10038
    :cond_a3
    :try_start_a3
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-eqz v3, :cond_b2

    .line 10039
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Restore session requested but currently running backups"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_c7

    monitor-exit p0

    .line 10040
    return-object v6

    .line 10042
    :cond_b2
    :try_start_b2
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 10043
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_c7

    monitor-exit p0

    .line 10045
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    return-object v3

    .line 10033
    :catchall_c7
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 15
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    .line 2383
    const/4 v0, 0x0

    .line 2384
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2385
    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 2386
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_bb

    .line 2388
    :try_start_a
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2389
    const/4 v8, 0x0

    .line 2388
    invoke-interface {v3, v7, p2, v8}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 2390
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long v4, v8, v10

    .line 2395
    .local v4, "timeoutMark":J
    :goto_37
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_7b

    .line 2396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_42} :catch_71
    .catchall {:try_start_a .. :try_end_42} :catchall_bb

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gez v3, :cond_7b

    .line 2398
    :try_start_47
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4e} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4e} :catch_71
    .catchall {:try_start_47 .. :try_end_4e} :catchall_bb

    goto :goto_37

    .line 2399
    :catch_4f
    move-exception v2

    .line 2401
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_50
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    .line 2403
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_70} :catch_71
    .catchall {:try_start_50 .. :try_end_70} :catchall_bb

    goto :goto_37

    .line 2415
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "timeoutMark":J
    :catch_71
    move-exception v1

    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :cond_72
    :goto_72
    monitor-exit v6

    .line 2419
    if-nez v0, :cond_7a

    .line 2421
    :try_start_75
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7a} :catch_be

    .line 2426
    :cond_7a
    :goto_7a
    return-object v0

    .line 2408
    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    .restart local v4    # "timeoutMark":J
    :cond_7b
    :try_start_7b
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_9c

    .line 2409
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 2412
    :cond_9c
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "got agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_ba} :catch_71
    .catchall {:try_start_7b .. :try_end_ba} :catchall_bb

    .local v0, "agent":Landroid/app/IBackupAgent;
    goto :goto_72

    .line 2384
    .end local v4    # "timeoutMark":J
    .local v0, "agent":Landroid/app/IBackupAgent;
    :catchall_bb
    move-exception v3

    monitor-exit v6

    throw v3

    .line 2422
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :catch_be
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_7a
.end method

.method bindTransport(Landroid/content/pm/ServiceInfo;)Z
    .registers 8
    .param p1, "transport"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 2120
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    .local v2, "svcName":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 2122
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Proposed transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not whitelisted; ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    const/4 v3, 0x0

    return v3

    .line 2129
    :cond_34
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2130
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2133
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 2134
    :try_start_41
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 2135
    .local v0, "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-nez v0, :cond_64

    .line 2136
    new-instance v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$TransportConnection;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/pm/ServiceInfo;)V

    .line 2137
    .restart local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_6a

    :goto_59
    monitor-exit v4

    .line 2146
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 2148
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2147
    const/4 v5, 0x1

    .line 2146
    invoke-virtual {v3, v1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    return v3

    .line 2142
    :cond_64
    :try_start_64
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6a

    goto :goto_59

    .line 2133
    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_6a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    .registers 10
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    .line 2088
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2089
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2088
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2091
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 2093
    .local v1, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2b

    .line 2094
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 2095
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2b

    .line 2096
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2097
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService;->tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 2095
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2087
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    :cond_2b
    return-void
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2433
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2434
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_10

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_33

    .line 2437
    return-void

    .line 2439
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_10
    move-exception v0

    .line 2440
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Tried to clear data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    return-void

    .line 2444
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_33
    new-instance v4, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;

    invoke-direct {v4, p0}, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 2446
    .local v4, "observer":Lcom/android/server/backup/BackupManagerService$ClearDataObserver;
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2447
    const/4 v5, 0x1

    :try_start_3c
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_65

    .line 2449
    :try_start_3e
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v9, 0x0

    invoke-interface {v5, p1, v4, v9}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_44} :catch_6a
    .catchall {:try_start_3e .. :try_end_44} :catchall_65

    .line 2455
    :goto_44
    :try_start_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    add-long v6, v10, v12

    .line 2456
    .local v6, "timeoutMark":J
    :goto_4c
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_65

    move-result-wide v10

    cmp-long v5, v10, v6

    if-gez v5, :cond_68

    .line 2458
    :try_start_58
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v10, 0x1388

    invoke-virtual {v5, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5f} :catch_60
    .catchall {:try_start_58 .. :try_end_5f} :catchall_65

    goto :goto_4c

    .line 2459
    :catch_60
    move-exception v2

    .line 2461
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    :try_start_62
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_65

    goto :goto_4c

    .line 2446
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "timeoutMark":J
    :catchall_65
    move-exception v5

    monitor-exit v8

    throw v5

    .restart local v6    # "timeoutMark":J
    :cond_68
    monitor-exit v8

    .line 2430
    return-void

    .line 2450
    .end local v6    # "timeoutMark":J
    :catch_6a
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_44
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9250
    const-string/jumbo v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "clearBackupData() of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9253
    :try_start_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_34} :catch_9e

    move-result-object v8

    .line 9262
    .local v8, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 9263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 9262
    invoke-virtual/range {v14 .. v17}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    .line 9263
    const/4 v15, -0x1

    .line 9262
    if-ne v14, v15, :cond_c3

    .line 9264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 9280
    .local v5, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_59
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_112

    .line 9283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9284
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v15

    .line 9285
    :try_start_6f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v13

    .line 9286
    .local v13, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v13, :cond_e5

    .line 9288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 9289
    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 9288
    const/16 v17, 0xc

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 9290
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v16, 0x36ee80

    move-wide/from16 v0, v16

    invoke-virtual {v14, v9, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_9c
    .catchall {:try_start_6f .. :try_end_9c} :catchall_113

    monitor-exit v15

    .line 9291
    return-void

    .line 9254
    .end local v5    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_9e
    move-exception v6

    .line 9255
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No such package \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' - not clearing backup data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9256
    return-void

    .line 9269
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :cond_c3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 9270
    .restart local v5    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 9271
    .local v4, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d1
    if-ge v7, v4, :cond_59

    .line 9272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    .line 9273
    .local v12, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v12, :cond_e2

    .line 9274
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 9271
    :cond_e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_d1

    .line 9293
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v12    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_e5
    :try_start_e5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 9294
    .local v10, "oldId":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 9296
    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearParams;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v8}, Lcom/android/server/backup/BackupManagerService$ClearParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    .line 9295
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 9297
    .restart local v9    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v14, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9298
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_111
    .catchall {:try_start_e5 .. :try_end_111} :catchall_113

    monitor-exit v15

    .line 9249
    .end local v9    # "msg":Landroid/os/Message;
    .end local v10    # "oldId":J
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_112
    return-void

    .line 9284
    :catchall_113
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method clearBackupTrace()V
    .registers 3

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 1067
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 1064
    return-void

    .line 1066
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .registers 4
    .param p1, "currentSession"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 10049
    monitor-enter p0

    .line 10050
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_10

    .line 10051
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    :goto_e
    monitor-exit p0

    .line 10048
    return-void

    .line 10053
    :cond_10
    :try_start_10
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 10055
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_24

    goto :goto_e

    .line 10049
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9220
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 9221
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_7

    .line 9231
    return-void

    .line 9234
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 9235
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_3e

    .line 9236
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9237
    const-string/jumbo v4, " uid="

    .line 9236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 9237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 9236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9238
    return-void

    .line 9241
    :cond_3e
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 9219
    return-void
.end method

.method dequeueFullBackupLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4960
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4961
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_22

    .line 4962
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 4963
    .local v1, "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4964
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4961
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 4959
    .end local v1    # "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_22
    return-void
.end method

.method deviceIsEncrypted()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3991
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v3}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v3

    if-eq v3, v1, :cond_15

    .line 3993
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v3}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_17

    move-result v3

    if-eq v3, v1, :cond_13

    .line 3991
    :goto_12
    return v1

    :cond_13
    move v1, v2

    .line 3993
    goto :goto_12

    :cond_15
    move v1, v2

    .line 3991
    goto :goto_12

    .line 3995
    :catch_17
    move-exception v0

    .line 3998
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to communicate with mount service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    return v1
.end method

.method deviceIsProvisioned()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 9329
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9330
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 10443
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    const-string/jumbo v5, "BackupManagerService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 10447
    .local v2, "identityToken":J
    if-eqz p3, :cond_49

    .line 10448
    const/4 v1, 0x0

    :try_start_12
    array-length v4, p3

    :goto_13
    if-ge v1, v4, :cond_49

    aget-object v0, p3, v1

    .line 10449
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-h"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 10450
    const-string/jumbo v1, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10451
    const-string/jumbo v1, "  -h       : this help text"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10452
    const-string/jumbo v1, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_50

    .line 10462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10453
    return-void

    .line 10454
    :cond_36
    :try_start_36
    const-string/jumbo v5, "agents"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 10455
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_50

    .line 10462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10456
    return-void

    .line 10448
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 10460
    .end local v0    # "arg":Ljava/lang/String;
    :cond_49
    :try_start_49
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_50

    .line 10462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10442
    return-void

    .line 10461
    :catchall_50
    move-exception v1

    .line 10462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10461
    throw v1
.end method

.method endFullBackup()V
    .registers 4

    .prologue
    .line 5194
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5195
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v0, :cond_16

    .line 5197
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Telling running backup to stop"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5199
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->setRunning(Z)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit v1

    .line 5193
    return-void

    .line 5194
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method enqueueFullBackup(Ljava/lang/String;J)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .prologue
    .line 4973
    new-instance v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    .line 4974
    .local v1, "newEntry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4978
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 4984
    const/4 v2, -0x1

    .line 4985
    .local v2, "which":I
    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-lez v3, :cond_31

    .line 4986
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1a
    if-ltz v2, :cond_31

    .line 4987
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 4988
    .local v0, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v6, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v3, v6, p2

    if-gtz v3, :cond_3e

    .line 4989
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4994
    .end local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_31
    if-gez v2, :cond_39

    .line 4996
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_41

    :cond_39
    monitor-exit v4

    .line 4999
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    .line 4972
    return-void

    .line 4986
    .restart local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 4974
    .end local v0    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v2    # "which":I
    :catchall_41
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .registers 28
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 9342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "fullBackup"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9344
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 9346
    .local v13, "callingUserHandle":I
    if-eqz v13, :cond_1c

    .line 9347
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Backup supported only for the device owner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9351
    :cond_1c
    if-nez p6, :cond_30

    .line 9352
    if-nez p4, :cond_30

    .line 9356
    if-eqz p9, :cond_27

    move-object/from16 v0, p9

    array-length v3, v0

    if-nez v3, :cond_30

    .line 9357
    :cond_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 9358
    const-string/jumbo v4, "Backup requested but neither shared nor any apps named"

    .line 9357
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9363
    :cond_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 9366
    .local v16, "oldId":J
    :try_start_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_55

    .line 9367
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup not supported before setup"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_12d

    .line 9404
    :try_start_43
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_53

    .line 9408
    :goto_46
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9409
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9368
    return-void

    .line 9405
    :catch_53
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    goto :goto_46

    .line 9371
    .end local v14    # "e":Ljava/io/IOException;
    :cond_55
    :try_start_55
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requesting full backup: apks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9372
    const-string/jumbo v5, " obb="

    .line 9371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9372
    const-string/jumbo v5, " shared="

    .line 9371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9372
    const-string/jumbo v5, " all="

    .line 9371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9373
    const-string/jumbo v5, " system="

    .line 9371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9373
    const-string/jumbo v5, " pkgs="

    .line 9371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9374
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Beginning full backup..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9376
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    .line 9378
    .local v2, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v15

    .line 9379
    .local v15, "token":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_dd
    .catchall {:try_start_55 .. :try_end_dd} :catchall_12d

    .line 9380
    :try_start_dd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_12a

    :try_start_e4
    monitor-exit v4

    .line 9384
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9385
    const-string/jumbo v3, "fullback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_140

    .line 9386
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Unable to launch full backup confirmation"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->delete(I)V
    :try_end_11a
    .catchall {:try_start_e4 .. :try_end_11a} :catchall_12d

    .line 9404
    :try_start_11a
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_13e

    .line 9408
    :goto_11d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9409
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9388
    return-void

    .line 9379
    :catchall_12a
    move-exception v3

    :try_start_12b
    monitor-exit v4

    throw v3
    :try_end_12d
    .catchall {:try_start_12b .. :try_end_12d} :catchall_12d

    .line 9402
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v15    # "token":I
    :catchall_12d
    move-exception v3

    .line 9404
    :try_start_12e
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_172

    .line 9408
    :goto_131
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9409
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Full backup processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9402
    throw v3

    .line 9405
    .restart local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .restart local v15    # "token":I
    :catch_13e
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_11d

    .line 9392
    .end local v14    # "e":Ljava/io/IOException;
    :cond_140
    :try_start_140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9393
    const/4 v6, 0x0

    .line 9394
    const/4 v7, 0x0

    .line 9392
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 9397
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V

    .line 9400
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Waiting for full backup completion..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9401
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_160
    .catchall {:try_start_140 .. :try_end_160} :catchall_12d

    .line 9404
    :try_start_160
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_170

    .line 9408
    :goto_163
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9409
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9341
    return-void

    .line 9405
    :catch_170
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_163

    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "token":I
    :catch_172
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_131
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 9463
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BACKUP"

    const-string/jumbo v8, "fullRestore"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9465
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 9467
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_1a

    .line 9468
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Restore supported only for the device owner"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 9471
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9476
    .local v2, "oldId":J
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v6

    if-nez v6, :cond_59

    .line 9477
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore not permitted before setup"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_b8

    .line 9510
    :try_start_2d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_3d

    .line 9514
    :goto_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9515
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9478
    return-void

    .line 9511
    :catch_3d
    move-exception v1

    .line 9512
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 9481
    .end local v1    # "e":Ljava/io/IOException;
    :cond_59
    :try_start_59
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Beginning full restore..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9483
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    invoke-direct {v4, p0, p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 9484
    .local v4, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v5

    .line 9485
    .local v5, "token":I
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_b8

    .line 9486
    :try_start_6e
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_b5

    :try_start_73
    monitor-exit v7

    .line 9490
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting restore confirmation UI, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9491
    const-string/jumbo v6, "fullrest"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e5

    .line 9492
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Unable to launch full restore confirmation"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9493
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_a5
    .catchall {:try_start_73 .. :try_end_a5} :catchall_b8

    .line 9510
    :try_start_a5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_c9

    .line 9514
    :goto_a8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9515
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9494
    return-void

    .line 9485
    :catchall_b5
    move-exception v6

    :try_start_b6
    monitor-exit v7

    throw v6
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_b8

    .line 9508
    .end local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catchall_b8
    move-exception v6

    .line 9510
    :try_start_b9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_12b

    .line 9514
    :goto_bc
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9515
    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v8, "Full restore processing complete."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9508
    throw v6

    .line 9511
    .restart local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .restart local v5    # "token":I
    :catch_c9
    move-exception v1

    .line 9512
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 9498
    .end local v1    # "e":Ljava/io/IOException;
    :cond_e5
    :try_start_e5
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 9499
    const/4 v7, 0x0

    .line 9500
    const/4 v10, 0x0

    .line 9498
    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 9503
    invoke-virtual {p0, v5, v4}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V

    .line 9506
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Waiting for full restore completion..."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9507
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_ff
    .catchall {:try_start_e5 .. :try_end_ff} :catchall_b8

    .line 9510
    :try_start_ff
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_10f

    .line 9514
    :goto_102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9515
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9462
    return-void

    .line 9511
    :catch_10f
    move-exception v1

    .line 9512
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    .line 9511
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    .end local v5    # "token":I
    :catch_12b
    move-exception v1

    .line 9512
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error trying to close fd after full restore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 20
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .prologue
    .line 9414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9415
    const-string/jumbo v5, "fullTransportBackup"

    .line 9414
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9417
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 9419
    .local v11, "callingUserHandle":I
    if-eqz v11, :cond_1c

    .line 9420
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore supported only for the device owner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9423
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 9424
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9458
    :goto_37
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Done with full transport backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9413
    return-void

    .line 9427
    :cond_41
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "fullTransportBackup()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 9432
    .local v16, "oldId":J
    :try_start_4e
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9433
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    .line 9434
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 9433
    invoke-direct/range {v2 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Z)V

    .line 9436
    .local v2, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9437
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "full-transport-master"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_74
    .catchall {:try_start_4e .. :try_end_74} :catchall_91

    .line 9440
    :goto_74
    :try_start_74
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_77} :catch_8b
    .catchall {:try_start_74 .. :try_end_77} :catchall_91

    .line 9448
    :try_start_77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 9449
    .local v14, "now":J
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    :goto_7f
    if-ge v3, v4, :cond_8d

    aget-object v13, p1, v3

    .line 9450
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_88
    .catchall {:try_start_77 .. :try_end_88} :catchall_91

    .line 9449
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 9442
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "now":J
    :catch_8b
    move-exception v12

    .local v12, "e":Ljava/lang/InterruptedException;
    goto :goto_74

    .line 9453
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v14    # "now":J
    :cond_8d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    .line 9452
    .end local v2    # "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v14    # "now":J
    :catchall_91
    move-exception v3

    .line 9453
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9452
    throw v3
.end method

.method generateToken()I
    .registers 4

    .prologue
    .line 686
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 687
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result v0

    .local v0, "token":I
    monitor-exit v2

    .line 689
    if-ltz v0, :cond_0

    .line 690
    return v0

    .line 686
    .end local v0    # "token":I
    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2479
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    .line 2480
    const-string/jumbo v4, "getAvailableRestoreToken"

    .line 2479
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 2483
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2484
    :try_start_10
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2488
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v3

    .line 2492
    return-wide v0

    .line 2483
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 9804
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9805
    const-string/jumbo v5, "getConfigurationIntent"

    .line 9804
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9807
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9808
    :try_start_f
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_40

    .line 9809
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_3e

    .line 9811
    :try_start_19
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f
    .catchall {:try_start_19 .. :try_end_1c} :catchall_40

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    monitor-exit v4

    .line 9814
    return-object v1

    .line 9815
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1f
    move-exception v0

    .line 9817
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get configuration intent from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_40

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    monitor-exit v4

    .line 9822
    return-object v7

    .line 9807
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_40
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9745
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    .line 9746
    const-string/jumbo v2, "getCurrentTransport"

    .line 9745
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9748
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 9853
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9854
    const-string/jumbo v5, "getDataManagementIntent"

    .line 9853
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9856
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9857
    :try_start_f
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_40

    .line 9858
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_3e

    .line 9860
    :try_start_19
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f
    .catchall {:try_start_19 .. :try_end_1c} :catchall_40

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    monitor-exit v4

    .line 9863
    return-object v1

    .line 9864
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1f
    move-exception v0

    .line 9866
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get management intent from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_40

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    monitor-exit v4

    .line 9871
    return-object v7

    .line 9856
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_40
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 9877
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9878
    const-string/jumbo v5, "getDataManagementLabel"

    .line 9877
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9880
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9881
    :try_start_f
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_40

    .line 9882
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_3e

    .line 9884
    :try_start_19
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementLabel()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f
    .catchall {:try_start_19 .. :try_end_1c} :catchall_40

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    monitor-exit v4

    .line 9886
    return-object v1

    .line 9887
    .end local v1    # "text":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 9889
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get management label from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_40

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    monitor-exit v4

    .line 9894
    return-object v7

    .line 9880
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_40
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 9831
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9832
    const-string/jumbo v5, "getDestinationString"

    .line 9831
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9834
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9835
    :try_start_f
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/backup/IBackupTransport;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_40

    .line 9836
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_3e

    .line 9838
    :try_start_19
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f
    .catchall {:try_start_19 .. :try_end_1c} :catchall_40

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    monitor-exit v4

    .line 9840
    return-object v1

    .line 9841
    .end local v1    # "text":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 9843
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get string from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_40

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    monitor-exit v4

    .line 9848
    return-object v7

    .line 9834
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_40
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 9772
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 9773
    .local v1, "whitelist":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_23

    .line 9774
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 9773
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 9776
    :cond_23
    return-object v1
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2613
    const/4 v1, 0x0

    .line 2614
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2615
    :try_start_4
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v1, v0

    .line 2620
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-eqz v1, :cond_2d

    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 2621
    .local v2, "state":I
    :goto_12
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    .line 2626
    const/4 v1, 0x0

    .line 2627
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2633
    .end local v1    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_53

    monitor-exit v4

    .line 2637
    if-eqz v1, :cond_2c

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_2c

    .line 2641
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-interface {v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    .line 2611
    :cond_2c
    return-void

    .line 2620
    .end local v2    # "state":I
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_2d
    const/4 v2, -0x1

    .restart local v2    # "state":I
    goto :goto_12

    .line 2628
    :cond_2f
    if-nez v2, :cond_1b

    .line 2629
    :try_start_31
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TIMEOUT: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_52
    .catchall {:try_start_31 .. :try_end_52} :catchall_53

    goto :goto_1b

    .line 2614
    .end local v1    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    .end local v2    # "state":I
    :catchall_53
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasBackupPassword()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1723
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    .line 1724
    const-string/jumbo v3, "hasBackupPassword"

    .line 1723
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 10091
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    .line 10092
    const-string/jumbo v6, "isAppEligibleForBackup"

    .line 10091
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    :try_start_c
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 10095
    const/16 v5, 0x40

    .line 10094
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 10096
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 10097
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    .line 10096
    if-eqz v4, :cond_25

    .line 10098
    :cond_24
    return v7

    .line 10100
    :cond_25
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_2a} :catch_57

    move-result-object v3

    .line 10101
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v3, :cond_55

    .line 10104
    :try_start_2d
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 10103
    invoke-interface {v3, v2, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_34} :catch_57

    move-result v4

    return v4

    .line 10105
    :catch_36
    move-exception v1

    .line 10106
    .local v1, "e":Ljava/lang/Exception;
    :try_start_37
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to ask about eligibility: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_55} :catch_57

    .line 10110
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_55
    const/4 v4, 0x1

    return v4

    .line 10111
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_57
    move-exception v0

    .line 10112
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7
.end method

.method public isBackupEnabled()Z
    .registers 4

    .prologue
    .line 9739
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9740
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 9753
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    const-string/jumbo v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9755
    const/4 v3, 0x0

    .line 9756
    .local v3, "list":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9757
    .local v2, "known":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9758
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 9759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 9763
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_46

    .line 9764
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 9765
    .local v3, "list":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9767
    .end local v3    # "list":[Ljava/lang/String;
    :cond_46
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2264
    const-string/jumbo v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    .line 2266
    :cond_a
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    .line 2267
    :try_start_d
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_6d

    move-result v3

    if-nez v3, :cond_17

    monitor-exit v4

    return-void

    .line 2269
    :cond_17
    const/4 v1, 0x0

    .line 2271
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_18
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    const-string/jumbo v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_36
    .catchall {:try_start_18 .. :try_end_22} :catchall_66

    .line 2272
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_22
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2273
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_75
    .catchall {:try_start_22 .. :try_end_2c} :catchall_72

    .line 2277
    if-eqz v2, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_34
    .catchall {:try_start_2e .. :try_end_31} :catchall_6d

    :cond_31
    :goto_31
    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    :cond_32
    :goto_32
    monitor-exit v4

    .line 2263
    return-void

    .line 2277
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_34
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_31

    .line 2274
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catch_36
    move-exception v0

    .line 2275
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_37
    :try_start_37
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_66

    .line 2277
    if-eqz v1, :cond_32

    :try_start_60
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_6d

    goto :goto_32

    :catch_64
    move-exception v0

    goto :goto_32

    .line 2276
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_66
    move-exception v3

    .line 2277
    :goto_67
    if-eqz v1, :cond_6c

    :try_start_69
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_70
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    .line 2276
    :cond_6c
    :goto_6c
    :try_start_6c
    throw v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 2266
    :catchall_6d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2277
    :catch_70
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_6c

    .line 2276
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_72
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    goto :goto_67

    .line 2274
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_75
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_37
.end method

.method public opComplete(IJ)V
    .registers 12
    .param p1, "token"    # I
    .param p2, "result"    # J

    .prologue
    .line 10066
    const/4 v3, 0x0

    .line 10067
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 10068
    :try_start_4
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v3, v0

    .line 10069
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-eqz v3, :cond_1b

    .line 10070
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3f

    .line 10073
    const/4 v3, 0x0

    .line 10074
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 10079
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_1b
    :goto_1b
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_43

    monitor-exit v5

    .line 10083
    if-eqz v3, :cond_3e

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    if-eqz v4, :cond_3e

    .line 10084
    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 10085
    .local v1, "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 10086
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 10062
    .end local v1    # "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;Ljava/lang/Long;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3e
    return-void

    .line 10076
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_3f
    const/4 v4, 0x1

    :try_start_40
    iput v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_43

    goto :goto_1b

    .line 10067
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :catchall_43
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "candidatePw"    # Ljava/lang/String;
    .param p3, "rounds"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1624
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 1626
    if-eqz p2, :cond_11

    const-string/jumbo v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1627
    :cond_11
    return v3

    .line 1631
    :cond_12
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    .line 1632
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, "currentPwHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1635
    return v3

    .line 1639
    .end local v0    # "currentPwHash":Ljava/lang/String;
    :cond_29
    return v2
.end method

.method prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .registers 11
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 2570
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2571
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/backup/BackupManagerService$Operation;-><init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2573
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2574
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v2

    .line 2567
    return-void

    .line 2570
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .registers 15
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xb

    const/4 v7, 0x0

    .line 1747
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1750
    :try_start_8
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 1751
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v4, :cond_64

    .line 1752
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 1753
    .local v5, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1754
    .local v3, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "_need_init_"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1756
    .local v1, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_31

    .line 1760
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_3a

    .line 1762
    :try_start_28
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_3a

    .line 1771
    :goto_30
    return-void

    .line 1768
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1769
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_30

    .line 1773
    .end local v1    # "initPendingFile":Ljava/io/File;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "transportDirName":Ljava/lang/String;
    :catch_3a
    move-exception v0

    .line 1775
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed to report name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1776
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 1775
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_64
    if-eqz p1, :cond_7c

    .line 1783
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1784
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 1785
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 1786
    if-eqz p1, :cond_7d

    const/4 v6, 0x1

    .line 1785
    :goto_72
    invoke-virtual {v9, v10, v6, v7, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1789
    const-wide/32 v10, 0x36ee80

    .line 1784
    invoke-virtual {v8, v6, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1744
    :cond_7c
    return-void

    :cond_7d
    move v6, v7

    .line 1786
    goto :goto_72

    .line 1763
    .restart local v1    # "initPendingFile":Ljava/io/File;
    .restart local v3    # "stateDir":Ljava/io/File;
    .restart local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v5    # "transportDirName":Ljava/lang/String;
    :catch_7f
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_30
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2284
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing backed-up knowledge of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v7

    .line 2291
    :try_start_1d
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_bb

    .line 2292
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 2294
    .local v1, "known":Ljava/io/RandomAccessFile;
    :try_start_28
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rws"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_b0
    .catchall {:try_start_28 .. :try_end_30} :catchall_b4

    .line 2295
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_30
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2296
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2297
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_4a} :catch_4b
    .catchall {:try_start_30 .. :try_end_4a} :catchall_c0

    goto :goto_3b

    .line 2305
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_4b
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 2310
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    :goto_4d
    :try_start_4d
    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2311
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2312
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2313
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_b4

    .line 2315
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_b2
    .catchall {:try_start_78 .. :try_end_7b} :catchall_bb

    .end local v0    # "e":Ljava/io/IOException;
    :cond_7b
    :goto_7b
    monitor-exit v7

    .line 2283
    return-void

    .line 2300
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_7d
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_4b
    .catchall {:try_start_7d .. :try_end_80} :catchall_c0

    .line 2301
    const/4 v1, 0x0

    .line 2302
    .restart local v1    # "known":Ljava/io/RandomAccessFile;
    :try_start_81
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 2303
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_b0} :catch_b0
    .catchall {:try_start_81 .. :try_end_b0} :catchall_b4

    .line 2305
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_b0
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4d

    .line 2315
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    :catch_b2
    move-exception v0

    goto :goto_7b

    .line 2314
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_b4
    move-exception v6

    .line 2315
    :goto_b5
    if-eqz v1, :cond_ba

    :try_start_b7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_be
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bb

    .line 2314
    :cond_ba
    :goto_ba
    :try_start_ba
    throw v6
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_bb

    .line 2287
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_bb
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2315
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :catch_be
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_ba

    .line 2314
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :catchall_c0
    move-exception v6

    move-object v1, v2

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .local v1, "known":Ljava/io/RandomAccessFile;
    goto :goto_b5
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .prologue
    .line 2195
    if-nez p1, :cond_c

    .line 2196
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "removePackageParticipants with null list"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    return-void

    .line 2202
    :cond_c
    const/4 v2, 0x0

    array-length v3, p1

    :goto_e
    if-ge v2, v3, :cond_33

    aget-object v0, p1, v2

    .line 2204
    .local v0, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 2205
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_30

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2206
    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 2207
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2209
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2202
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2194
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_33
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)I
    .registers 16
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v6, "requestBackup"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    if-eqz p1, :cond_11

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_28

    .line 2499
    :cond_11
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "No packages named for backup request"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const/16 v0, -0x3e8

    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 2501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No packages are provided for backup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2504
    :cond_28
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 2505
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v2, :cond_38

    .line 2506
    const/16 v0, -0x3e8

    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 2507
    const/16 v0, -0x3e8

    return v0

    .line 2510
    :cond_38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2511
    .local v5, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2512
    .local v4, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    array-length v1, p1

    :goto_44
    if-ge v0, v1, :cond_79

    aget-object v12, p1, v0

    .line 2514
    .local v12, "packageName":Ljava/lang/String;
    :try_start_48
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2515
    const/16 v7, 0x40

    .line 2514
    invoke-virtual {v6, v12, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 2516
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 2518
    const/16 v6, -0x7d1

    .line 2517
    invoke-static {p2, v12, v6}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 2512
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 2521
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_60
    invoke-static {v11}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 2522
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_6b} :catch_6c

    goto :goto_5d

    .line 2526
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_6c
    move-exception v8

    .line 2528
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v6, -0x7d2

    .line 2527
    invoke-static {p2, v12, v6}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_5d

    .line 2524
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_73
    :try_start_73
    iget-object v6, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_78} :catch_6c

    goto :goto_5d

    .line 2531
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v0, v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v0, v6

    .line 2532
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v0, v6

    .line 2531
    const/16 v1, 0xb0c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2540
    :try_start_9f
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_bc

    move-result-object v3

    .line 2546
    .local v3, "dirName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2547
    .local v10, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupParams;

    .line 2548
    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, p2

    .line 2547
    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/BackupManagerService$BackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Z)V

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2549
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2550
    const/4 v0, 0x0

    return v0

    .line 2541
    .end local v3    # "dirName":Ljava/lang/String;
    .end local v10    # "msg":Landroid/os/Message;
    :catch_bc
    move-exception v9

    .line 2542
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Transport unavailable while attempting backup: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/16 v0, -0x3e8

    invoke-static {p2, v0}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 2544
    const/16 v0, -0x3e8

    return v0
.end method

.method resetBackupState(Ljava/io/File;)V
    .registers 14
    .param p1, "stateFileDir"    # Ljava/io/File;

    .prologue
    .line 1797
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1799
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1800
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1802
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 1803
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    .line 1806
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    :goto_1a
    if-ge v6, v9, :cond_31

    aget-object v5, v8, v6

    .line 1808
    .local v5, "sf":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "_need_init_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 1809
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_5f

    .line 1806
    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .end local v5    # "sf":Ljava/io/File;
    :cond_31
    monitor-exit v7

    .line 1815
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1816
    :try_start_35
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1817
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    if-ge v1, v0, :cond_65

    .line 1818
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1819
    .local v4, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_62

    .line 1820
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1821
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_5c

    goto :goto_4c

    .line 1815
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    .end local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_5c
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1797
    :catchall_5f
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1817
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .end local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_65
    monitor-exit v7

    .line 1796
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 9934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2e

    .line 9935
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-system process uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9936
    const-string/jumbo v5, " attemping install-time restore"

    .line 9935
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9937
    return-void

    .line 9940
    :cond_2e
    const/4 v12, 0x0

    .line 9942
    .local v12, "skip":Z
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v6

    .line 9943
    .local v6, "restoreSet":J
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAtInstall pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9944
    const-string/jumbo v5, " token="

    .line 9943
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9944
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 9943
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9945
    const-string/jumbo v5, " restoreSet="

    .line 9943
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9945
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    .line 9943
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9946
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_72

    .line 9948
    const/4 v12, 0x1

    .line 9952
    :cond_72
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 9953
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v3, :cond_84

    .line 9954
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "No transport"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9955
    const/4 v12, 0x1

    .line 9958
    :cond_84
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    if-nez v1, :cond_a5

    .line 9960
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-restorable state: auto="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9962
    const/4 v12, 0x1

    .line 9965
    :cond_a5
    if-nez v12, :cond_c7

    .line 9972
    :try_start_a7
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 9974
    .local v4, "dirName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9978
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 9979
    .local v11, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLjava/lang/String;I)V

    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9981
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_c7} :catch_d9

    .line 9989
    .end local v4    # "dirName":Ljava/lang/String;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_c7
    :goto_c7
    if-eqz v12, :cond_d8

    .line 9992
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Finishing install immediately"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9994
    :try_start_d2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_d8} :catch_fa

    .line 9933
    :cond_d8
    :goto_d8
    return-void

    .line 9982
    :catch_d9
    move-exception v10

    .line 9984
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to contact transport: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9985
    const/4 v12, 0x1

    goto :goto_c7

    .line 9995
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_fa
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_d8
.end method

.method restoreWidgetData(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .prologue
    .line 7923
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 7917
    return-void
.end method

.method scheduleNextFullBackupJob(J)V
    .registers 20
    .param p1, "transportMinLatency"    # J

    .prologue
    .line 4932
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4933
    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_49

    .line 4937
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-wide v10, v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    .line 4938
    .local v10, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v10

    .line 4939
    .local v8, "timeSinceLast":J
    const-wide/32 v14, 0x5265c00

    cmp-long v7, v8, v14

    if-gez v7, :cond_46

    .line 4940
    const-wide/32 v14, 0x5265c00

    sub-long v2, v14, v8

    .line 4941
    .local v2, "appLatency":J
    :goto_2e
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 4942
    .local v4, "latency":J
    new-instance v6, Lcom/android/server/backup/BackupManagerService$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    .line 4947
    .local v6, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/16 v14, 0x9c4

    invoke-virtual {v7, v6, v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_53

    .end local v2    # "appLatency":J
    .end local v4    # "latency":J
    .end local v6    # "r":Ljava/lang/Runnable;
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :goto_44
    monitor-exit v12

    .line 4931
    return-void

    .line 4940
    .restart local v8    # "timeSinceLast":J
    .restart local v10    # "upcomingLastBackup":J
    :cond_46
    const-wide/16 v2, 0x0

    goto :goto_2e

    .line 4950
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :cond_49
    :try_start_49
    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v13, "Full backup queue empty; not scheduling"

    invoke-static {v7, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_53

    goto :goto_44

    .line 4932
    :catchall_53
    move-exception v7

    monitor-exit v12

    throw v7
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 9781
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 9782
    const-string/jumbo v5, "selectBackupTransport"

    .line 9781
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9784
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9785
    :try_start_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_53

    move-result-wide v0

    .line 9787
    .local v0, "oldId":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 9788
    .local v2, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 9789
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 9790
    const-string/jumbo v5, "backup_transport"

    .line 9789
    invoke-static {v3, v5, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9791
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransport() set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 9792
    const-string/jumbo v6, " returning "

    .line 9791
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_4e

    .line 9795
    :try_start_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_53

    monitor-exit v4

    .line 9793
    return-object v2

    .line 9794
    .end local v2    # "prevTransport":Ljava/lang/String;
    :catchall_4e
    move-exception v3

    .line 9795
    :try_start_4f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9794
    throw v3
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 9784
    .end local v0    # "oldId":J
    :catchall_53
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setAutoRestore(Z)V
    .registers 7
    .param p1, "doAutoRestore"    # Z

    .prologue
    .line 9711
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    .line 9712
    const-string/jumbo v4, "setAutoRestore"

    .line 9711
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9714
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Auto restore => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9718
    .local v0, "oldId":J
    :try_start_29
    monitor-enter p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_45

    .line 9719
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 9720
    const-string/jumbo v4, "backup_auto_restore"

    if-eqz p1, :cond_40

    const/4 v2, 0x1

    .line 9719
    :goto_36
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9721
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_42

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_45

    .line 9724
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9710
    return-void

    .line 9720
    :cond_40
    const/4 v2, 0x0

    goto :goto_36

    .line 9718
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit p0

    throw v2
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_45

    .line 9723
    :catchall_45
    move-exception v2

    .line 9724
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9723
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .registers 14
    .param p1, "enable"    # Z

    .prologue
    .line 9661
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BACKUP"

    .line 9662
    const-string/jumbo v8, "setBackupEnabled"

    .line 9661
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9664
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Backup enabled => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9668
    .local v2, "oldId":J
    :try_start_29
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    .line 9669
    .local v5, "wasEnabled":Z
    monitor-enter p0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_6e

    .line 9670
    const/4 v6, 0x0

    :try_start_2d
    invoke-static {p1, v6}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    .line 9671
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_73

    :try_start_32
    monitor-exit p0

    .line 9674
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_6e

    .line 9675
    if-eqz p1, :cond_3a

    if-eqz v5, :cond_76

    .line 9679
    :cond_3a
    if-nez p1, :cond_84

    .line 9683
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    .line 9688
    if-eqz v5, :cond_84

    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v6, :cond_84

    .line 9692
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    monitor-enter v8
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_6b

    .line 9693
    :try_start_4a
    new-instance v0, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_89

    .local v0, "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_55
    monitor-exit v8

    .line 9696
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "transport$iterator":Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9697
    .local v1, "transport":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v1}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_55 .. :try_end_6a} :catchall_6b

    goto :goto_5a

    .line 9674
    .end local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "transport":Ljava/lang/String;
    .end local v4    # "transport$iterator":Ljava/util/Iterator;
    :catchall_6b
    move-exception v6

    :try_start_6c
    monitor-exit v7

    throw v6
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_6e

    .line 9704
    .end local v5    # "wasEnabled":Z
    :catchall_6e
    move-exception v6

    .line 9705
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9704
    throw v6

    .line 9669
    .restart local v5    # "wasEnabled":Z
    :catchall_73
    move-exception v6

    :try_start_74
    monitor-exit p0

    throw v6
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_6e

    .line 9675
    :cond_76
    :try_start_76
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v6, :cond_3a

    .line 9677
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 9678
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_84
    .catchall {:try_start_76 .. :try_end_84} :catchall_6b

    :cond_84
    :goto_84
    :try_start_84
    monitor-exit v7
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_6e

    .line 9705
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9660
    return-void

    .line 9692
    :catchall_89
    move-exception v6

    :try_start_8a
    monitor-exit v8

    throw v6

    .line 9699
    .restart local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "transport$iterator":Ljava/util/Iterator;
    :cond_8c
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 9700
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 9699
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_98
    .catchall {:try_start_8a .. :try_end_98} :catchall_6b

    goto :goto_84
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "android.permission.BACKUP"

    .line 1644
    const-string/jumbo v21, "setBackupPassword"

    .line 1643
    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_a3

    const/4 v11, 0x1

    .line 1651
    .local v11, "pbkdf2Fallback":Z
    :goto_1e
    const-string/jumbo v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_46

    .line 1652
    if-eqz v11, :cond_a6

    const-string/jumbo v19, "PBKDF2WithHmacSHA1And8bit"

    .line 1653
    const/16 v20, 0x2710

    .line 1652
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_a6

    .line 1658
    :cond_46
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    .line 1659
    const/4 v12, 0x0

    .line 1660
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 1662
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    :try_start_50
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5d} :catch_b4
    .catchall {:try_start_50 .. :try_end_5d} :catchall_d6

    .line 1663
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .local v13, "pwFout":Ljava/io/FileOutputStream;
    :try_start_5d
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_62} :catch_1a3
    .catchall {:try_start_5d .. :try_end_62} :catchall_19a

    .line 1664
    .local v15, "pwOut":Ljava/io/DataOutputStream;
    :try_start_62
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    move/from16 v19, v0

    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6d} :catch_1a7
    .catchall {:try_start_62 .. :try_end_6d} :catchall_19e

    .line 1670
    if-eqz v15, :cond_72

    :try_start_6f
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 1671
    :cond_72
    if-eqz v13, :cond_77

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_77} :catch_a9

    .line 1678
    :cond_77
    :goto_77
    if-eqz p2, :cond_7f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_100

    .line 1679
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_ed

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_ed

    .line 1682
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to clear backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    const/16 v19, 0x0

    return v19

    .line 1647
    .end local v11    # "pbkdf2Fallback":Z
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_a3
    const/4 v11, 0x0

    .restart local v11    # "pbkdf2Fallback":Z
    goto/16 :goto_1e

    .line 1654
    :cond_a6
    const/16 v19, 0x0

    return v19

    .line 1672
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_a9
    move-exception v7

    .line 1673
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to close pw version record"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 1665
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catch_b4
    move-exception v7

    .line 1666
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_b5
    :try_start_b5
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to write backup pw version; password not changed"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_d6

    .line 1667
    const/16 v19, 0x0

    .line 1670
    if-eqz v14, :cond_c5

    :try_start_c2
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1671
    :cond_c5
    if-eqz v12, :cond_ca

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_ca} :catch_cb

    .line 1667
    :cond_ca
    :goto_ca
    return v19

    .line 1672
    :catch_cb
    move-exception v7

    .line 1673
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 1668
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_d6
    move-exception v19

    .line 1670
    :goto_d7
    if-eqz v14, :cond_dc

    :try_start_d9
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1671
    :cond_dc
    if-eqz v12, :cond_e1

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_e1} :catch_e2

    .line 1668
    :cond_e1
    :goto_e1
    throw v19

    .line 1672
    :catch_e2
    move-exception v7

    .line 1673
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 1686
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_ed
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1687
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    .line 1688
    const/16 v19, 0x1

    return v19

    .line 1693
    :cond_100
    const/16 v19, 0x200

    :try_start_102
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v18

    .line 1694
    .local v18, "salt":[B
    const-string/jumbo v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_11c} :catch_17e

    move-result-object v8

    .line 1696
    .local v8, "newPwHash":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "pwf":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 1697
    .local v5, "buffer":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 1699
    .local v9, "out":Ljava/io/DataOutputStream;
    :try_start_121
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_130
    .catchall {:try_start_121 .. :try_end_130} :catchall_16d

    .line 1700
    .local v17, "pwf":Ljava/io/OutputStream;
    :try_start_130
    new-instance v6, Ljava/io/BufferedOutputStream;

    .end local v16    # "pwf":Ljava/io/OutputStream;
    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_137
    .catchall {:try_start_130 .. :try_end_137} :catchall_18b

    .line 1701
    .local v6, "buffer":Ljava/io/OutputStream;
    :try_start_137
    new-instance v10, Ljava/io/DataOutputStream;

    .end local v5    # "buffer":Ljava/io/OutputStream;
    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13c
    .catchall {:try_start_137 .. :try_end_13c} :catchall_18f

    .line 1704
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_13c
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .end local v9    # "out":Ljava/io/DataOutputStream;
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1705
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1706
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 1708
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1709
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_15b
    .catchall {:try_start_13c .. :try_end_15b} :catchall_194

    .line 1710
    const/16 v19, 0x1

    .line 1712
    if-eqz v10, :cond_162

    :try_start_15f
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 1713
    :cond_162
    if-eqz v6, :cond_167

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1714
    :cond_167
    if-eqz v17, :cond_16c

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 1710
    :cond_16c
    return v19

    .line 1711
    .end local v6    # "buffer":Ljava/io/OutputStream;
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    :catchall_16d
    move-exception v19

    .line 1712
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    :goto_16e
    if-eqz v9, :cond_173

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 1713
    :cond_173
    if-eqz v5, :cond_178

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1714
    :cond_178
    if-eqz v16, :cond_17d

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 1711
    :cond_17d
    throw v19
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_17e} :catch_17e

    .line 1716
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v18    # "salt":[B
    :catch_17e
    move-exception v7

    .line 1717
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to set backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/16 v19, 0x0

    return v19

    .line 1711
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v8    # "newPwHash":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v18    # "salt":[B
    :catchall_18b
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .local v16, "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_18f
    move-exception v19

    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/OutputStream;
    .local v5, "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_194
    move-exception v19

    move-object v9, v10

    .end local v10    # "out":Ljava/io/DataOutputStream;
    .local v9, "out":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .line 1668
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .end local v18    # "salt":[B
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_19a
    move-exception v19

    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_d7

    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_19e
    move-exception v19

    move-object v14, v15

    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_d7

    .line 1665
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    :catch_1a3
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_b5

    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_1a7
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v14, v15

    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_b5
.end method

.method public setBackupProvisioned(Z)V
    .registers 5
    .param p1, "available"    # Z

    .prologue
    .line 9730
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    .line 9731
    const-string/jumbo v2, "setBackupProvisioned"

    .line 9730
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9729
    return-void
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 5
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 9552
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 9553
    :try_start_3
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9554
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 9551
    return-void

    .line 9552
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 9536
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    .line 9537
    const/4 v3, 0x0

    .line 9536
    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9538
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9533
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .registers 7
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 9521
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9522
    .local v0, "confIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.backupconfirm"

    .line 9523
    const-string/jumbo v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    .line 9522
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9524
    const-string/jumbo v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9525
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9526
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_20} :catch_22

    .line 9530
    const/4 v2, 0x1

    return v2

    .line 9527
    .end local v0    # "confIntent":Landroid/content/Intent;
    :catch_22
    move-exception v1

    .line 9528
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 3586
    if-nez p1, :cond_3

    .line 3588
    return-void

    .line 3593
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3598
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_19

    .line 3599
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3585
    :cond_19
    :goto_19
    return-void

    .line 3601
    :cond_1a
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_19

    .line 3605
    :catch_24
    move-exception v0

    .line 3606
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method tryBindTransport(Landroid/content/pm/ServiceInfo;)Z
    .registers 8
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v5, 0x0

    .line 2105
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2106
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_17

    .line 2108
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    return v2

    .line 2110
    :cond_17
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not privileged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_3a} :catch_3b

    .line 2115
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_3a
    return v5

    .line 2112
    :catch_3b
    move-exception v0

    .line 2113
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Problem resolving transport package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 5
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 9542
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 9543
    :goto_3
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v1

    if-nez v1, :cond_13

    .line 9545
    :try_start_b
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_3

    .line 9546
    :catch_11
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_13
    monitor-exit v2

    .line 9541
    return-void

    .line 9542
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method waitUntilOperationComplete(I)Z
    .registers 10
    .param p1, "token"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2582
    const/4 v2, 0x0

    .line 2583
    .local v2, "finalState":I
    const/4 v3, 0x0

    .line 2584
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2586
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v3, v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2d

    .line 2587
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    if-nez v3, :cond_1e

    :goto_13
    monitor-exit v7

    .line 2605
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2608
    if-ne v2, v5, :cond_30

    move v4, v5

    :goto_1d
    return v4

    .line 2591
    :cond_1e
    :try_start_1e
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_2d

    if-nez v4, :cond_2a

    .line 2593
    :try_start_22
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_27} :catch_28
    .catchall {:try_start_22 .. :try_end_27} :catchall_2d

    goto :goto_7

    .line 2594
    :catch_28
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_7

    .line 2598
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2a
    :try_start_2a
    iget v2, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2d

    goto :goto_13

    .line 2584
    .end local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :catchall_2d
    move-exception v4

    monitor-exit v7

    throw v4

    .restart local v3    # "op":Lcom/android/server/backup/BackupManagerService$Operation;
    :cond_30
    move v4, v6

    .line 2608
    goto :goto_1d
.end method

.method writeRestoreTokens()V
    .registers 8

    .prologue
    .line 2325
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2328
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2331
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 2332
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 2335
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_24

    .line 2336
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2345
    :cond_20
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 2323
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :goto_23
    return-void

    .line 2338
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :cond_24
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2339
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ancestral packages:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgName$iterator":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2341
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_62} :catch_63

    goto :goto_53

    .line 2346
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "pkgName$iterator":Ljava/util/Iterator;
    :catch_63
    move-exception v1

    .line 2347
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method
