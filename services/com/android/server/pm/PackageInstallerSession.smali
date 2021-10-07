.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$1;,
        Lcom/android/server/pm/PackageInstallerSession$2;,
        Lcom/android/server/pm/PackageInstallerSession$3;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MSG_COMMIT:I = 0x0

.field private static final REMOVE_SPLIT_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field final createdMillis:J

.field final defaultContainerGid:I

.field final installerPackageName:Ljava/lang/String;

.field final installerUid:I

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBridges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mCertificates:[[Ljava/security/cert/Certificate;

.field private mClientProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;

.field private mFinalStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mInheritedFilesBase:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInternalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIsInstallerDeviceOwner:Z

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionsAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRelinquished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mReportedProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mResolvedBaseFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvedStageDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSignatures:[Landroid/content/pm/Signature;

.field private mVersionCode:I

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->commitLocked(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 183
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 193
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZ)V
    .registers 30
    .param p1, "callback"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "sessionId"    # I
    .param p6, "userId"    # I
    .param p7, "installerPackageName"    # Ljava/lang/String;
    .param p8, "installerUid"    # I
    .param p9, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p10, "createdMillis"    # J
    .param p12, "stageDir"    # Ljava/io/File;
    .param p13, "stageCid"    # Ljava/lang/String;
    .param p14, "prepared"    # Z
    .param p15, "sealed"    # Z

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 120
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 125
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 127
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 130
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 132
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 135
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 137
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 139
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    .line 141
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 149
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 175
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 177
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 179
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 202
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v9, p0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 238
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 239
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 240
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 241
    new-instance v9, Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v0, p4

    invoke-direct {v9, v0, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 243
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 244
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 245
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    .line 246
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    .line 247
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 248
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 249
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 250
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 252
    if-nez p12, :cond_97

    const/4 v9, 0x1

    move v10, v9

    :goto_89
    if-nez p13, :cond_9a

    const/4 v9, 0x1

    :goto_8c
    if-ne v10, v9, :cond_9c

    .line 253
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 254
    const-string/jumbo v10, "Exactly one of stageDir or stageCid stage must be set"

    .line 253
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 252
    :cond_97
    const/4 v9, 0x0

    move v10, v9

    goto :goto_89

    :cond_9a
    const/4 v9, 0x0

    goto :goto_8c

    .line 257
    :cond_9c
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 258
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 262
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 263
    const-string/jumbo v10, "device_policy"

    .line 262
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 265
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "android.permission.INSTALL_PACKAGES"

    move/from16 v0, p8

    invoke-virtual {v9, v10, v0}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_fa

    const/4 v7, 0x1

    .line 267
    .local v7, "isPermissionGranted":Z
    :goto_bd
    if-nez p8, :cond_fc

    const/4 v6, 0x1

    .line 269
    .local v6, "isInstallerRoot":Z
    :goto_c0
    move-object/from16 v0, p9

    iget v9, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_fe

    const/4 v3, 0x1

    .line 270
    .local v3, "forcePermissionPrompt":Z
    :goto_c9
    if-eqz v2, :cond_100

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result v9

    :goto_d1
    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    .line 272
    if-nez v7, :cond_db

    if-nez v6, :cond_db

    .line 274
    iget-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    .line 272
    if-eqz v9, :cond_dd

    .line 275
    :cond_db
    if-eqz v3, :cond_102

    .line 278
    :cond_dd
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    .line 280
    :goto_e0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 282
    .local v4, "identity":J
    :try_start_e4
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "com.android.defcontainer"

    .line 283
    const/high16 v11, 0x100000

    const/4 v12, 0x0

    .line 282
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    .line 284
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I
    :try_end_f6
    .catchall {:try_start_e4 .. :try_end_f6} :catchall_106

    .line 286
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    return-void

    .line 265
    .end local v3    # "forcePermissionPrompt":Z
    .end local v4    # "identity":J
    .end local v6    # "isInstallerRoot":Z
    .end local v7    # "isPermissionGranted":Z
    .end local v8    # "uid":I
    :cond_fa
    const/4 v7, 0x0

    .restart local v7    # "isPermissionGranted":Z
    goto :goto_bd

    .line 267
    :cond_fc
    const/4 v6, 0x0

    .restart local v6    # "isInstallerRoot":Z
    goto :goto_c0

    .line 269
    :cond_fe
    const/4 v3, 0x0

    .restart local v3    # "forcePermissionPrompt":Z
    goto :goto_c9

    .line 270
    :cond_100
    const/4 v9, 0x0

    goto :goto_d1

    .line 276
    :cond_102
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    goto :goto_e0

    .line 285
    .restart local v4    # "identity":J
    :catchall_106
    move-exception v9

    .line 286
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw v9
.end method

.method private assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "apk"    # Landroid/content/pm/PackageParser$ApkLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 868
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 869
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 870
    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 869
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 870
    const-string/jumbo v2, " inconsistent with "

    .line 869
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 870
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 869
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 872
    :cond_38
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 877
    :cond_4a
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    iget v1, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-eq v0, v1, :cond_ac

    .line 878
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 879
    const-string/jumbo v2, " version code "

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 879
    iget v2, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 879
    const-string/jumbo v2, " inconsistent with "

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 880
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 873
    :cond_7d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    const-string/jumbo v2, " specified package "

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 874
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    const-string/jumbo v2, " inconsistent with "

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    iget-object v2, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 873
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 882
    :cond_ac
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 883
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " signatures are inconsistent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 867
    :cond_d0
    return-void
.end method

.method private assertPreparedAndNotSealed(Ljava/lang/String;)V
    .registers 6
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v0, :cond_24

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " before prepared"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_21

    .line 323
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 327
    :cond_24
    :try_start_24
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_42

    .line 328
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not allowed after commit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_21

    :cond_42
    monitor-exit v1

    .line 322
    return-void
.end method

.method private calculateInstalledSize()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    :try_start_6
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_c
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6 .. :try_end_c} :catch_34

    move-result-object v2

    .line 902
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .local v11, "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "file$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 904
    .local v8, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v3, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 905
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 898
    .end local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "file$iterator":Ljava/util/Iterator;
    .end local v11    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_34
    move-exception v6

    .line 899
    .local v6, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1

    .line 907
    .end local v6    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v9    # "file$iterator":Ljava/util/Iterator;
    .restart local v11    # "splitPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_40
    :goto_40
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 908
    .restart local v8    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v3, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 909
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 914
    .end local v8    # "file":Ljava/io/File;
    :cond_5c
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    .line 915
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v3, v1

    move-object v5, v1

    .line 914
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 917
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_81

    const/4 v10, 0x1

    .line 920
    .local v10, "isForwardLocked":Z
    :goto_78
    :try_start_78
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v0, v10, v1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7f} :catch_83

    move-result-wide v4

    return-wide v4

    .line 917
    .end local v10    # "isForwardLocked":Z
    :cond_81
    const/4 v10, 0x0

    .restart local v10    # "isForwardLocked":Z
    goto :goto_78

    .line 921
    :catch_83
    move-exception v7

    .line 922
    .local v7, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    .line 923
    const-string/jumbo v3, "Failed to calculate install size"

    .line 922
    const/4 v4, -0x2

    invoke-direct {v1, v4, v3, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private commitLocked(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    .registers 23
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 560
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v2, :cond_11

    .line 561
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v3, "Session destroyed"

    const/16 v4, -0x6e

    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 563
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v2, :cond_22

    .line 564
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v3, "Session not sealed"

    const/16 v4, -0x6e

    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 568
    :cond_22
    :try_start_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_77

    .line 577
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/PackageInstallerSession;->validateInstallLocked(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    if-nez v2, :cond_83

    .line 586
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v2, "android.content.pm.action.CONFIRM_PERMISSIONS"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v2, "android.content.pm.extra.SESSION_ID"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_191

    .line 596
    :goto_73
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    .line 597
    return-void

    .line 569
    .end local v17    # "intent":Landroid/content/Intent;
    :catch_77
    move-exception v12

    .line 570
    .local v12, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    .line 571
    const-string/jumbo v3, "Failed to resolve stage location"

    .line 570
    const/16 v4, -0x12

    invoke-direct {v2, v4, v3, v12}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 600
    .end local v12    # "e":Ljava/io/IOException;
    :cond_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v2, :cond_94

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->calculateInstalledSize()J

    move-result-wide v14

    .line 605
    .local v14, "finalSize":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {v2, v14, v15}, Lcom/android/server/pm/PackageInstallerSession;->resizeContainer(Ljava/lang/String;J)V

    .line 610
    .end local v14    # "finalSize":J
    :cond_94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11d

    .line 612
    :try_start_9d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 613
    .local v13, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v19

    .line 615
    .local v19, "toDir":Ljava/io/File;
    const-string/jumbo v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inherited files: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-nez v2, :cond_e7

    .line 617
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "mInheritedFilesBase == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_dc} :catch_dc

    .line 631
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    :catch_dc
    move-exception v12

    .line 632
    .restart local v12    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    .line 633
    const-string/jumbo v3, "Failed to inherit existing install"

    .line 632
    const/4 v4, -0x4

    invoke-direct {v2, v4, v3, v12}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 620
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "toDir":Ljava/io/File;
    :cond_e7
    :try_start_e7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_181

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_112

    .line 622
    new-instance v18, Ljava/io/File;

    const-string/jumbo v2, "oat"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 623
    .local v18, "oatDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    .line 625
    .end local v18    # "oatDir":Ljava/io/File;
    :cond_112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_11d} :catch_dc

    .line 638
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    :cond_11d
    :goto_11d
    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 639
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v2, :cond_145

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->finalizeAndFixContainer(Ljava/lang/String;)V

    .line 651
    :cond_145
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 666
    .local v6, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_187

    .line 667
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 672
    .local v10, "user":Landroid/os/UserHandle;
    :goto_158
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 674
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 673
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;[[Ljava/security/cert/Certificate;)V

    .line 559
    return-void

    .line 629
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v19    # "toDir":Ljava/io/File;
    :cond_181
    :try_start_181
    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_186} :catch_dc

    goto :goto_11d

    .line 669
    .end local v13    # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "toDir":Ljava/io/File;
    .restart local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_187
    new-instance v10, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v10, v2}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v10    # "user":Landroid/os/UserHandle;
    goto :goto_158

    .line 591
    .end local v6    # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v10    # "user":Landroid/os/UserHandle;
    .restart local v17    # "intent":Landroid/content/Intent;
    :catch_191
    move-exception v16

    .local v16, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_73
.end method

.method private computeProgressLocked(Z)V
    .registers 6
    .param p1, "forcePublish"    # Z

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    .line 374
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    mul-float/2addr v0, v1

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 375
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    mul-float/2addr v1, v3

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 374
    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 378
    if-nez p1, :cond_2d

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_38

    .line 379
    :cond_2d
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 373
    :cond_38
    return-void
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 13
    .param p1, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_6
    if-ge v6, v8, :cond_1d

    aget-object v1, v7, v6

    .line 992
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 993
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 991
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 997
    .end local v1    # "file":Ljava/io/File;
    :cond_1d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "fromFile$iterator":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 998
    .local v2, "fromFile":Ljava/io/File;
    const-string/jumbo v6, "inherit"

    const-string/jumbo v7, ".tmp"

    invoke-static {v6, v7, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 999
    .local v4, "tmpFile":Ljava/io/File;
    const-string/jumbo v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Copying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 1001
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to copy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1004
    :cond_87
    :try_start_87
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a4

    invoke-static {v6, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_90
    .catch Landroid/system/ErrnoException; {:try_start_87 .. :try_end_90} :catch_e9

    .line 1008
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1009
    .local v5, "toFile":Ljava/io/File;
    const-string/jumbo v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Renaming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1011
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to rename "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1005
    .end local v5    # "toFile":Ljava/io/File;
    :catch_e9
    move-exception v0

    .line 1006
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to chmod "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1014
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v2    # "fromFile":Ljava/io/File;
    .end local v4    # "tmpFile":Ljava/io/File;
    :cond_104
    const-string/jumbo v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Copied "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " files into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .registers 8
    .param p2, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 964
    .local p1, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "instructionSet$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 966
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_10
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_4

    .line 967
    :catch_1c
    move-exception v0

    .line 968
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/internal/os/InstallerConnection$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v3

    throw v3

    .line 963
    .end local v0    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_22
    return-void
.end method

.method private createRemoveSplitMarker(Ljava/lang/String;)V
    .registers 8
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "markerName":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 410
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid marker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_34} :catch_34

    .line 415
    .end local v1    # "markerName":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 416
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 412
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "markerName":Ljava/lang/String;
    :cond_3a
    :try_start_3a
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 414
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_4e
    .catch Landroid/system/ErrnoException; {:try_start_3a .. :try_end_4e} :catch_34

    .line 406
    return-void
.end method

.method private destroyInternal()V
    .registers 6

    .prologue
    .line 1167
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1168
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 1169
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 1172
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bridge$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileBridge;

    .line 1173
    .local v0, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v0}, Landroid/os/FileBridge;->forceClose()V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 1167
    .end local v0    # "bridge":Landroid/os/FileBridge;
    .end local v1    # "bridge$iterator":Ljava/util/Iterator;
    :catchall_1f
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "bridge$iterator":Ljava/util/Iterator;
    :cond_22
    monitor-exit v4

    .line 1176
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v3, :cond_34

    .line 1178
    :try_start_27
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_34
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_27 .. :try_end_34} :catch_3e

    .line 1182
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v3, :cond_3d

    .line 1183
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 1166
    :cond_3d
    return-void

    .line 1179
    :catch_3e
    move-exception v2

    .local v2, "ignored":Lcom/android/internal/os/InstallerConnection$InstallerException;
    goto :goto_34
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "returnCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1152
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 1153
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 1155
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v2, :cond_f

    .line 1157
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_1b

    .line 1162
    :cond_f
    :goto_f
    const/4 v2, 0x1

    if-ne p1, v2, :cond_19

    const/4 v1, 0x1

    .line 1163
    .local v1, "success":Z
    :goto_13
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 1151
    return-void

    .line 1162
    .end local v1    # "success":Z
    :cond_19
    const/4 v1, 0x0

    .restart local v1    # "success":Z
    goto :goto_13

    .line 1158
    .end local v1    # "success":Z
    :catch_1b
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_f
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1197
    const-string/jumbo v0, "userId"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1198
    const-string/jumbo v0, "installerPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1199
    const-string/jumbo v0, "installerUid"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->installerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1200
    const-string/jumbo v0, "createdMillis"

    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1201
    const-string/jumbo v0, "stageDir"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1202
    const-string/jumbo v0, "stageCid"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1203
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1205
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1207
    const-string/jumbo v0, "mClientProgress"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1208
    const-string/jumbo v0, "mProgress"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1209
    const-string/jumbo v0, "mSealed"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1210
    const-string/jumbo v0, "mPermissionsAccepted"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1211
    const-string/jumbo v0, "mRelinquished"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1212
    const-string/jumbo v0, "mDestroyed"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1213
    const-string/jumbo v0, "mBridges"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1214
    const-string/jumbo v0, "mFinalStatus"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1215
    const-string/jumbo v0, "mFinalMessage"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1216
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1218
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1193
    return-void
.end method

.method private static extractNativeLibraries(Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1020
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "lib"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1021
    .local v2, "libDir":Ljava/io/File;
    invoke-static {v2, v5}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 1023
    const/4 v1, 0x0

    .line 1025
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_d
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    .line 1026
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    invoke-static {v1, v2, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 1028
    .local v3, "res":I
    if-eq v3, v5, :cond_42

    .line 1029
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    .line 1030
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to extract native libraries, res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1029
    invoke-direct {v4, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_31} :catch_31
    .catchall {:try_start_d .. :try_end_31} :catchall_3d

    .line 1032
    .end local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v3    # "res":I
    :catch_31
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/io/IOException;
    :try_start_32
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    .line 1034
    const-string/jumbo v5, "Failed to extract native libraries"

    .line 1033
    const/16 v6, -0x6e

    invoke-direct {v4, v6, v5, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3d

    .line 1035
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3d
    move-exception v4

    .line 1036
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1035
    throw v4

    .line 1036
    .restart local v1    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v3    # "res":I
    :cond_42
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1018
    return-void
.end method

.method private finalizeAndFixContainer(Ljava/lang/String;)V
    .registers 6
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/16 v3, -0x12

    .line 1075
    invoke-static {p1}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1076
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to finalize container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1080
    :cond_22
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1081
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to fix permissions on container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1074
    :cond_45
    return-void
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "base"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "baseStr":Ljava/lang/String;
    const-string/jumbo v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 952
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid path (was relative) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 955
    :cond_2b
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 956
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 959
    :cond_3a
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " outside base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .registers 14
    .param p2, "toDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v10, 0x0

    .line 933
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 934
    .local v4, "toStat":Landroid/system/StructStat;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "fromFile$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 935
    .local v1, "fromFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    .line 936
    .local v3, "fromStat":Landroid/system/StructStat;
    iget-wide v6, v3, Landroid/system/StructStat;->st_dev:J

    iget-wide v8, v4, Landroid/system/StructStat;->st_dev:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_25} :catch_2a

    cmp-long v5, v6, v8

    if-eqz v5, :cond_d

    .line 937
    return v10

    .line 940
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v2    # "fromFile$iterator":Ljava/util/Iterator;
    .end local v3    # "fromStat":Landroid/system/StructStat;
    .end local v4    # "toStat":Landroid/system/StructStat;
    :catch_2a
    move-exception v0

    .line 941
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to detect if linking possible: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    return v10

    .line 944
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "fromFile$iterator":Ljava/util/Iterator;
    .restart local v4    # "toStat":Landroid/system/StructStat;
    :cond_46
    const/4 v5, 0x1

    return v5
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p2, "toDir"    # Ljava/io/File;
    .param p3, "fromDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "fromFile$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 976
    .local v1, "fromFile":Ljava/io/File;
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 978
    .local v3, "relativePath":Ljava/lang/String;
    :try_start_14
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 979
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 978
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_14 .. :try_end_23} :catch_24

    goto :goto_4

    .line 980
    :catch_24
    move-exception v0

    .line 981
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed linkOrCreateDir("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 982
    const-string/jumbo v6, ", "

    .line 981
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 982
    const-string/jumbo v6, ")"

    .line 981
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 986
    .end local v0    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v1    # "fromFile":Ljava/io/File;
    .end local v3    # "relativePath":Ljava/lang/String;
    :cond_5c
    const-string/jumbo v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Linked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " files into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method private openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    const-string/jumbo v3, "openRead"

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 507
    :try_start_6
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 508
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_26
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_26} :catch_26

    .line 515
    :catch_26
    move-exception v0

    .line 516
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 510
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_2c
    :try_start_2c
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    .local v1, "target":Ljava/io/File;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 513
    .local v2, "targetFd":Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_47
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_47} :catch_26

    return-object v3
.end method

.method private openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 436
    :try_start_5
    const-string/jumbo v2, "openWrite"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 438
    new-instance v8, Landroid/os/FileBridge;

    invoke-direct {v8}, Landroid/os/FileBridge;-><init>()V

    .line 439
    .local v8, "bridge":Landroid/os/FileBridge;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_42

    monitor-exit v4

    .line 444
    :try_start_1a
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 445
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3c
    .catch Landroid/system/ErrnoException; {:try_start_1a .. :try_end_3c} :catch_3c

    .line 489
    :catch_3c
    move-exception v9

    .line 490
    .local v9, "e":Landroid/system/ErrnoException;
    invoke-virtual {v9}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 435
    .end local v8    # "bridge":Landroid/os/FileBridge;
    .end local v9    # "e":Landroid/system/ErrnoException;
    :catchall_42
    move-exception v2

    monitor-exit v4

    throw v2

    .line 448
    .restart local v8    # "bridge":Landroid/os/FileBridge;
    :cond_45
    :try_start_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_48
    .catch Landroid/system/ErrnoException; {:try_start_45 .. :try_end_48} :catch_3c

    move-result-wide v12

    .line 450
    .local v12, "identity":J
    :try_start_49
    new-instance v15, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v15, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_c2

    .line 452
    .local v15, "target":Ljava/io/File;
    :try_start_54
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 458
    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    sget v6, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v5, v6

    const/16 v6, 0x1a4

    .line 457
    invoke-interface {v2, v4, v5, v6}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 459
    .local v3, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1a4

    invoke-static {v2, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 463
    const-wide/16 v4, 0x0

    cmp-long v2, p4, v4

    if-lez v2, :cond_a3

    .line 464
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v3}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v14

    .line 465
    .local v14, "stat":Landroid/system/StructStat;
    iget-wide v4, v14, Landroid/system/StructStat;->st_size:J

    sub-long v10, p4, v4

    .line 467
    .local v10, "deltaBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v2, :cond_9a

    const-wide/16 v4, 0x0

    cmp-long v2, v10, v4

    if-lez v2, :cond_9a

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v2, v4, v10, v11}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;J)V
    :try_end_9a
    .catch Landroid/system/ErrnoException; {:try_start_54 .. :try_end_9a} :catch_3c

    .line 471
    :cond_9a
    :try_start_9a
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_a3
    .catch Landroid/system/ErrnoException; {:try_start_9a .. :try_end_a3} :catch_c7

    .line 481
    .end local v10    # "deltaBytes":J
    .end local v14    # "stat":Landroid/system/StructStat;
    :cond_a3
    :goto_a3
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-lez v2, :cond_b2

    .line 482
    :try_start_a9
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    move-wide/from16 v0, p2

    invoke-interface {v2, v3, v0, v1, v4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 485
    :cond_b2
    invoke-virtual {v8, v3}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    .line 486
    invoke-virtual {v8}, Landroid/os/FileBridge;->start()V

    .line 487
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 451
    .end local v3    # "targetFd":Ljava/io/FileDescriptor;
    .end local v15    # "target":Ljava/io/File;
    :catchall_c2
    move-exception v2

    .line 452
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw v2

    .line 472
    .restart local v3    # "targetFd":Ljava/io/FileDescriptor;
    .restart local v10    # "deltaBytes":J
    .restart local v14    # "stat":Landroid/system/StructStat;
    .restart local v15    # "target":Ljava/io/File;
    :catch_c7
    move-exception v9

    .line 473
    .restart local v9    # "e":Landroid/system/ErrnoException;
    iget v2, v9, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->ENOTSUP:I

    if-ne v2, v4, :cond_d6

    .line 474
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-wide/from16 v0, p4

    invoke-interface {v2, v3, v0, v1}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    goto :goto_a3

    .line 476
    :cond_d6
    invoke-virtual {v9}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_db
    .catch Landroid/system/ErrnoException; {:try_start_a9 .. :try_end_db} :catch_3c
.end method

.method private static resizeContainer(Ljava/lang/String;J)V
    .registers 10
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "targetSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x12

    .line 1042
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_22

    .line 1044
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    .line 1045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to find mounted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1044
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1048
    :cond_22
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 1049
    .local v0, "currentSize":J
    cmp-long v3, v0, p1

    if-lez v3, :cond_5c

    .line 1050
    const-string/jumbo v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is larger than target size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1051
    const-string/jumbo v5, "; skipping resize"

    .line 1050
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void

    .line 1055
    :cond_5c
    invoke-static {p0}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 1056
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    .line 1057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " before resize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1056
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1061
    :cond_83
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    .line 1060
    invoke-static {p1, p2, p0, v3}, Lcom/android/internal/content/PackageHelper;->resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 1062
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to resize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1062
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1066
    :cond_b9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    .line 1067
    const/16 v4, 0x3e8

    const/4 v5, 0x0

    .line 1066
    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 1068
    if-nez v2, :cond_e7

    .line 1069
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to mount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " after resize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1069
    invoke-direct {v3, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1041
    :cond_e7
    return-void
.end method

.method private resolveStageDir()Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 340
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    if-nez v1, :cond_f

    .line 341
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_13

    .line 342
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 352
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_23

    monitor-exit v2

    return-object v1

    .line 344
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 346
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_23

    goto :goto_f

    .line 339
    .end local v0    # "path":Ljava/lang/String;
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    .line 348
    .restart local v0    # "path":Ljava/lang/String;
    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to resolve path to container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_23
.end method

.method private validateInstallLocked(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    .registers 36
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 691
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 692
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    .line 693
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    .line 695
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-virtual/range {v29 .. v30}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v21

    .line 700
    .local v21, "removedFiles":[Ljava/io/File;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v19, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7d

    .line 702
    const/16 v29, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    :goto_50
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_7d

    aget-object v20, v21, v29

    .line 703
    .local v20, "removedFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 705
    .local v11, "fileName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v31

    const-string/jumbo v32, ".removed"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    sub-int v31, v31, v32

    const/16 v32, 0x0

    .line 704
    move/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 706
    .local v23, "splitName":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    add-int/lit8 v29, v29, 0x1

    goto :goto_50

    .line 710
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v20    # "removedFile":Ljava/io/File;
    .end local v23    # "splitName":Ljava/lang/String;
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    invoke-virtual/range {v29 .. v30}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 711
    .local v4, "addedFiles":[Ljava/io/File;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a6

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v29

    if-nez v29, :cond_a6

    .line 712
    new-instance v29, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v30, "No packages staged"

    const/16 v31, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 715
    :cond_a6
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 716
    .local v26, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v29, 0x0

    array-length v0, v4

    move/from16 v30, v0

    :goto_b0
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1d4

    aget-object v3, v4, v29

    .line 720
    .local v3, "addedFile":Ljava/io/File;
    const/16 v31, 0x100

    .line 719
    :try_start_ba
    move/from16 v0, v31

    invoke-static {v3, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_bf
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_ba .. :try_end_bf} :catch_fb

    move-result-object v5

    .line 725
    .local v5, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_101

    .line 726
    new-instance v29, Lcom/android/server/pm/PackageManagerException;

    .line 727
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Split "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " was defined multiple times"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 726
    const/16 v31, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 721
    .end local v5    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_fb
    move-exception v8

    .line 722
    .local v8, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v29

    throw v29

    .line 731
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v5    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_11d

    .line 732
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 733
    iget v0, v5, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    .line 735
    :cond_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v31, v0

    if-nez v31, :cond_139

    .line 736
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    .line 737
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->certificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 740
    :cond_139
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 744
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_179

    .line 745
    const-string/jumbo v28, "base.apk"

    .line 749
    .local v28, "targetName":Ljava/lang/String;
    :goto_14d
    invoke-static/range {v28 .. v28}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_199

    .line 750
    new-instance v29, Lcom/android/server/pm/PackageManagerException;

    .line 751
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Invalid filename: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 750
    const/16 v31, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 747
    .end local v28    # "targetName":Ljava/lang/String;
    :cond_179
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "split_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ".apk"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "targetName":Ljava/lang/String;
    goto :goto_14d

    .line 754
    :cond_199
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 755
    .local v27, "targetFile":Ljava/io/File;
    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1b7

    .line 756
    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 760
    :cond_1b7
    iget-object v0, v5, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_1c3

    .line 761
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 764
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_b0

    .line 767
    .end local v3    # "addedFile":Ljava/io/File;
    .end local v5    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v27    # "targetFile":Ljava/io/File;
    .end local v28    # "targetName":Ljava/lang/String;
    :cond_1d4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_254

    .line 769
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "splitName$iterator":Ljava/util/Iterator;
    :cond_1de
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_220

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 770
    .restart local v23    # "splitName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1de

    .line 771
    new-instance v29, Lcom/android/server/pm/PackageManagerException;

    .line 772
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Split not found: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 771
    const/16 v31, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 777
    .end local v23    # "splitName":Ljava/lang/String;
    :cond_220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_240

    .line 778
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 779
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:I

    .line 781
    :cond_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v29, v0

    if-nez v29, :cond_254

    .line 782
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSignatures:[Landroid/content/pm/Signature;

    .line 786
    .end local v24    # "splitName$iterator":Ljava/util/Iterator;
    :cond_254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_285

    .line 788
    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3fd

    .line 789
    new-instance v29, Lcom/android/server/pm/PackageManagerException;

    .line 790
    const-string/jumbo v30, "Full install must include a base package"

    .line 789
    const/16 v31, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 795
    :cond_285
    if-nez p2, :cond_2af

    .line 796
    new-instance v29, Lcom/android/server/pm/PackageManagerException;

    .line 797
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Missing existing base package for "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 796
    const/16 v31, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v29

    .line 803
    :cond_2af
    :try_start_2af
    new-instance v29, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v9

    .line 804
    .local v9, "existing":Landroid/content/pm/PackageParser$PackageLite;
    new-instance v29, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 805
    const/16 v30, 0x100

    .line 804
    invoke-static/range {v29 .. v30}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_2cc
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2af .. :try_end_2cc} :catch_341

    move-result-object v10

    .line 810
    .local v10, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    const-string/jumbo v29, "Existing base"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistent(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    move-object/from16 v29, v0

    if-nez v29, :cond_2fd

    .line 814
    new-instance v29, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_2fd
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_355

    .line 820
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_308
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v12, v0, :cond_355

    .line 821
    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v23, v29, v12

    .line 822
    .restart local v23    # "splitName":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    iget-object v0, v9, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    move-object/from16 v29, v0

    aget-object v29, v29, v12

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v22, "splitFile":Ljava/io/File;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    .line 824
    .local v25, "splitRemoved":Z
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_33e

    if-eqz v25, :cond_347

    .line 820
    :cond_33e
    :goto_33e
    add-int/lit8 v12, v12, 0x1

    goto :goto_308

    .line 806
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v12    # "i":I
    .end local v22    # "splitFile":Ljava/io/File;
    .end local v23    # "splitName":Ljava/lang/String;
    .end local v25    # "splitRemoved":Z
    :catch_341
    move-exception v8

    .line 807
    .restart local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v29

    throw v29

    .line 825
    .end local v8    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .restart local v12    # "i":I
    .restart local v22    # "splitFile":Ljava/io/File;
    .restart local v23    # "splitName":Ljava/lang/String;
    .restart local v25    # "splitRemoved":Z
    :cond_347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33e

    .line 831
    .end local v12    # "i":I
    .end local v22    # "splitFile":Ljava/io/File;
    .end local v23    # "splitName":Ljava/lang/String;
    .end local v25    # "splitRemoved":Z
    :cond_355
    new-instance v29, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v18

    .line 832
    .local v18, "packageInstallDir":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 833
    new-instance v14, Ljava/io/File;

    const-string/jumbo v29, "oat"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 834
    .local v14, "oatDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_3fd

    .line 835
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 840
    .local v7, "archSubdirs":[Ljava/io/File;
    if-eqz v7, :cond_3fd

    array-length v0, v7

    move/from16 v29, v0

    if-lez v29, :cond_3fd

    .line 841
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v13

    .line 842
    .local v13, "instructionSets":[Ljava/lang/String;
    const/16 v29, 0x0

    array-length v0, v7

    move/from16 v30, v0

    :goto_38e
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3fd

    aget-object v6, v7, v29

    .line 844
    .local v6, "archSubDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v13, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_3a5

    .line 842
    :cond_3a2
    add-int/lit8 v29, v29, 0x1

    goto :goto_38e

    .line 848
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 853
    .local v17, "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "oatFile$iterator":Ljava/util/Iterator;
    :cond_3be
    :goto_3be
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3a2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    .line 854
    .local v15, "oatFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "base.art"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_3f1

    .line 855
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "base.odex"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 854
    if-nez v31, :cond_3f1

    .line 856
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "base.vdex"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 854
    if-eqz v31, :cond_3be

    .line 857
    :cond_3f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3be

    .line 690
    .end local v6    # "archSubDir":Ljava/io/File;
    .end local v7    # "archSubdirs":[Ljava/io/File;
    .end local v9    # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v10    # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .end local v14    # "oatDir":Ljava/io/File;
    .end local v15    # "oatFile":Ljava/io/File;
    .end local v16    # "oatFile$iterator":Ljava/util/Iterator;
    .end local v17    # "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18    # "packageInstallDir":Ljava/io/File;
    :cond_3fd
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 4

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    if-eqz v0, :cond_e

    .line 1144
    const-string/jumbo v0, "PackageInstaller"

    const-string/jumbo v1, "Ignoring abandon after commit relinquished control"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return-void

    .line 1147
    :cond_e
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1148
    const-string/jumbo v0, "Session was abandoned"

    const/16 v1, -0x73

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1142
    return-void
.end method

.method public addClientProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_3
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgress(F)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    .line 367
    return-void

    .line 368
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1136
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_e

    .line 1137
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 1135
    :cond_e
    return-void
.end method

.method public commit(Landroid/content/IntentSender;)V
    .registers 11
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .prologue
    .line 522
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 526
    :try_start_6
    iget-boolean v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 527
    .local v8, "wasSealed":Z
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v1, :cond_33

    .line 529
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "bridge$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/FileBridge;

    .line 530
    .local v6, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v6}, Landroid/os/FileBridge;->isClosed()Z

    move-result v1

    if-nez v1, :cond_12

    .line 531
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Files still open"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2d

    .line 525
    .end local v6    # "bridge":Landroid/os/FileBridge;
    .end local v7    # "bridge$iterator":Ljava/util/Iterator;
    .end local v8    # "wasSealed":Z
    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 534
    .restart local v7    # "bridge$iterator":Ljava/util/Iterator;
    .restart local v8    # "wasSealed":Z
    :cond_30
    const/4 v1, 0x1

    :try_start_31
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 538
    .end local v7    # "bridge$iterator":Ljava/util/Iterator;
    :cond_33
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 539
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_2d

    monitor-exit v2

    .line 542
    if-nez v8, :cond_43

    .line 546
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 551
    :cond_43
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 553
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 554
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsInstallerDeviceOwner:Z

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move-object v2, p1

    .line 553
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    .line 555
    .local v0, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 521
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 1187
    return-void

    .line 1188
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 291
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 292
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 293
    :try_start_a
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 294
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    iput-object v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 295
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v4, :cond_1c

    .line 296
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 295
    :cond_1c
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 297
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 298
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 299
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 301
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 302
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 303
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 305
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_51

    monitor-exit v3

    .line 307
    return-object v0

    .line 292
    :catchall_51
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 386
    const-string/jumbo v1, "getNames"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 388
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 389
    :catch_f
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPrepared()Z
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 311
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isSealed()Z
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 317
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public open()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1104
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_e

    .line 1105
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, p0, v3}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 1108
    :cond_e
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1109
    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v2, :cond_26

    .line 1110
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v2, :cond_28

    .line 1111
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    .line 1128
    :goto_1e
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 1129
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_45

    :cond_26
    monitor-exit v3

    .line 1103
    return-void

    .line 1112
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 1113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_45

    move-result-wide v0

    .line 1115
    .local v0, "identity":J
    :try_start_30
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {v2, v4, v5}, Lcom/android/server/pm/PackageInstallerService;->prepareExternalStageCid(Ljava/lang/String;J)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_48

    .line 1117
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 1122
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_45

    goto :goto_1e

    .line 1108
    .end local v0    # "identity":J
    :catchall_45
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1116
    .restart local v0    # "identity":J
    :catchall_48
    move-exception v2

    .line 1117
    :try_start_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1116
    throw v2

    .line 1124
    .end local v0    # "identity":J
    :cond_4d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1125
    const-string/jumbo v4, "Exactly one of stageDir or stageCid stage must be set"

    .line 1124
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_45
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 497
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 498
    :catch_5
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J

    .prologue
    .line 423
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageInstallerSession;->openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 424
    :catch_5
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeSplit(Ljava/lang/String;)V
    .registers 5
    .param p1, "splitName"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 397
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Must specify package name to remove a split"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarker(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    .line 395
    return-void

    .line 401
    :catch_17
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setClientProgress(F)V
    .registers 6
    .param p1, "progress"    # F

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 360
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_12

    const/4 v0, 0x1

    .line 361
    .local v0, "forcePublish":Z
    :goto_b
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 362
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    monitor-exit v2

    .line 357
    return-void

    .line 360
    .end local v0    # "forcePublish":Z
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "forcePublish":Z
    goto :goto_b

    .line 358
    .end local v0    # "forcePublish":Z
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setPermissionsResult(Z)V
    .registers 5
    .param p1, "accepted"    # Z

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v0, :cond_d

    .line 1088
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Must be sealed to accept permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_d
    if-eqz p1, :cond_24

    .line 1093
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsAccepted:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_21

    monitor-exit v0

    .line 1096
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1086
    :goto_20
    return-void

    .line 1093
    :catchall_21
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1098
    :cond_24
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1099
    const-string/jumbo v0, "User rejected permissions"

    const/16 v1, -0x73

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_20
.end method
