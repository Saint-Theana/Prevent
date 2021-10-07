.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$1;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field private static final MAX_USER_ID:I = 0x53e2

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x6

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XATTR_SERIAL:Ljava/lang/String; = "user.serial"

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private mGlobalRestrictionOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGuestRestrictions"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackagesLock"
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserRestrictionsListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserStates"
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 217
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    .line 126
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "packagesLock"    # Ljava/lang/Object;

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;)V

    .line 412
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "packagesLock"    # Ljava/lang/Object;
    .param p4, "dataDir"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 416
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 209
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 247
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 261
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 276
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    .line 285
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 298
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    .line 305
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 308
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 315
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 321
    iput v6, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 331
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 340
    const-string/jumbo v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    .line 339
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 342
    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 367
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    .line 418
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 419
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 420
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 421
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 422
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 423
    :try_start_7a
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, p4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 424
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 426
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    .local v0, "userZeroDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 428
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    const/16 v3, 0x1fd

    .line 430
    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 428
    invoke-static {v1, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 431
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v4, "userlist.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 432
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 433
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 434
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_b8
    .catchall {:try_start_7a .. :try_end_b8} :catchall_d7

    monitor-exit v2

    .line 436
    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 437
    const-class v1, Landroid/os/UserManagerInternal;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 438
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 439
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    return-void

    .line 422
    .end local v0    # "userZeroDir":Ljava/io/File;
    :catchall_d7
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "dataDir"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;)V

    .line 403
    return-void
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 7
    .param p1, "profileHandle"    # Landroid/os/UserHandle;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "inQuietMode"    # Z

    .prologue
    .line 702
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 703
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_2e

    .line 704
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    :goto_d
    const-string/jumbo v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    const-string/jumbo v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 710
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 712
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 701
    return-void

    .line 706
    :cond_2e
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .registers 4
    .param p0, "creationFlags"    # I

    .prologue
    .line 1560
    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_24

    .line 1561
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1562
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1565
    :cond_24
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1566
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :cond_44
    return-void
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1547
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1548
    new-instance v0, Ljava/lang/SecurityException;

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1548
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    :cond_20
    return-void
.end method

.method private checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 891
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 892
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_12

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 893
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    .line 892
    if-eqz v1, :cond_13

    .line 894
    :cond_12
    return-void

    .line 896
    :cond_13
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 897
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 896
    invoke-static {v1, v2, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_3c

    .line 898
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 890
    :cond_3c
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1507
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1508
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_38

    if-eqz v0, :cond_38

    .line 1510
    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    .line 1509
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_38

    .line 1513
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1512
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_38

    .line 1515
    new-instance v1, Ljava/lang/SecurityException;

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1515
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1506
    :cond_38
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1531
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1532
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_20
    return-void
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1610
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_28

    if-eqz v0, :cond_28

    .line 1611
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1608
    :cond_28
    return-void
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2188
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2189
    :try_start_3
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 2190
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2191
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2192
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v3

    .line 2187
    return-void

    .line 2188
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 7
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .prologue
    .line 1182
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1183
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    .line 1184
    .local v2, "global":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1186
    .local v3, "local":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1188
    return-object v0

    .line 1190
    :cond_23
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1191
    .local v1, "effective":Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1192
    invoke-static {v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1194
    return-object v1
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    .line 2210
    const-string/jumbo v0, "no_add_user"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2211
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const/4 v0, 0x0

    return-object v0

    .line 2214
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 32
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    .line 2218
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2219
    const/16 v22, 0x0

    return-object v22

    .line 2221
    :cond_9
    and-int/lit8 v22, p2, 0x4

    if-eqz v22, :cond_4f

    const/4 v11, 0x1

    .line 2222
    .local v11, "isGuest":Z
    :goto_e
    and-int/lit8 v22, p2, 0x20

    if-eqz v22, :cond_51

    const/4 v12, 0x1

    .line 2223
    .local v12, "isManagedProfile":Z
    :goto_13
    and-int/lit8 v22, p2, 0x8

    if-eqz v22, :cond_53

    const/4 v13, 0x1

    .line 2224
    .local v13, "isRestricted":Z
    :goto_18
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-eqz v22, :cond_55

    const/4 v10, 0x1

    .line 2225
    .local v10, "isDemo":Z
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2230
    .local v8, "ident":J
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_5d

    .line 2231
    const/16 v16, 0x0

    .line 2232
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v22, -0x2710

    move/from16 v0, p3

    move/from16 v1, v22

    if-eq v0, v1, :cond_62

    .line 2233
    :try_start_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_5a

    .line 2234
    :try_start_3d
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_57

    move-result-object v16

    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :try_start_45
    monitor-exit v22
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_5a

    .line 2236
    if-nez v16, :cond_62

    :try_start_48
    monitor-exit v23
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_5d

    const/16 v22, 0x0

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2236
    return-object v22

    .line 2221
    .end local v8    # "ident":J
    .end local v10    # "isDemo":Z
    .end local v11    # "isGuest":Z
    .end local v12    # "isManagedProfile":Z
    .end local v13    # "isRestricted":Z
    .end local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_4f
    const/4 v11, 0x0

    .restart local v11    # "isGuest":Z
    goto :goto_e

    .line 2222
    :cond_51
    const/4 v12, 0x0

    .restart local v12    # "isManagedProfile":Z
    goto :goto_13

    .line 2223
    :cond_53
    const/4 v13, 0x0

    .restart local v13    # "isRestricted":Z
    goto :goto_18

    .line 2224
    :cond_55
    const/4 v10, 0x0

    .restart local v10    # "isDemo":Z
    goto :goto_21

    .line 2233
    .restart local v8    # "ident":J
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_57
    move-exception v24

    :try_start_58
    monitor-exit v22

    throw v24
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_5a

    .line 2230
    .end local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_5a
    move-exception v22

    :try_start_5b
    monitor-exit v23

    throw v22
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_5d

    .line 2352
    :catchall_5d
    move-exception v22

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2352
    throw v22

    .line 2238
    :cond_62
    if-eqz v12, :cond_72

    const/16 v22, 0x0

    :try_start_66
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    move-result v22

    if-eqz v22, :cond_85

    .line 2242
    :cond_72
    if-nez v11, :cond_76

    if-eqz v12, :cond_ae

    .line 2248
    :cond_76
    if-eqz v11, :cond_bd

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;
    :try_end_7b
    .catchall {:try_start_66 .. :try_end_7b} :catchall_5a

    move-result-object v22

    if-eqz v22, :cond_bd

    :try_start_7e
    monitor-exit v23
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_5d

    .line 2249
    const/16 v22, 0x0

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2249
    return-object v22

    .line 2239
    :cond_85
    :try_start_85
    const-string/jumbo v22, "UserManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Cannot add more managed profiles for user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_85 .. :try_end_a7} :catchall_5a

    :try_start_a7
    monitor-exit v23
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_5d

    .line 2240
    const/16 v22, 0x0

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2240
    return-object v22

    .line 2242
    :cond_ae
    if-nez v10, :cond_76

    :try_start_b0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_5a

    move-result v22

    if-eqz v22, :cond_76

    :try_start_b6
    monitor-exit v23
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_5d

    .line 2245
    const/16 v22, 0x0

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2245
    return-object v22

    .line 2252
    :cond_bd
    if-eqz v13, :cond_c5

    :try_start_bf
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v22

    if-eqz v22, :cond_e3

    .line 2257
    :cond_c5
    if-eqz v13, :cond_12e

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v22

    if-eqz v22, :cond_12e

    .line 2258
    if-nez v16, :cond_f9

    .line 2259
    const-string/jumbo v22, "UserManagerService"

    const-string/jumbo v24, "Cannot add restricted profile - parent user must be specified"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catchall {:try_start_bf .. :try_end_dc} :catchall_5a

    :try_start_dc
    monitor-exit v23
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_5d

    .line 2261
    const/16 v22, 0x0

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2261
    return-object v22

    .line 2253
    :cond_e3
    if-eqz p3, :cond_c5

    .line 2254
    :try_start_e5
    const-string/jumbo v22, "UserManagerService"

    const-string/jumbo v24, "Cannot add restricted profile - parent user must be owner"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catchall {:try_start_e5 .. :try_end_f2} :catchall_5a

    :try_start_f2
    monitor-exit v23
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_5d

    .line 2255
    const/16 v22, 0x0

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2255
    return-object v22

    .line 2263
    :cond_f9
    :try_start_f9
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v22

    if-nez v22, :cond_12e

    .line 2264
    const-string/jumbo v22, "UserManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catchall {:try_start_f9 .. :try_end_127} :catchall_5a

    :try_start_127
    monitor-exit v23
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_5d

    .line 2266
    const/16 v22, 0x0

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2266
    return-object v22

    .line 2269
    :cond_12e
    :try_start_12e
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v22

    if-nez v22, :cond_158

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    if-eqz v22, :cond_158

    .line 2270
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_158

    .line 2271
    const-string/jumbo v22, "UserManagerService"

    .line 2272
    const-string/jumbo v24, "Ephemeral users are supported on split-system-user systems only."

    .line 2271
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catchall {:try_start_12e .. :try_end_151} :catchall_5a

    :try_start_151
    monitor-exit v23
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_5d

    .line 2273
    const/16 v22, 0x0

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2273
    return-object v22

    .line 2277
    :cond_158
    :try_start_158
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v22

    if-eqz v22, :cond_160

    .line 2278
    if-eqz v11, :cond_341

    .line 2287
    :cond_160
    :goto_160
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v20

    .line 2288
    .local v20, "userId":I
    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 2289
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v22

    .line 2290
    const v24, 0x11200ba

    .line 2289
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 2292
    .local v7, "ephemeralGuests":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_181
    .catchall {:try_start_158 .. :try_end_181} :catchall_5a

    .line 2294
    if-eqz v11, :cond_185

    if-nez v7, :cond_19b

    :cond_185
    :try_start_185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    move/from16 v22, v0

    if-nez v22, :cond_19b

    .line 2295
    if-eqz v16, :cond_1a1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v22

    .line 2294
    if-eqz v22, :cond_1a1

    .line 2296
    :cond_19b
    move/from16 v0, p2

    or-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    .line 2299
    :cond_1a1
    new-instance v21, Landroid/content/pm/UserInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2300
    .local v21, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v22, v0

    add-int/lit8 v25, v22, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2302
    .local v14, "now":J
    const-wide v26, 0xdc46c32800L

    cmp-long v22, v14, v26

    if-lez v22, :cond_362

    .end local v14    # "now":J
    :goto_1d3
    move-object/from16 v0, v21

    iput-wide v14, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2303
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 2304
    sget-object v22, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2305
    new-instance v19, Lcom/android/server/pm/UserManagerService$UserData;

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2306
    .local v19, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_207
    .catchall {:try_start_185 .. :try_end_207} :catchall_366

    :try_start_207
    monitor-exit v24

    .line 2309
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2311
    if-eqz v16, :cond_25b

    .line 2312
    if-eqz v12, :cond_369

    .line 2313
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v22, v0

    const/16 v24, -0x2710

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_249

    .line 2314
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2315
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2317
    :cond_249
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_25b
    .catchall {:try_start_207 .. :try_end_25b} :catchall_5a

    :cond_25b
    :goto_25b
    :try_start_25b
    monitor-exit v23

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-class v23, Landroid/os/storage/StorageManager;

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/StorageManager;

    .line 2328
    .local v18, "storage":Landroid/os/storage/StorageManager;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v23, v0

    .line 2330
    const/16 v24, 0x3

    .line 2329
    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I)V

    .line 2332
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_2b4
    .catchall {:try_start_25b .. :try_end_2b4} :catchall_5d

    .line 2334
    :try_start_2b4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_2bb
    .catchall {:try_start_2b4 .. :try_end_2bb} :catchall_3b2

    :try_start_2bb
    monitor-exit v22

    .line 2336
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2337
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2338
    .local v17, "restrictions":Landroid/os/Bundle;
    if-eqz v11, :cond_2db

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_2cd
    .catchall {:try_start_2bb .. :try_end_2cd} :catchall_5d

    .line 2340
    :try_start_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_2da
    .catchall {:try_start_2cd .. :try_end_2da} :catchall_3b5

    :try_start_2da
    monitor-exit v23

    .line 2343
    :cond_2db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_2e2
    .catchall {:try_start_2da .. :try_end_2e2} :catchall_5d

    .line 2344
    :try_start_2e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_2f1
    .catchall {:try_start_2e2 .. :try_end_2f1} :catchall_3b8

    :try_start_2f1
    monitor-exit v23

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 2347
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v22, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2348
    .local v6, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v22, "android.intent.extra.user_handle"

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2350
    const-string/jumbo v24, "android.permission.MANAGE_USERS"

    .line 2349
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    if-eqz v11, :cond_3bb

    const-string/jumbo v22, "users_guest_created"

    :goto_332
    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_33d
    .catchall {:try_start_2f1 .. :try_end_33d} :catchall_5d

    .line 2353
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2355
    return-object v21

    .line 2278
    .end local v6    # "addedIntent":Landroid/content/Intent;
    .end local v7    # "ephemeralGuests":Z
    .end local v17    # "restrictions":Landroid/os/Bundle;
    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .end local v19    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v20    # "userId":I
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_341
    if-nez v12, :cond_160

    :try_start_343
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v22

    if-nez v22, :cond_160

    .line 2279
    or-int/lit8 p2, p2, 0x1

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_352
    .catchall {:try_start_343 .. :try_end_352} :catchall_5a

    .line 2281
    :try_start_352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    move/from16 v24, v0
    :try_end_358
    .catchall {:try_start_352 .. :try_end_358} :catchall_35f

    if-nez v24, :cond_35c

    .line 2282
    or-int/lit8 p2, p2, 0x2

    :cond_35c
    :try_start_35c
    monitor-exit v22

    goto/16 :goto_160

    .line 2280
    :catchall_35f
    move-exception v24

    monitor-exit v22

    throw v24

    .line 2302
    .restart local v7    # "ephemeralGuests":Z
    .restart local v14    # "now":J
    .restart local v20    # "userId":I
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_362
    const-wide/16 v14, 0x0

    goto/16 :goto_1d3

    .line 2292
    .end local v14    # "now":J
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_366
    move-exception v22

    monitor-exit v24

    throw v22

    .line 2318
    .restart local v19    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_369
    if-eqz v13, :cond_25b

    .line 2319
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v22, v0

    const/16 v24, -0x2710

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_39e

    .line 2320
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2321
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2323
    :cond_39e
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_3b0
    .catchall {:try_start_35c .. :try_end_3b0} :catchall_5a

    goto/16 :goto_25b

    .line 2333
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    :catchall_3b2
    move-exception v23

    :try_start_3b3
    monitor-exit v22

    throw v23

    .line 2339
    .restart local v17    # "restrictions":Landroid/os/Bundle;
    :catchall_3b5
    move-exception v22

    monitor-exit v23

    throw v22

    .line 2343
    :catchall_3b8
    move-exception v22

    monitor-exit v23

    throw v22

    .line 2351
    .restart local v6    # "addedIntent":Landroid/content/Intent;
    :cond_3bb
    const-string/jumbo v22, "users_user_created"
    :try_end_3be
    .catchall {:try_start_3b3 .. :try_end_3be} :catchall_5d

    goto/16 :goto_332
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 3536
    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3537
    const-string/jumbo v2, ""

    .line 3536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    return-void
.end method

.method public static enforceSerialNumber(Ljava/io/File;I)V
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2981
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2985
    const-string/jumbo v2, "UserManagerService"

    const-string/jumbo v3, "Device is emulating FBE; assuming current serial number is valid"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    return-void

    .line 2989
    :cond_10
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->getSerialNumber(Ljava/io/File;)I

    move-result v1

    .line 2990
    .local v1, "foundSerial":I
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    const/4 v2, -0x1

    if-ne v1, v2, :cond_7d

    .line 2993
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Serial number missing on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; assuming current is valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    :try_start_5d
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->setSerialNumber(Ljava/io/File;I)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    .line 2980
    :cond_60
    :goto_60
    return-void

    .line 2996
    :catch_61
    move-exception v0

    .line 2997
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set serial number on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 3000
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7d
    if-eq v1, p1, :cond_60

    .line 3001
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3002
    const-string/jumbo v4, " doesn\'t match expected "

    .line 3001
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private fallbackToSingleUserLP()V
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1812
    const/16 v2, 0x10

    .line 1815
    .local v2, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v8

    if-nez v8, :cond_c

    .line 1816
    const/16 v2, 0x13

    .line 1819
    :cond_c
    new-instance v4, Landroid/content/pm/UserInfo;

    invoke-direct {v4, v7, v9, v9, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1820
    .local v4, "system":Landroid/content/pm/UserInfo;
    new-instance v5, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v5, v9}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1821
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1822
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1823
    :try_start_1b
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_4e

    monitor-exit v8

    .line 1825
    const/16 v8, 0xa

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 1826
    const/4 v8, 0x6

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 1828
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1830
    .local v3, "restrictions":Landroid/os/Bundle;
    :try_start_2f
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1831
    const v9, 0x107005c

    .line 1830
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1832
    .local v0, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v8, v0

    :goto_3d
    if-ge v7, v8, :cond_5b

    aget-object v6, v0, v7

    .line 1833
    .local v6, "userRestriction":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 1834
    const/4 v9, 0x1

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_4b} :catch_51

    .line 1832
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 1822
    .end local v0    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    .end local v3    # "restrictions":Landroid/os/Bundle;
    .end local v6    # "userRestriction":Ljava/lang/String;
    :catchall_4e
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1837
    .restart local v3    # "restrictions":Landroid/os/Bundle;
    :catch_51
    move-exception v1

    .line 1838
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1841
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5b
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1842
    :try_start_5e
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_72

    monitor-exit v8

    .line 1845
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 1846
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 1848
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1849
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 1811
    return-void

    .line 1841
    :catchall_72
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 7

    .prologue
    .line 2388
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2389
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2390
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_2f

    .line 2391
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2392
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_23

    .line 2390
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2392
    :cond_23
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_32

    move-result v3

    if-nez v3, :cond_20

    monitor-exit v4

    .line 2393
    return-object v2

    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2f
    monitor-exit v4

    .line 2397
    const/4 v3, 0x0

    return-object v3

    .line 2388
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_32
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .registers 7

    .prologue
    .line 1484
    const/4 v0, 0x0

    .line 1485
    .local v0, "aliveUserCount":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1487
    .local v2, "totalUserCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_2e

    .line 1488
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1489
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1490
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1487
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1490
    :cond_27
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_24

    .line 1491
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1494
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2e
    return v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1206
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1208
    .local v0, "restrictions":Landroid/os/Bundle;
    if-nez v0, :cond_16

    .line 1209
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1210
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit v2

    .line 1212
    return-object v0

    .line 1206
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .prologue
    .line 372
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 373
    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 372
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNextAvailableId()I
    .registers 4

    .prologue
    .line 2956
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2957
    const/16 v0, 0xa

    .line 2958
    .local v0, "i":I
    :goto_5
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_1e

    .line 2959
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_28

    move-result v1

    if-eqz v1, :cond_1c

    .line 2962
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    monitor-exit v2

    .line 2960
    return v0

    :cond_1e
    monitor-exit v2

    .line 2965
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No user id available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2956
    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 611
    .local v3, "user":Landroid/content/pm/UserInfo;
    new-instance v2, Landroid/util/IntArray;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 612
    .local v2, "result":Landroid/util/IntArray;
    if-nez v3, :cond_12

    .line 614
    return-object v2

    .line 616
    :cond_12
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 617
    .local v4, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v4, :cond_4a

    .line 618
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 619
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 617
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 622
    :cond_2e
    if-eqz p2, :cond_36

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 625
    :cond_36
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 628
    iget-boolean v5, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_2b

    .line 631
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_2b

    .line 633
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_4a
    return-object v2
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 682
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 683
    .local v1, "profile":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_8

    .line 684
    return-object v3

    .line 686
    :cond_8
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 687
    .local v0, "parentUserId":I
    const/16 v2, -0x2710

    if-ne v0, v2, :cond_f

    .line 688
    return-object v3

    .line 690
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    return-object v2
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .param p3, "fullInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v2

    .line 589
    .local v2, "profileIds":Landroid/util/IntArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3a

    .line 591
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 592
    .local v1, "profileId":I
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 594
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p3, :cond_35

    .line 595
    new-instance v4, Landroid/content/pm/UserInfo;

    invoke-direct {v4, v3}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 596
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    iput-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 597
    iput-object v7, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v3, v4

    .line 601
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_2f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 599
    :cond_35
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v3

    goto :goto_2f

    .line 603
    .end local v1    # "profileId":I
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3a
    return-object v5
.end method

.method private static getSerialNumber(Ljava/io/File;)I
    .registers 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3028
    const/16 v5, 0x100

    :try_start_2
    new-array v0, v5, [B

    .line 3029
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user.serial"

    invoke-static {v5, v6, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v3

    .line 3030
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_15} :catch_35

    .line 3032
    .local v4, "serial":Ljava/lang/String;
    :try_start_15
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_18} :catch_35

    move-result v5

    return v5

    .line 3033
    :catch_1a
    move-exception v2

    .line 3034
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_1b
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad serial number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_35
    .catch Landroid/system/ErrnoException; {:try_start_1b .. :try_end_35} :catch_35

    .line 3036
    .end local v0    # "buf":[B
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "len":I
    .end local v4    # "serial":Ljava/lang/String;
    :catch_35
    move-exception v1

    .line 3037
    .local v1, "e":Landroid/system/ErrnoException;
    iget v5, v1, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENODATA:I

    if-ne v5, v6, :cond_3e

    .line 3038
    const/4 v5, -0x1

    return v5

    .line 3040
    :cond_3e
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2661
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2663
    .local v0, "ident":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2664
    const/16 v4, 0x2000

    .line 2663
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_16
    .catchall {:try_start_4 .. :try_end_12} :catchall_1c

    .line 2668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2663
    return v3

    .line 2665
    :catch_16
    move-exception v2

    .line 2666
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 2668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2666
    return v3

    .line 2667
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_1c
    move-exception v3

    .line 2668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2667
    throw v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 953
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 955
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 958
    :cond_19
    return-object v0

    .line 956
    :cond_1a
    return-object v2
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 978
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    .line 977
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 943
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 945
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_19

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 949
    :cond_19
    if-eqz v0, :cond_1d

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_1d
    return-object v1

    .line 946
    :cond_1e
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserInfo: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 966
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 967
    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 968
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v2

    return-object v1

    .line 966
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .registers 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1591
    .local v0, "callingUid":I
    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1592
    if-nez v0, :cond_12

    .line 1591
    :cond_11
    :goto_11
    return v1

    .line 1594
    :cond_12
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    .line 1593
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_11

    .line 1597
    const-string/jumbo v3, "android.permission.CREATE_USERS"

    .line 1596
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_11

    move v1, v2

    goto :goto_11
.end method

.method private static final hasManageUsersPermission()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1577
    .local v0, "callingUid":I
    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1578
    if-nez v0, :cond_11

    .line 1577
    :cond_10
    :goto_10
    return v1

    .line 1580
    :cond_11
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    .line 1581
    const/4 v4, -0x1

    .line 1579
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_10

    move v1, v2

    goto :goto_10
.end method

.method private initDefaultGuestRestrictions()V
    .registers 5

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    .line 1087
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1088
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1090
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1091
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1092
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_su"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit v1

    .line 1085
    return-void

    .line 1086
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1198
    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 6
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 695
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_14

    .line 696
    iget v2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_17

    .line 697
    iget v2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_15

    .line 695
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 697
    goto :goto_14

    :cond_17
    move v0, v1

    .line 696
    goto :goto_14
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .prologue
    const/16 v5, -0x2710

    const/4 v2, 0x0

    .line 659
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 660
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 661
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_10

    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_27

    if-ne v4, v5, :cond_12

    :cond_10
    monitor-exit v3

    .line 662
    return v2

    .line 664
    :cond_12
    :try_start_12
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 665
    .local v0, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1c

    .line 666
    iget v4, v0, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_27

    if-ne v4, v5, :cond_1e

    :cond_1c
    monitor-exit v3

    .line 667
    return v2

    .line 669
    :cond_1e
    :try_start_1e
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v0, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_27

    if-ne v4, v5, :cond_25

    const/4 v2, 0x1

    :cond_25
    monitor-exit v3

    return v2

    .line 659
    .end local v0    # "otherUserInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isUserLimitReached()Z
    .registers 4

    .prologue
    .line 1448
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1449
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result v0

    .local v0, "count":I
    monitor-exit v1

    .line 1451
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_13

    const/4 v1, 0x1

    :goto_f
    return v1

    .line 1448
    .end local v0    # "count":I
    :catchall_10
    move-exception v2

    monitor-exit v1

    throw v2

    .line 1451
    .restart local v0    # "count":I
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 1376
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1377
    return-void

    .line 1380
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1381
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1383
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1371
    return-void
.end method

.method static readApplicationRestrictionsLP(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 9
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;

    .prologue
    .line 2681
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2682
    .local v3, "restrictions":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2683
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    .line 2684
    return-object v3

    .line 2687
    :cond_15
    const/4 v1, 0x0

    .line 2689
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_16
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 2690
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2691
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2692
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2693
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_53

    .line 2694
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to read restrictions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2695
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    .line 2694
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4f} :catch_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_4f} :catch_5e
    .catchall {:try_start_16 .. :try_end_4f} :catchall_85

    .line 2704
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2696
    return-object v3

    .line 2698
    :cond_53
    :goto_53
    :try_start_53
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_81

    .line 2699
    invoke-static {v3, v4, v2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5d} :catch_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_5d} :catch_5e
    .catchall {:try_start_53 .. :try_end_5d} :catchall_85

    goto :goto_53

    .line 2701
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5e
    move-exception v0

    .line 2702
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5f
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_85

    .line 2704
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2706
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_80
    return-object v3

    .line 2704
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_81
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_80

    .line 2703
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_85
    move-exception v5

    .line 2704
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2703
    throw v5
.end method

.method private readApplicationRestrictionsLP(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2674
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 2675
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2674
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2676
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLP(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2755
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2756
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2757
    .local v1, "outerDepth":I
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2758
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 2760
    :cond_13
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2711
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 2712
    .local v6, "type":I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_68

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "entry"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 2713
    const-string/jumbo v10, "key"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2714
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2715
    .local v7, "valType":Ljava/lang/String;
    const-string/jumbo v10, "m"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2716
    .local v4, "multiple":Ljava/lang/String;
    if-eqz v4, :cond_69

    .line 2717
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2718
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2719
    .local v2, "count":I
    :cond_35
    :goto_35
    if-lez v2, :cond_5c

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_5c

    .line 2720
    const/4 v10, 0x2

    if-ne v6, v10, :cond_35

    .line 2721
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2720
    if-eqz v10, :cond_35

    .line 2722
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    .line 2726
    :cond_5c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 2727
    .local v9, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2728
    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2710
    .end local v2    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "multiple":Ljava/lang/String;
    .end local v7    # "valType":Ljava/lang/String;
    .end local v9    # "valueStrings":[Ljava/lang/String;
    :cond_68
    :goto_68
    return-void

    .line 2729
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "multiple":Ljava/lang/String;
    .restart local v7    # "valType":Ljava/lang/String;
    :cond_69
    const-string/jumbo v10, "B"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 2730
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_68

    .line 2731
    :cond_7a
    const-string/jumbo v10, "BA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_aa

    .line 2732
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 2733
    .local v5, "outerDepth":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2734
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_8c
    invoke-static {p2, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 2735
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    .line 2736
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 2739
    .end local v1    # "childBundle":Landroid/os/Bundle;
    :cond_9a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    .line 2738
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_68

    .line 2741
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v5    # "outerDepth":I
    :cond_aa
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2742
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v10, "b"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 2743
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_68

    .line 2744
    :cond_c3
    const-string/jumbo v10, "i"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 2745
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_68

    .line 2747
    :cond_d4
    invoke-virtual {p0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 2165
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2166
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    return p3

    .line 2168
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    return v2

    .line 2169
    :catch_d
    move-exception v0

    .line 2170
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    const/4 v2, 0x0

    .line 2175
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2176
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    return-wide p3

    .line 2178
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide v2

    return-wide v2

    .line 2179
    :catch_d
    move-exception v0

    .line 2180
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 45
    .param p1, "id"    # I

    .prologue
    .line 2029
    const/4 v12, 0x0

    .line 2030
    .local v12, "flags":I
    move/from16 v31, p1

    .line 2031
    .local v31, "serialNumber":I
    const/16 v20, 0x0

    .line 2032
    .local v20, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2033
    .local v6, "account":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2034
    .local v14, "iconPath":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 2035
    .local v8, "creationTime":J
    const-wide/16 v18, 0x0

    .line 2036
    .local v18, "lastLoggedInTime":J
    const/16 v16, 0x0

    .line 2037
    .local v16, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v26, -0x2710

    .line 2038
    .local v26, "profileGroupId":I
    const/16 v27, -0x2710

    .line 2039
    .local v27, "restrictedProfileParentId":I
    const/16 v23, 0x0

    .line 2040
    .local v23, "partial":Z
    const/4 v13, 0x0

    .line 2041
    .local v13, "guestToRemove":Z
    const/16 v25, 0x0

    .line 2042
    .local v25, "persistSeedData":Z
    const/16 v28, 0x0

    .line 2043
    .local v28, "seedAccountName":Ljava/lang/String;
    const/16 v30, 0x0

    .line 2044
    .local v30, "seedAccountType":Ljava/lang/String;
    const/16 v29, 0x0

    .line 2045
    .local v29, "seedAccountOptions":Landroid/os/PersistableBundle;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2046
    .local v7, "baseRestrictions":Landroid/os/Bundle;
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2048
    .local v17, "localRestrictions":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 2051
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_27
    new-instance v36, Landroid/util/AtomicFile;

    new-instance v39, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ".xml"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v39 .. v41}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2052
    .local v36, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v36 .. v36}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    .line 2053
    .local v11, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    .line 2054
    .local v22, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v39, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v39 .. v39}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-interface {v0, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2056
    :cond_68
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .local v34, "type":I
    const/16 v39, 0x2

    move/from16 v0, v34

    move/from16 v1, v39

    if-eq v0, v1, :cond_7c

    .line 2057
    const/16 v39, 0x1

    move/from16 v0, v34

    move/from16 v1, v39

    if-ne v0, v1, :cond_68

    .line 2061
    :cond_7c
    const/16 v39, 0x2

    move/from16 v0, v34

    move/from16 v1, v39

    if-eq v0, v1, :cond_ac

    .line 2062
    const-string/jumbo v39, "UserManagerService"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Unable to read user "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_a2} :catch_233
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_a2} :catch_251
    .catchall {:try_start_27 .. :try_end_a2} :catchall_31f

    .line 2063
    const/16 v39, 0x0

    .line 2154
    if-eqz v11, :cond_a9

    .line 2156
    :try_start_a6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 2063
    :cond_a9
    :goto_a9
    return-object v39

    .line 2157
    :catch_aa
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    goto :goto_a9

    .line 2066
    .end local v10    # "e":Ljava/io/IOException;
    :cond_ac
    const/16 v39, 0x2

    move/from16 v0, v34

    move/from16 v1, v39

    if-ne v0, v1, :cond_28e

    :try_start_b4
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "user"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_28e

    .line 2067
    const-string/jumbo v39, "id"

    const/16 v40, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v32

    .line 2068
    .local v32, "storedId":I
    move/from16 v0, v32

    move/from16 v1, p1

    if-eq v0, v1, :cond_eb

    .line 2069
    const-string/jumbo v39, "UserManagerService"

    const-string/jumbo v40, "User id does not match the file name"

    invoke-static/range {v39 .. v40}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_e1} :catch_233
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b4 .. :try_end_e1} :catch_251
    .catchall {:try_start_b4 .. :try_end_e1} :catchall_31f

    .line 2070
    const/16 v39, 0x0

    .line 2154
    if-eqz v11, :cond_e8

    .line 2156
    :try_start_e5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9

    .line 2070
    :cond_e8
    :goto_e8
    return-object v39

    .line 2157
    :catch_e9
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_e8

    .line 2072
    .end local v10    # "e":Ljava/io/IOException;
    :cond_eb
    :try_start_eb
    const-string/jumbo v39, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v39

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v31

    .line 2073
    const-string/jumbo v39, "flags"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 2074
    const-string/jumbo v39, "icon"

    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2075
    .local v14, "iconPath":Ljava/lang/String;
    const-string/jumbo v39, "created"

    const-wide/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v39

    move-wide/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 2076
    const-string/jumbo v39, "lastLoggedIn"

    const-wide/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v39

    move-wide/from16 v3, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 2078
    const-string/jumbo v39, "lastLoggedInFingerprint"

    .line 2077
    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2079
    .local v16, "lastLoggedInFingerprint":Ljava/lang/String;
    const-string/jumbo v39, "profileGroupId"

    .line 2080
    const/16 v40, -0x2710

    .line 2079
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v26

    .line 2082
    const-string/jumbo v39, "restrictedProfileParentId"

    const/16 v40, -0x2710

    .line 2081
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v27

    .line 2083
    const-string/jumbo v39, "partial"

    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2084
    .local v38, "valueString":Ljava/lang/String;
    const-string/jumbo v39, "true"

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_18b

    .line 2085
    const/16 v23, 0x1

    .line 2087
    :cond_18b
    const-string/jumbo v39, "guestToRemove"

    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2088
    const-string/jumbo v39, "true"

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1a8

    .line 2089
    const/4 v13, 0x1

    .line 2092
    :cond_1a8
    const-string/jumbo v39, "seedAccountName"

    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2093
    .local v28, "seedAccountName":Ljava/lang/String;
    const-string/jumbo v39, "seedAccountType"

    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2094
    .local v30, "seedAccountType":Ljava/lang/String;
    if-nez v28, :cond_1ca

    if-eqz v30, :cond_1cc

    .line 2095
    :cond_1ca
    const/16 v25, 0x1

    .line 2098
    :cond_1cc
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    .line 2099
    .end local v6    # "account":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v29    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v21, "outerDepth":I
    :cond_1d0
    :goto_1d0
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    const/16 v39, 0x1

    move/from16 v0, v34

    move/from16 v1, v39

    if-eq v0, v1, :cond_28e

    .line 2100
    const/16 v39, 0x3

    move/from16 v0, v34

    move/from16 v1, v39

    if-ne v0, v1, :cond_1ee

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v21

    if-le v0, v1, :cond_28e

    .line 2101
    :cond_1ee
    const/16 v39, 0x3

    move/from16 v0, v34

    move/from16 v1, v39

    if-eq v0, v1, :cond_1d0

    const/16 v39, 0x4

    move/from16 v0, v34

    move/from16 v1, v39

    if-eq v0, v1, :cond_1d0

    .line 2104
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v33

    .line 2105
    .local v33, "tag":Ljava/lang/String;
    const-string/jumbo v39, "name"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_220

    .line 2106
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .line 2107
    const/16 v39, 0x4

    move/from16 v0, v34

    move/from16 v1, v39

    if-ne v0, v1, :cond_1d0

    .line 2108
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v20

    .local v20, "name":Ljava/lang/String;
    goto :goto_1d0

    .line 2110
    .end local v20    # "name":Ljava/lang/String;
    :cond_220
    const-string/jumbo v39, "restrictions"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_23c

    .line 2111
    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_232} :catch_233
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_eb .. :try_end_232} :catch_251
    .catchall {:try_start_eb .. :try_end_232} :catchall_31f

    goto :goto_1d0

    .line 2151
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "iconPath":Ljava/lang/String;
    .end local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "seedAccountName":Ljava/lang/String;
    .end local v30    # "seedAccountType":Ljava/lang/String;
    .end local v32    # "storedId":I
    .end local v33    # "tag":Ljava/lang/String;
    .end local v34    # "type":I
    .end local v36    # "userFile":Landroid/util/AtomicFile;
    .end local v38    # "valueString":Ljava/lang/String;
    :catch_233
    move-exception v15

    .line 2154
    .local v15, "ioe":Ljava/io/IOException;
    if-eqz v11, :cond_239

    .line 2156
    :try_start_236
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_239} :catch_328

    .line 2161
    .end local v15    # "ioe":Ljava/io/IOException;
    :cond_239
    :goto_239
    const/16 v39, 0x0

    return-object v39

    .line 2112
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "iconPath":Ljava/lang/String;
    .restart local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "seedAccountName":Ljava/lang/String;
    .restart local v30    # "seedAccountType":Ljava/lang/String;
    .restart local v32    # "storedId":I
    .restart local v33    # "tag":Ljava/lang/String;
    .restart local v34    # "type":I
    .restart local v36    # "userFile":Landroid/util/AtomicFile;
    .restart local v38    # "valueString":Ljava/lang/String;
    :cond_23c
    :try_start_23c
    const-string/jumbo v39, "device_policy_restrictions"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_25a

    .line 2113
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_250} :catch_233
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23c .. :try_end_250} :catch_251
    .catchall {:try_start_23c .. :try_end_250} :catchall_31f

    goto :goto_1d0

    .line 2152
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "iconPath":Ljava/lang/String;
    .end local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "seedAccountName":Ljava/lang/String;
    .end local v30    # "seedAccountType":Ljava/lang/String;
    .end local v32    # "storedId":I
    .end local v33    # "tag":Ljava/lang/String;
    .end local v34    # "type":I
    .end local v36    # "userFile":Landroid/util/AtomicFile;
    .end local v38    # "valueString":Ljava/lang/String;
    :catch_251
    move-exception v24

    .line 2154
    .local v24, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v11, :cond_239

    .line 2156
    :try_start_254
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_257
    .catch Ljava/io/IOException; {:try_start_254 .. :try_end_257} :catch_258

    goto :goto_239

    .line 2157
    :catch_258
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_239

    .line 2114
    .end local v10    # "e":Ljava/io/IOException;
    .end local v24    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "iconPath":Ljava/lang/String;
    .restart local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "seedAccountName":Ljava/lang/String;
    .restart local v30    # "seedAccountType":Ljava/lang/String;
    .restart local v32    # "storedId":I
    .restart local v33    # "tag":Ljava/lang/String;
    .restart local v34    # "type":I
    .restart local v36    # "userFile":Landroid/util/AtomicFile;
    .restart local v38    # "valueString":Ljava/lang/String;
    :cond_25a
    :try_start_25a
    const-string/jumbo v39, "account"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_279

    .line 2115
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .line 2116
    const/16 v39, 0x4

    move/from16 v0, v34

    move/from16 v1, v39

    if-ne v0, v1, :cond_1d0

    .line 2117
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .local v6, "account":Ljava/lang/String;
    goto/16 :goto_1d0

    .line 2119
    .end local v6    # "account":Ljava/lang/String;
    :cond_279
    const-string/jumbo v39, "seedAccountOptions"

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1d0

    .line 2120
    invoke-static/range {v22 .. v22}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v29

    .line 2121
    .local v29, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v25, 0x1

    goto/16 :goto_1d0

    .line 2127
    .end local v14    # "iconPath":Ljava/lang/String;
    .end local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v28    # "seedAccountName":Ljava/lang/String;
    .end local v29    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v30    # "seedAccountType":Ljava/lang/String;
    .end local v32    # "storedId":I
    .end local v33    # "tag":Ljava/lang/String;
    .end local v38    # "valueString":Ljava/lang/String;
    :cond_28e
    new-instance v37, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v37

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v14, v12}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2128
    .local v37, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v31

    move-object/from16 v1, v37

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2129
    move-object/from16 v0, v37

    iput-wide v8, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2130
    move-wide/from16 v0, v18

    move-object/from16 v2, v37

    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2131
    move-object/from16 v0, v16

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2132
    move/from16 v0, v23

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 2133
    move-object/from16 v0, v37

    iput-boolean v13, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2134
    move/from16 v0, v26

    move-object/from16 v1, v37

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2135
    move/from16 v0, v27

    move-object/from16 v1, v37

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2138
    new-instance v35, Lcom/android/server/pm/UserManagerService$UserData;

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2139
    .local v35, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2140
    move-object/from16 v0, v35

    iput-object v6, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 2141
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 2142
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 2143
    move/from16 v0, v25

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 2144
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    move-object/from16 v40, v0

    monitor-enter v40
    :try_end_2f9
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_2f9} :catch_233
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25a .. :try_end_2f9} :catch_251
    .catchall {:try_start_25a .. :try_end_2f9} :catchall_31f

    .line 2147
    :try_start_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_315
    .catchall {:try_start_2f9 .. :try_end_315} :catchall_31c

    :try_start_315
    monitor-exit v40
    :try_end_316
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_316} :catch_233
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_315 .. :try_end_316} :catch_251
    .catchall {:try_start_315 .. :try_end_316} :catchall_31f

    .line 2154
    if-eqz v11, :cond_31b

    .line 2156
    :try_start_318
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_31b
    .catch Ljava/io/IOException; {:try_start_318 .. :try_end_31b} :catch_326

    .line 2150
    :cond_31b
    :goto_31b
    return-object v35

    .line 2146
    :catchall_31c
    move-exception v39

    :try_start_31d
    monitor-exit v40

    throw v39
    :try_end_31f
    .catch Ljava/io/IOException; {:try_start_31d .. :try_end_31f} :catch_233
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31d .. :try_end_31f} :catch_251
    .catchall {:try_start_31d .. :try_end_31f} :catchall_31f

    .line 2153
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "type":I
    .end local v35    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v36    # "userFile":Landroid/util/AtomicFile;
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_31f
    move-exception v39

    .line 2154
    if-eqz v11, :cond_325

    .line 2156
    :try_start_322
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_325
    .catch Ljava/io/IOException; {:try_start_322 .. :try_end_325} :catch_32b

    .line 2153
    :cond_325
    :goto_325
    throw v39

    .line 2157
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v34    # "type":I
    .restart local v35    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v36    # "userFile":Landroid/util/AtomicFile;
    .restart local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_326
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_31b

    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "type":I
    .end local v35    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v36    # "userFile":Landroid/util/AtomicFile;
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "ioe":Ljava/io/IOException;
    :catch_328
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto/16 :goto_239

    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "ioe":Ljava/io/IOException;
    :catch_32b
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_325
.end method

.method private readUserListLP()V
    .registers 16

    .prologue
    .line 1655
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_c

    .line 1656
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 1657
    return-void

    .line 1659
    :cond_c
    const/4 v1, 0x0

    .line 1660
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v10, Landroid/util/AtomicFile;

    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v10, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1662
    .local v10, "userListFile":Landroid/util/AtomicFile;
    :try_start_14
    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1663
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1664
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1666
    :cond_25
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v12, 0x2

    if-eq v8, v12, :cond_2f

    .line 1667
    const/4 v12, 0x1

    if-ne v8, v12, :cond_25

    .line 1671
    :cond_2f
    const/4 v12, 0x2

    if-eq v8, v12, :cond_42

    .line 1672
    const-string/jumbo v12, "UserManagerService"

    const-string/jumbo v13, "Unable to read user list"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_3e} :catch_c2
    .catchall {:try_start_14 .. :try_end_3e} :catchall_cd

    .line 1741
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1674
    return-void

    .line 1677
    :cond_42
    const/4 v12, -0x1

    :try_start_43
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 1678
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "users"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    .line 1679
    const-string/jumbo v12, "nextSerialNumber"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1680
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_62

    .line 1681
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 1683
    :cond_62
    const-string/jumbo v12, "version"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1684
    .local v11, "versionNumber":Ljava/lang/String;
    if-eqz v11, :cond_72

    .line 1685
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 1689
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v11    # "versionNumber":Ljava/lang/String;
    :cond_72
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1691
    .local v5, "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_77
    :goto_77
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_130

    .line 1692
    const/4 v12, 0x2

    if-ne v8, v12, :cond_77

    .line 1693
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1694
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v12, "user"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d2

    .line 1695
    const-string/jumbo v12, "id"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1697
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v9

    .line 1699
    .local v9, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v9, :cond_77

    .line 1700
    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_a3} :catch_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_a3} :catch_c2
    .catchall {:try_start_43 .. :try_end_a3} :catchall_cd

    .line 1701
    :try_start_a3
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v14, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1702
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_b8

    .line 1703
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v14, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v14, :cond_c0

    .line 1704
    :cond_b8
    iget-object v12, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_c0
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_ca

    :cond_c0
    :try_start_c0
    monitor-exit v13
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c1} :catch_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_c1} :catch_c2
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_cd

    goto :goto_77

    .line 1738
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catch_c2
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_cd

    .line 1741
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1654
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c9
    return-void

    .line 1700
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .restart local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_ca
    move-exception v12

    :try_start_cb
    monitor-exit v13

    throw v12
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cd} :catch_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cb .. :try_end_cd} :catch_c2
    .catchall {:try_start_cb .. :try_end_cd} :catchall_cd

    .line 1740
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_cd
    move-exception v12

    .line 1741
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1740
    throw v12

    .line 1708
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_d2
    :try_start_d2
    const-string/jumbo v12, "guestRestrictions"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_115

    .line 1709
    :cond_db
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_77

    .line 1710
    const/4 v12, 0x3

    if-eq v8, v12, :cond_77

    .line 1711
    const/4 v12, 0x2

    if-ne v8, v12, :cond_db

    .line 1712
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "restrictions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_103

    .line 1713
    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v13
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_f8} :catch_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d2 .. :try_end_f8} :catch_c2
    .catchall {:try_start_d2 .. :try_end_f8} :catchall_cd

    .line 1715
    :try_start_f8
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 1714
    invoke-static {v7, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_fd
    .catchall {:try_start_f8 .. :try_end_fd} :catchall_100

    :try_start_fd
    monitor-exit v13

    goto/16 :goto_77

    .line 1713
    :catchall_100
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1717
    :cond_103
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "device_policy_restrictions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_77

    .line 1719
    invoke-static {v7, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    goto/16 :goto_77

    .line 1725
    :cond_115
    const-string/jumbo v12, "globalRestrictionOwnerUserId"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_77

    .line 1726
    const-string/jumbo v12, "id"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1727
    .local v6, "ownerUserId":Ljava/lang/String;
    if-eqz v6, :cond_77

    .line 1728
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    goto/16 :goto_77

    .line 1733
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "ownerUserId":Ljava/lang/String;
    :cond_130
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_133} :catch_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fd .. :try_end_133} :catch_c2
    .catchall {:try_start_fd .. :try_end_133} :catchall_cd

    .line 1734
    :try_start_133
    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_140

    :try_start_135
    monitor-exit v12

    .line 1736
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 1737
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_13c} :catch_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_135 .. :try_end_13c} :catch_c2
    .catchall {:try_start_135 .. :try_end_13c} :catchall_cd

    .line 1741
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_c9

    .line 1733
    :catchall_140
    move-exception v13

    :try_start_141
    monitor-exit v12

    throw v13
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_143} :catch_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_141 .. :try_end_143} :catch_c2
    .catchall {:try_start_141 .. :try_end_143} :catchall_cd
.end method

.method private removeNonSystemUsers()V
    .registers 8

    .prologue
    .line 3502
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3503
    .local v4, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3504
    :try_start_8
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3505
    .local v3, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v3, :cond_25

    .line 3506
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3507
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_22

    .line 3508
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_3c

    .line 3505
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_25
    monitor-exit v6

    .line 3512
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ui$iterator":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 3513
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    goto :goto_2a

    .line 3503
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    .end local v3    # "userSize":I
    :catchall_3c
    move-exception v5

    monitor-exit v6

    throw v5

    .line 3501
    .restart local v0    # "i":I
    .restart local v2    # "ui$iterator":Ljava/util/Iterator;
    .restart local v3    # "userSize":I
    :cond_3f
    return-void
.end method

.method private removeUserState(I)V
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 2563
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_7e

    .line 2572
    :goto_d
    :try_start_d
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 2573
    .local v2, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v2, :cond_16

    .line 2574
    invoke-interface {v2, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_a2

    .line 2581
    .end local v2    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_16
    :goto_16
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 2584
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2585
    const/4 v5, 0x3

    .line 2584
    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/PackageManagerService;->destroyUserData(II)V

    .line 2588
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2589
    :try_start_24
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2590
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_ae

    monitor-exit v5

    .line 2592
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v5

    .line 2593
    :try_start_32
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_b1

    monitor-exit v5

    .line 2595
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2596
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2597
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2598
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2599
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_b4

    monitor-exit v5

    .line 2602
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2603
    :try_start_53
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_b7

    monitor-exit v4

    .line 2606
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2607
    .local v3, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 2608
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2561
    return-void

    .line 2564
    .end local v3    # "userFile":Landroid/util/AtomicFile;
    :catch_7e
    move-exception v0

    .line 2566
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "UserManagerService"

    .line 2567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Destroying key for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed, continuing anyway"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2566
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 2576
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_a2
    move-exception v1

    .line 2577
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "unable to clear GK secure user id"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 2588
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_ae
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2592
    :catchall_b1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2595
    :catchall_b4
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2602
    :catchall_b7
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3154
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3155
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 3156
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v3, :cond_13

    .line 3157
    const-string/jumbo v4, "Error: couldn\'t get users"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    const/4 v4, 0x1

    return v4

    .line 3160
    :cond_13
    const-string/jumbo v4, "Users:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5d

    .line 3162
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4, v6}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v4

    if-eqz v4, :cond_59

    const-string/jumbo v2, " running"

    .line 3163
    .local v2, "running":Ljava/lang/String;
    :goto_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 3162
    .end local v2    # "running":Ljava/lang/String;
    :cond_59
    const-string/jumbo v2, ""

    .restart local v2    # "running":Ljava/lang/String;
    goto :goto_31

    .line 3165
    .end local v2    # "running":Ljava/lang/String;
    :cond_5d
    return v6
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 6
    .param p1, "UserData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .prologue
    const/4 v2, 0x1

    .line 1862
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1863
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1864
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1856
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 7
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .prologue
    .line 2612
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2613
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2615
    const-string/jumbo v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2616
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2617
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2611
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1021
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1023
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1024
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1020
    return-void
.end method

.method private static setSerialNumber(Ljava/io/File;I)V
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3014
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3015
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user.serial"

    sget v4, Landroid/system/OsConstants;->XATTR_CREATE:I

    invoke-static {v2, v3, v0, v4}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_16} :catch_17

    .line 3012
    return-void

    .line 3016
    .end local v0    # "buf":[B
    :catch_17
    move-exception v1

    .line 3017
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private updateUserIds()V
    .registers 9

    .prologue
    .line 2885
    const/4 v4, 0x0

    .line 2886
    .local v4, "num":I
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2887
    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2888
    .local v5, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v5, :cond_20

    .line 2889
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_1d

    .line 2890
    add-int/lit8 v4, v4, 0x1

    .line 2888
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2893
    :cond_20
    new-array v3, v4, [I

    .line 2894
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 2895
    .local v1, "n":I
    const/4 v0, 0x0

    move v2, v1

    .end local v1    # "n":I
    .local v2, "n":I
    :goto_25
    if-ge v0, v5, :cond_43

    .line 2896
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_4a

    .line 2897
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v2

    .line 2895
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_25

    .line 2900
    :cond_43
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_47

    monitor-exit v7

    .line 2884
    return-void

    .line 2886
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v3    # "newUsers":[I
    .end local v5    # "userSize":I
    :catchall_47
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "newUsers":[I
    .restart local v5    # "userSize":I
    :cond_4a
    move v1, v2

    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_3f
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "newRestrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1325
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1324
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1328
    .local v1, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_3b

    .line 1330
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1332
    .local v2, "prevBaseRestrictions":Landroid/os/Bundle;
    if-eq v2, p1, :cond_60

    move v3, v4

    :goto_1b
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1333
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_62

    :goto_26
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1336
    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 1337
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1338
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1342
    .end local v2    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_3b
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1344
    .local v0, "effective":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1352
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v3, :cond_52

    .line 1353
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v4, p0, v0, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1365
    :cond_52
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1367
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1322
    return-void

    .end local v0    # "effective":Landroid/os/Bundle;
    .restart local v2    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_60
    move v3, v5

    .line 1332
    goto :goto_1b

    :cond_62
    move v4, v5

    .line 1333
    goto :goto_26
.end method

.method private upgradeIfNecessaryLP()V
    .registers 11

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 1749
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 1750
    .local v1, "originalVersion":I
    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 1751
    .local v4, "userVersion":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2f

    .line 1753
    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 1754
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string/jumbo v5, "Primary"

    iget-object v6, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1755
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1756
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10405d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1755
    iput-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1757
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1759
    :cond_2e
    const/4 v4, 0x1

    .line 1762
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2f
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4a

    .line 1764
    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 1765
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_49

    .line 1766
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 1767
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1769
    :cond_49
    const/4 v4, 0x2

    .line 1773
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_4a
    const/4 v5, 0x4

    if-ge v4, v5, :cond_4e

    .line 1774
    const/4 v4, 0x4

    .line 1777
    :cond_4e
    const/4 v5, 0x5

    if-ge v4, v5, :cond_55

    .line 1778
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 1779
    const/4 v4, 0x5

    .line 1782
    :cond_55
    if-ge v4, v9, :cond_8e

    .line 1783
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    .line 1784
    .local v2, "splitSystemUser":Z
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1785
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5f
    :try_start_5f
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_8c

    .line 1786
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1788
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_89

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 1789
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 1790
    const/16 v7, -0x2710

    .line 1789
    if-ne v5, v7, :cond_89

    .line 1791
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v7, 0x0

    iput v7, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 1792
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_89
    .catchall {:try_start_5f .. :try_end_89} :catchall_b8

    .line 1785
    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_8c
    monitor-exit v6

    .line 1796
    const/4 v4, 0x6

    .line 1799
    .end local v0    # "i":I
    .end local v2    # "splitSystemUser":Z
    :cond_8e
    if-ge v4, v9, :cond_bb

    .line 1800
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " didn\'t upgrade as expected to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_b7
    :goto_b7
    return-void

    .line 1784
    .restart local v0    # "i":I
    .restart local v2    # "splitSystemUser":Z
    :catchall_b8
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1803
    .end local v0    # "i":I
    .end local v2    # "splitSystemUser":Z
    :cond_bb
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 1805
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v1, v5, :cond_b7

    .line 1806
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    goto :goto_b7
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 847
    if-eqz p1, :cond_16

    iget-object v1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_16

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_16

    .line 848
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 849
    .local v0, "withName":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 850
    return-object v0

    .line 852
    .end local v0    # "withName":Landroid/content/pm/UserInfo;
    :cond_16
    return-object p1
.end method

.method static writeApplicationRestrictionsLP(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;

    .prologue
    .line 2773
    const/4 v2, 0x0

    .line 2775
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2776
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2778
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2779
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2780
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2781
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2783
    const-string/jumbo v4, "restrictions"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2784
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2785
    const-string/jumbo v4, "restrictions"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2787
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2788
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_40

    .line 2772
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_3f
    return-void

    .line 2789
    :catch_40
    move-exception v1

    .line 2790
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2791
    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "Error writing application restrictions list"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method private writeApplicationRestrictionsLP(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 2765
    new-instance v0, Landroid/util/AtomicFile;

    .line 2766
    new-instance v1, Ljava/io/File;

    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 2767
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2766
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2765
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2768
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p2, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLP(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 2764
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 13
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1617
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1618
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "photo.png"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1619
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "photo.png.tmp"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1620
    .local v5, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_31

    .line 1621
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1623
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1624
    const/16 v7, 0x1f9

    .line 1625
    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 1622
    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1628
    :cond_31
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v4, "os":Ljava/io/FileOutputStream;
    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1629
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 1628
    if-eqz v6, :cond_52

    .line 1629
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v6

    .line 1628
    if-eqz v6, :cond_52

    .line 1630
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_52} :catch_5b

    .line 1633
    :cond_52
    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_59
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_55} :catch_5b

    .line 1637
    :goto_55
    :try_start_55
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_5b

    .line 1615
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :goto_58
    return-void

    .line 1634
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_59
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_55

    .line 1638
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :catch_5b
    move-exception v1

    .line 1639
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v7, "Error setting photo for user "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 15
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 2797
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2798
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2799
    .local v5, "value":Ljava/lang/Object;
    const-string/jumbo v7, "entry"

    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2800
    const-string/jumbo v7, "key"

    invoke-interface {p1, v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2802
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_41

    .line 2803
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "b"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2804
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2836
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3a
    :goto_3a
    const-string/jumbo v7, "entry"

    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 2805
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_41
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_56

    .line 2806
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "i"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2807
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3a

    .line 2808
    :cond_56
    if-eqz v5, :cond_5c

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_71

    .line 2809
    :cond_5c
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "s"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2810
    if-eqz v5, :cond_6d

    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    :goto_69
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3a

    .restart local v5    # "value":Ljava/lang/Object;
    :cond_6d
    const-string/jumbo v5, ""

    goto :goto_69

    .line 2811
    :cond_71
    instance-of v7, v5, Landroid/os/Bundle;

    if-eqz v7, :cond_84

    .line 2812
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "B"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2813
    check-cast v5, Landroid/os/Bundle;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_3a

    .line 2814
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_84
    instance-of v7, v5, [Landroid/os/Parcelable;

    if-eqz v7, :cond_c4

    .line 2815
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "BA"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v0, v5

    .line 2816
    check-cast v0, [Landroid/os/Parcelable;

    .line 2817
    .local v0, "array":[Landroid/os/Parcelable;
    array-length v9, v0

    move v7, v8

    :goto_96
    if-ge v7, v9, :cond_3a

    aget-object v4, v0, v7

    .line 2818
    .local v4, "parcelable":Landroid/os/Parcelable;
    instance-of v10, v4, Landroid/os/Bundle;

    if-nez v10, :cond_a7

    .line 2819
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "bundle-array can only hold Bundles"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2821
    :cond_a7
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2822
    const-string/jumbo v10, "type"

    const-string/jumbo v11, "B"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2823
    check-cast v4, Landroid/os/Bundle;

    .end local v4    # "parcelable":Landroid/os/Parcelable;
    invoke-static {v4, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2824
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2817
    add-int/lit8 v7, v7, 0x1

    goto :goto_96

    .line 2827
    .end local v0    # "array":[Landroid/os/Parcelable;
    :cond_c4
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "sa"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v6, v5

    .line 2828
    check-cast v6, [Ljava/lang/String;

    .line 2829
    .local v6, "values":[Ljava/lang/String;
    const-string/jumbo v7, "m"

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2830
    array-length v9, v6

    move v7, v8

    :goto_dd
    if-ge v7, v9, :cond_3a

    aget-object v1, v6, v7

    .line 2831
    .local v1, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2832
    if-eqz v1, :cond_f5

    .end local v1    # "choice":Ljava/lang/String;
    :goto_e9
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2833
    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2830
    add-int/lit8 v7, v7, 0x1

    goto :goto_dd

    .line 2832
    .restart local v1    # "choice":Ljava/lang/String;
    :cond_f5
    const-string/jumbo v1, ""

    goto :goto_e9

    .line 2796
    .end local v1    # "choice":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_f9
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 13
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .prologue
    const/16 v10, -0x2710

    .line 1879
    const/4 v1, 0x0

    .line 1880
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1882
    .local v4, "userFile":Landroid/util/AtomicFile;
    :try_start_27
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1883
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1886
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1887
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1888
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1889
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1891
    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1892
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v6, "user"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1893
    const-string/jumbo v6, "id"

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1894
    const-string/jumbo v6, "serialNumber"

    iget v7, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1895
    const-string/jumbo v6, "flags"

    iget v7, v5, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1896
    const-string/jumbo v6, "created"

    iget-wide v8, v5, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1897
    const-string/jumbo v6, "lastLoggedIn"

    .line 1898
    iget-wide v8, v5, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 1897
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1899
    iget-object v6, v5, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v6, :cond_a5

    .line 1900
    const-string/jumbo v6, "lastLoggedInFingerprint"

    .line 1901
    iget-object v7, v5, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 1900
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1903
    :cond_a5
    iget-object v6, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v6, :cond_b2

    .line 1904
    const-string/jumbo v6, "icon"

    iget-object v7, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1906
    :cond_b2
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v6, :cond_c0

    .line 1907
    const-string/jumbo v6, "partial"

    const-string/jumbo v7, "true"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1909
    :cond_c0
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v6, :cond_ce

    .line 1910
    const-string/jumbo v6, "guestToRemove"

    const-string/jumbo v7, "true"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1912
    :cond_ce
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v6, v10, :cond_df

    .line 1913
    const-string/jumbo v6, "profileGroupId"

    .line 1914
    iget v7, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1913
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1916
    :cond_df
    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v6, v10, :cond_f0

    .line 1917
    const-string/jumbo v6, "restrictedProfileParentId"

    .line 1918
    iget v7, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1917
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1921
    :cond_f0
    iget-boolean v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v6, :cond_10e

    .line 1922
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v6, :cond_101

    .line 1923
    const-string/jumbo v6, "seedAccountName"

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1925
    :cond_101
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v6, :cond_10e

    .line 1926
    const-string/jumbo v6, "seedAccountType"

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1929
    :cond_10e
    iget-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_125

    .line 1930
    const-string/jumbo v6, "name"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1931
    iget-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1932
    const-string/jumbo v6, "name"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1934
    :cond_125
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_128} :catch_18c

    .line 1936
    :try_start_128
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v8, "restrictions"

    .line 1935
    invoke-static {v3, v6, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1938
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 1939
    const-string/jumbo v8, "device_policy_restrictions"

    .line 1937
    invoke-static {v3, v6, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_148
    .catchall {:try_start_128 .. :try_end_148} :catchall_189

    :try_start_148
    monitor-exit v7

    .line 1942
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v6, :cond_160

    .line 1943
    const-string/jumbo v6, "account"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1944
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1945
    const-string/jumbo v6, "account"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1948
    :cond_160
    iget-boolean v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v6, :cond_17b

    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v6, :cond_17b

    .line 1949
    const-string/jumbo v6, "seedAccountOptions"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1950
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v3}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1951
    const-string/jumbo v6, "seedAccountOptions"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1953
    :cond_17b
    const-string/jumbo v6, "user"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1955
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1956
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1875
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_188
    return-void

    .line 1934
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_189
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_18c} :catch_18c

    .line 1957
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_18c
    move-exception v2

    .line 1958
    .local v2, "ioe":Ljava/lang/Exception;
    const-string/jumbo v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error writing user info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1959
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_188
.end method

.method private writeUserListLP()V
    .registers 15

    .prologue
    .line 1975
    const/4 v2, 0x0

    .line 1976
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Landroid/util/AtomicFile;

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1978
    .local v8, "userListFile":Landroid/util/AtomicFile;
    :try_start_8
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1979
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1982
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1983
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1984
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1985
    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1987
    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1988
    const-string/jumbo v9, "nextSerialNumber"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1989
    const-string/jumbo v9, "version"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1991
    const-string/jumbo v9, "guestRestrictions"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1992
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v10
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5a} :catch_b4

    .line 1994
    :try_start_5a
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v11, "restrictions"

    .line 1993
    invoke-static {v5, v9, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_b1

    :try_start_62
    monitor-exit v10

    .line 1996
    const-string/jumbo v9, "guestRestrictions"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1997
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6d} :catch_b4

    .line 1999
    :try_start_6d
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    const-string/jumbo v11, "device_policy_restrictions"

    .line 1998
    invoke-static {v5, v9, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_c2

    :try_start_75
    monitor-exit v10

    .line 2001
    const-string/jumbo v9, "globalRestrictionOwnerUserId"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    const-string/jumbo v9, "id"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2003
    const-string/jumbo v9, "globalRestrictionOwnerUserId"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2005
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_94} :catch_b4

    .line 2006
    :try_start_94
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    new-array v7, v9, [I

    .line 2007
    .local v7, "userIdsToWrite":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9d
    array-length v9, v7

    if-ge v3, v9, :cond_c5

    .line 2008
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2009
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    aput v9, v7, v3
    :try_end_ae
    .catchall {:try_start_94 .. :try_end_ae} :catchall_e8

    .line 2007
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 1992
    .end local v3    # "i":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userIdsToWrite":[I
    :catchall_b1
    move-exception v9

    :try_start_b2
    monitor-exit v10

    throw v9
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b4} :catch_b4

    .line 2022
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_b4
    move-exception v1

    .line 2023
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2024
    const-string/jumbo v9, "UserManagerService"

    const-string/jumbo v10, "Error writing user list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c1
    return-void

    .line 1997
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_c2
    move-exception v9

    :try_start_c3
    monitor-exit v10

    throw v9

    .restart local v3    # "i":I
    .restart local v7    # "userIdsToWrite":[I
    :cond_c5
    monitor-exit v10

    .line 2012
    const/4 v9, 0x0

    array-length v10, v7

    :goto_c8
    if-ge v9, v10, :cond_eb

    aget v4, v7, v9

    .line 2013
    .local v4, "id":I
    const-string/jumbo v11, "user"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2014
    const-string/jumbo v11, "id"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v5, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2015
    const-string/jumbo v11, "user"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2012
    add-int/lit8 v9, v9, 0x1

    goto :goto_c8

    .line 2005
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v7    # "userIdsToWrite":[I
    :catchall_e8
    move-exception v9

    monitor-exit v10

    throw v9

    .line 2018
    .restart local v3    # "i":I
    .restart local v7    # "userIdsToWrite":[I
    :cond_eb
    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2020
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2021
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_f8} :catch_b4

    goto :goto_c1
.end method


# virtual methods
.method applyUserRestrictionsForAllUsersLR()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .prologue
    .line 1414
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1418
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1440
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1409
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1404
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1403
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1456
    const-string/jumbo v6, "check if more managed profiles can be added."

    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1457
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1458
    return v5

    .line 1460
    :cond_f
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1461
    const-string/jumbo v7, "android.software.managed_users"

    .line 1460
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1462
    return v5

    .line 1465
    :cond_1f
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1466
    .local v0, "managedProfilesCount":I
    if-lez v0, :cond_33

    if-eqz p2, :cond_33

    move v1, v4

    .line 1467
    .local v1, "profilesRemovedCount":I
    :goto_2e
    sub-int v6, v0, v1

    if-lt v6, v4, :cond_35

    .line 1468
    return v5

    .end local v1    # "profilesRemovedCount":I
    :cond_33
    move v1, v5

    .line 1466
    goto :goto_2e

    .line 1470
    .restart local v1    # "profilesRemovedCount":I
    :cond_35
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1471
    :try_start_38
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1472
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_54

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v7

    if-eqz v7, :cond_54

    .line 1475
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v7

    sub-int v3, v7, v1

    .line 1478
    .local v3, "usersCountAfterRemoving":I
    if-eq v3, v4, :cond_52

    .line 1479
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_58

    move-result v7

    if-ge v3, v7, :cond_56

    :cond_52
    :goto_52
    monitor-exit v6

    .line 1478
    return v4

    .end local v3    # "usersCountAfterRemoving":I
    :cond_54
    monitor-exit v6

    .line 1473
    return v5

    .restart local v3    # "usersCountAfterRemoving":I
    :cond_56
    move v4, v5

    .line 1479
    goto :goto_52

    .line 1470
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "usersCountAfterRemoving":I
    :catchall_58
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 925
    const-string/jumbo v2, "canHaveRestrictedProfile"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 926
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 927
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 928
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 931
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_30

    move-result v3

    if-nez v3, :cond_20

    monitor-exit v2

    .line 932
    return v1

    :cond_1e
    monitor-exit v2

    .line 929
    return v1

    .line 935
    :cond_20
    :try_start_20
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_30

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2c
    :goto_2c
    monitor-exit v2

    return v1

    :cond_2e
    const/4 v1, 0x1

    goto :goto_2c

    .line 926
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_30
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method cleanupPartialUsers()V
    .registers 10

    .prologue
    .line 466
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v1, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 468
    :try_start_8
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 469
    .local v4, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v4, :cond_3c

    .line 470
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 471
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_29

    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_29

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_39

    :cond_29
    if-eqz v0, :cond_39

    .line 472
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 474
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_82

    .line 469
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_3c
    monitor-exit v6

    .line 478
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 479
    .local v2, "partialsSize":I
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v2, :cond_85

    .line 480
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 481
    .restart local v3    # "ui":Landroid/content/pm/UserInfo;
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing partially created user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 482
    const-string/jumbo v7, " (name="

    .line 481
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 482
    iget-object v7, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 481
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 482
    const-string/jumbo v7, ")"

    .line 481
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 467
    .end local v0    # "i":I
    .end local v2    # "partialsSize":I
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "userSize":I
    :catchall_82
    move-exception v5

    monitor-exit v6

    throw v5

    .line 464
    .restart local v0    # "i":I
    .restart local v2    # "partialsSize":I
    .restart local v4    # "userSize":I
    :cond_85
    return-void
.end method

.method public clearSeedAccountData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3097
    const-string/jumbo v1, "Cannot clear seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3098
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3100
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_25

    .line 3101
    :try_start_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_22

    move-result-object v0

    .line 3102
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v0, :cond_19

    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_25

    monitor-exit v2

    return-void

    .line 3103
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22

    :try_start_1c
    monitor-exit v3

    .line 3105
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_25

    monitor-exit v2

    .line 3096
    return-void

    .line 3100
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v3

    throw v1
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_25

    .line 3098
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2199
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2363
    const-string/jumbo v3, "setupRestrictedProfile"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2364
    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2365
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_10

    .line 2366
    return-object v4

    .line 2368
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2370
    .local v0, "identity":J
    :try_start_14
    const-string/jumbo v3, "no_modify_accounts"

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2373
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2374
    const-string/jumbo v4, "location_mode"

    .line 2375
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    .line 2373
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2376
    const-string/jumbo v3, "no_share_location"

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_39

    .line 2378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2380
    return-object v2

    .line 2377
    :catchall_39
    move-exception v3

    .line 2378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2377
    throw v3
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 2205
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2206
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3171
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_48

    .line 3173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3174
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 3173
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3175
    const-string/jumbo v10, ", uid="

    .line 3173
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3175
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3173
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3176
    const-string/jumbo v10, " without permission "

    .line 3173
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3177
    const-string/jumbo v10, "android.permission.DUMP"

    .line 3173
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    return-void

    .line 3181
    :cond_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3182
    .local v4, "now":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3183
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3184
    :try_start_56
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_1e6

    .line 3185
    :try_start_5b
    const-string/jumbo v9, "Users:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3186
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_64
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_21c

    .line 3187
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3188
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v6, :cond_7d

    .line 3186
    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 3191
    :cond_7d
    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3192
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    .line 3193
    .local v7, "userId":I
    const-string/jumbo v9, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3194
    const-string/jumbo v9, " serialNo="

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v8, Landroid/content/pm/UserInfo;->serialNumber:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 3195
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 3196
    const-string/jumbo v9, " <removing> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3198
    :cond_af
    iget-boolean v9, v8, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v9, :cond_bb

    .line 3199
    const-string/jumbo v9, " <partial>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3201
    :cond_bb
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3202
    const-string/jumbo v9, "    Created: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3203
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->creationTime:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_1e9

    .line 3204
    const-string/jumbo v9, "<unknown>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3211
    :goto_d6
    const-string/jumbo v9, "    Last logged in: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3212
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_201

    .line 3213
    const-string/jumbo v9, "<unknown>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    :goto_ee
    const-string/jumbo v9, "    Last logged in fingerprint: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3221
    iget-object v9, v8, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    const-string/jumbo v9, "    Has profile owner: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3223
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Z)V

    .line 3224
    const-string/jumbo v9, "    Restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_11f
    .catchall {:try_start_5b .. :try_end_11f} :catchall_1e3

    .line 3227
    :try_start_11f
    const-string/jumbo v13, "      "

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 3226
    move-object/from16 v0, p2

    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3228
    const-string/jumbo v9, "    Device policy local restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3230
    const-string/jumbo v13, "      "

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 3229
    move-object/from16 v0, p2

    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3231
    const-string/jumbo v9, "    Effective restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3233
    const-string/jumbo v13, "      "

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 3232
    move-object/from16 v0, p2

    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_16b
    .catchall {:try_start_11f .. :try_end_16b} :catchall_219

    :try_start_16b
    monitor-exit v12

    .line 3236
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v9, :cond_18e

    .line 3237
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "    Account name: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3238
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3241
    :cond_18e
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v9, :cond_7a

    .line 3242
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "    Seed account name: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3243
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3244
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v9, :cond_1d2

    .line 3245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "         account type: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3246
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3248
    :cond_1d2
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v9, :cond_7a

    .line 3249
    const-string/jumbo v9, "         account options exist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3250
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1e1
    .catchall {:try_start_16b .. :try_end_1e1} :catchall_1e3

    goto/16 :goto_7a

    .line 3184
    .end local v2    # "i":I
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1e3
    move-exception v9

    :try_start_1e4
    monitor-exit v11

    throw v9
    :try_end_1e6
    .catchall {:try_start_1e4 .. :try_end_1e6} :catchall_1e6

    .line 3183
    :catchall_1e6
    move-exception v9

    monitor-exit v10

    throw v9

    .line 3206
    .restart local v2    # "i":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userId":I
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1e9
    const/4 v9, 0x0

    :try_start_1ea
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3207
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3208
    const-string/jumbo v9, " ago"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3209
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_d6

    .line 3215
    :cond_201
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3216
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3217
    const-string/jumbo v9, " ago"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3218
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_ee

    .line 3225
    :catchall_219
    move-exception v9

    monitor-exit v12

    throw v9
    :try_end_21c
    .catchall {:try_start_1ea .. :try_end_21c} :catchall_1e3

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_21c
    :try_start_21c
    monitor-exit v11

    .line 3255
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3256
    const-string/jumbo v9, "  Device policy global restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3257
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_22d
    .catchall {:try_start_21c .. :try_end_22d} :catchall_1e6

    .line 3259
    :try_start_22d
    const-string/jumbo v9, "    "

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    .line 3258
    move-object/from16 v0, p2

    invoke-static {v0, v9, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_239
    .catchall {:try_start_22d .. :try_end_239} :catchall_323

    :try_start_239
    monitor-exit v11

    .line 3261
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3262
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  Global restrictions owner id:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3264
    const-string/jumbo v9, "  Guest restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v11
    :try_end_26a
    .catchall {:try_start_239 .. :try_end_26a} :catchall_1e6

    .line 3266
    :try_start_26a
    const-string/jumbo v9, "    "

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v0, p2

    invoke-static {v0, v9, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_276
    .catchall {:try_start_26a .. :try_end_276} :catchall_326

    :try_start_276
    monitor-exit v11

    .line 3268
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_27c
    .catchall {:try_start_276 .. :try_end_27c} :catchall_1e6

    .line 3269
    :try_start_27c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3270
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Device managed: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_29c
    .catchall {:try_start_27c .. :try_end_29c} :catchall_329

    :try_start_29c
    monitor-exit v11

    .line 3272
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v11
    :try_end_2a2
    .catchall {:try_start_29c .. :try_end_2a2} :catchall_1e6

    .line 3273
    :try_start_2a2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Started users state: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2bf
    .catchall {:try_start_2a2 .. :try_end_2bf} :catchall_32c

    :try_start_2bf
    monitor-exit v11

    .line 3276
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3277
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  Max users: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  Supports switchable users: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  All guests ephemeral: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 3280
    const v12, 0x11200ba

    .line 3279
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_321
    .catchall {:try_start_2bf .. :try_end_321} :catchall_1e6

    monitor-exit v10

    .line 3170
    return-void

    .line 3257
    :catchall_323
    move-exception v9

    :try_start_324
    monitor-exit v11

    throw v9

    .line 3265
    :catchall_326
    move-exception v9

    monitor-exit v11

    throw v9

    .line 3268
    :catchall_329
    move-exception v9

    monitor-exit v11

    throw v9

    .line 3272
    :catchall_32c
    move-exception v9

    monitor-exit v11

    throw v9
    :try_end_32f
    .catchall {:try_start_324 .. :try_end_32f} :catchall_1e6
.end method

.method public exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 984
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method finishRemoveUser(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    .line 2528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2530
    .local v10, "ident":J
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2531
    .local v1, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2532
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2533
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    .line 2535
    new-instance v4, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    .line 2555
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2532
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_29

    .line 2557
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2524
    return-void

    .line 2556
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_29
    move-exception v0

    .line 2557
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2556
    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2622
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2627
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_1d

    .line 2628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2631
    :goto_14
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2633
    :try_start_17
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLP(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_24

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2629
    :cond_1d
    const-string/jumbo v0, "get application restrictions for other users/apps"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    goto :goto_14

    .line 2631
    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 638
    const-string/jumbo v1, "get the credential owner"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 640
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 641
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 642
    .local v0, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1b

    .line 643
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    monitor-exit v2

    return v1

    :cond_1b
    monitor-exit v2

    .line 648
    .end local v0    # "profileParent":Landroid/content/pm/UserInfo;
    :cond_1c
    return p1

    .line 640
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 1099
    const-string/jumbo v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1100
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    .line 1101
    :try_start_9
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 1100
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    .prologue
    .line 521
    const-string/jumbo v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 522
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 523
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 524
    .local v2, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v2, :cond_31

    .line 525
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 526
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_34

    move-result v3

    if-eqz v3, :cond_2f

    .line 524
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2f
    monitor-exit v4

    .line 527
    return-object v1

    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_31
    monitor-exit v4

    .line 531
    const/4 v3, 0x0

    return-object v3

    .line 522
    .end local v0    # "i":I
    .end local v2    # "userSize":I
    :catchall_34
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getProfileIds(IZ)[I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .prologue
    .line 573
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p1, v2, :cond_1d

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getting profiles related to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 576
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 578
    .local v0, "ident":J
    :try_start_21
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_34

    .line 579
    :try_start_24
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_31

    move-result-object v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_34

    .line 582
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    return-object v2

    .line 578
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3

    throw v2
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_34

    .line 581
    :catchall_34
    move-exception v2

    .line 582
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 581
    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 675
    const-string/jumbo v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_f

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 676
    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    const/4 v2, 0x1

    .line 556
    .local v2, "returnFullInfo":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eq p1, v3, :cond_2e

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getting profiles related to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 561
    .end local v2    # "returnFullInfo":Z
    :goto_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 563
    .local v0, "ident":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    .line 564
    :try_start_25
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_33

    move-result-object v4

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_36

    .line 567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    return-object v4

    .line 559
    .end local v0    # "ident":J
    .restart local v2    # "returnFullInfo":Z
    :cond_2e
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    .local v2, "returnFullInfo":Z
    goto :goto_1e

    .line 563
    .end local v2    # "returnFullInfo":Z
    .restart local v0    # "ident":J
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3

    throw v4
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_36

    .line 566
    :catchall_36
    move-exception v3

    .line 567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3070
    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3071
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3072
    :try_start_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3073
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v2

    return-object v1

    .line 3071
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3088
    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3089
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3090
    :try_start_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3091
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v2

    return-object v1

    .line 3089
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3079
    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3080
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3081
    :try_start_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3082
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v2

    return-object v1

    .line 3080
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 489
    const-string/jumbo v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 490
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUserCreationTime(I)J
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2862
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2863
    .local v0, "callingUserId":I
    const/4 v2, 0x0

    .line 2864
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2865
    if-ne v0, p1, :cond_1a

    .line 2866
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_29

    move-result-object v2

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_e
    :goto_e
    monitor-exit v4

    .line 2874
    if-nez v2, :cond_2c

    .line 2875
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2868
    .restart local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2869
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_e

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v0, :cond_e

    .line 2870
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_29

    move-result-object v2

    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_e

    .line 2864
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    :catchall_29
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2878
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2c
    iget-wide v4, v2, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v4
.end method

.method public getUserHandle(I)I
    .registers 9
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 2850
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2851
    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    const/4 v2, 0x0

    array-length v5, v4

    :goto_7
    if-ge v2, v5, :cond_1a

    aget v1, v4, v2

    .line 2852
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2853
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_17

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1d

    if-ne v6, p1, :cond_17

    monitor-exit v3

    return v1

    .line 2851
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2856
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    .end local v1    # "userId":I
    :cond_1a
    const/4 v2, -0x1

    monitor-exit v3

    return v2

    .line 2850
    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .param p1, "targetUserId"    # I

    .prologue
    const/4 v11, 0x0

    .line 1030
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1031
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1032
    .local v6, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_e

    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_2a

    .line 1033
    :cond_e
    const-string/jumbo v7, "UserManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getUserIcon: unknown user #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_52

    monitor-exit v8

    .line 1034
    return-object v11

    .line 1037
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1038
    .local v1, "callingUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v0, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1039
    .local v0, "callingGroupId":I
    iget v5, v6, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1040
    .local v5, "targetGroupId":I
    const/16 v7, -0x2710

    if-eq v0, v7, :cond_49

    .line 1041
    if-ne v0, v5, :cond_47

    const/4 v4, 0x1

    .line 1042
    .local v4, "sameGroup":Z
    :goto_3d
    if-eq v1, p1, :cond_41

    if-eqz v4, :cond_4b

    .line 1046
    :cond_41
    :goto_41
    iget-object v7, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_52

    if-nez v7, :cond_55

    monitor-exit v8

    .line 1047
    return-object v11

    .line 1041
    .end local v4    # "sameGroup":Z
    :cond_47
    const/4 v4, 0x0

    .restart local v4    # "sameGroup":Z
    goto :goto_3d

    .line 1040
    .end local v4    # "sameGroup":Z
    :cond_49
    const/4 v4, 0x0

    .restart local v4    # "sameGroup":Z
    goto :goto_3d

    .line 1043
    :cond_4b
    :try_start_4b
    const-string/jumbo v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_52

    goto :goto_41

    .line 1030
    .end local v0    # "callingGroupId":I
    .end local v1    # "callingUserId":I
    .end local v4    # "sameGroup":Z
    .end local v5    # "targetGroupId":I
    .end local v6    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_52
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1049
    .restart local v0    # "callingGroupId":I
    .restart local v1    # "callingUserId":I
    .restart local v4    # "sameGroup":Z
    .restart local v5    # "targetGroupId":I
    .restart local v6    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_55
    :try_start_55
    iget-object v3, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_52

    .local v3, "iconPath":Ljava/lang/String;
    monitor-exit v8

    .line 1054
    :try_start_58
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    .line 1053
    invoke-static {v7, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_62} :catch_64

    move-result-object v7

    return-object v7

    .line 1055
    :catch_64
    move-exception v2

    .line 1056
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "Couldn\'t find icon file"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    return-object v11
.end method

.method public getUserIds()[I
    .registers 3

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1650
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 1649
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 836
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 837
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1241
    const-string/jumbo v2, "getUserRestrictionSource"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1242
    const/4 v1, 0x0

    .line 1245
    .local v1, "result":I
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1246
    return v1

    .line 1249
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1250
    const/4 v1, 0x1

    .line 1253
    :cond_15
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1254
    :try_start_18
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1255
    .local v0, "localRestrictions":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1256
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1255
    if-eqz v2, :cond_32

    .line 1259
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    if-ne v2, p2, :cond_46

    .line 1260
    or-int/lit8 v1, v1, 0x2

    .line 1265
    :cond_32
    :goto_32
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 1266
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_49

    move-result v2

    .line 1265
    if-eqz v2, :cond_44

    .line 1267
    or-int/lit8 v1, v1, 0x2

    :cond_44
    monitor-exit v3

    .line 1271
    return v1

    .line 1262
    :cond_46
    or-int/lit8 v1, v1, 0x4

    goto :goto_32

    .line 1253
    .end local v0    # "localRestrictions":Landroid/os/Bundle;
    :catchall_49
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1280
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 2842
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2843
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    .line 2844
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    monitor-exit v1

    return v0

    .line 2842
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 9
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    const-string/jumbo v4, "query users"

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 537
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 538
    :try_start_9
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 539
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 540
    .local v2, "userSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v2, :cond_45

    .line 541
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 542
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v4, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_2e

    .line 540
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 545
    :cond_2e
    if-eqz p1, :cond_3a

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 546
    :cond_3a
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_42

    goto :goto_2b

    .line 537
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "userSize":I
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_42
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "i":I
    .restart local v2    # "userSize":I
    .restart local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_45
    monitor-exit v5

    .line 549
    return-object v3
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1285
    const-string/jumbo v2, "hasBaseUserRestriction"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1286
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1287
    return v1

    .line 1289
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1290
    :try_start_11
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1291
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_22

    move-result v1

    :cond_20
    monitor-exit v2

    return v1

    .line 1289
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1219
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1220
    return v1

    .line 1222
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1223
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_12
    return v1
.end method

.method public isDemoUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 905
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 906
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_c

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 910
    :cond_c
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 911
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 912
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDemo()Z
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_3e

    move-result v2

    :goto_19
    monitor-exit v3

    return v2

    .line 907
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 908
    const-string/jumbo v4, " is a demo user"

    .line 907
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 912
    .restart local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3c
    const/4 v2, 0x0

    goto :goto_19

    .line 910
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method isInitialized(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3307
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isManagedProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 858
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 859
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_c

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 866
    :cond_c
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 867
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 868
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_2c

    move-result v2

    :goto_19
    monitor-exit v3

    return v2

    .line 860
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1b
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v2

    if-nez v2, :cond_c

    .line 861
    new-instance v2, Ljava/lang/SecurityException;

    .line 862
    const-string/jumbo v3, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    .line 861
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 868
    .restart local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2a
    const/4 v2, 0x0

    goto :goto_19

    .line 866
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isQuietModeEnabled(I)Z
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 758
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 760
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    .line 761
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_19

    move-result-object v0

    .local v0, "info":Landroid/content/pm/UserInfo;
    :try_start_a
    monitor-exit v1

    .line 763
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 766
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    move-result v1

    monitor-exit v2

    return v1

    .line 760
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v1

    throw v3
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1c

    .line 758
    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1

    .line 764
    .restart local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_1f
    const/4 v1, 0x0

    monitor-exit v2

    return v1
.end method

.method public isRestricted()Z
    .registers 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 919
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit v1

    return v0

    .line 918
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSameProfileGroup(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .prologue
    .line 653
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    .line 654
    :cond_4
    const-string/jumbo v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method public isUserRunning(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 886
    const-string/jumbo v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 880
    const-string/jumbo v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 874
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public makeInitialized(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 1062
    const-string/jumbo v2, "makeInitialized"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1063
    const/4 v0, 0x0

    .line 1065
    .local v0, "scheduleWriteUser":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1066
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1067
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_36

    .line 1068
    :cond_1a
    const-string/jumbo v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_4e

    monitor-exit v3

    .line 1069
    return-void

    .line 1071
    :cond_36
    :try_start_36
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_47

    .line 1072
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/content/pm/UserInfo;->flags:I
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_4e

    .line 1073
    const/4 v0, 0x1

    :cond_47
    monitor-exit v3

    .line 1076
    if-eqz v0, :cond_4d

    .line 1077
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1061
    :cond_4d
    return-void

    .line 1065
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2408
    const-string/jumbo v3, "Only the system can remove users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2409
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 2410
    const-string/jumbo v4, "no_remove_user"

    .line 2409
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2411
    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v4, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    return v6

    .line 2415
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2418
    .local v0, "ident":J
    :try_start_27
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_5b

    .line 2419
    :try_start_2a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_58

    .line 2420
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_55

    .line 2421
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_39

    if-nez v2, :cond_3f

    :cond_39
    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_58

    :try_start_3a
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_5b

    .line 2440
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2422
    return v6

    .line 2421
    :cond_3f
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_55

    move-result v3

    if-nez v3, :cond_39

    :try_start_47
    monitor-exit v5

    .line 2425
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_58

    move-result v3

    if-nez v3, :cond_60

    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_5b

    .line 2440
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2426
    return v6

    .line 2419
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v5

    throw v3
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_58

    .line 2418
    :catchall_58
    move-exception v3

    :try_start_59
    monitor-exit v4

    throw v3
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5b

    .line 2439
    :catchall_5b
    move-exception v3

    .line 2440
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2439
    throw v3

    .line 2433
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_60
    :try_start_60
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2436
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 2437
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_58

    :try_start_70
    monitor-exit v4
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_5b

    .line 2440
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2442
    return v7
.end method

.method public onBeforeStartUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    .line 2909
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserSerialNumber(I)I

    move-result v0

    .line 2910
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    .line 2911
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(II)V

    .line 2913
    if-eqz p1, :cond_18

    .line 2914
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2915
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    monitor-exit v1

    .line 2908
    :cond_18
    return-void

    .line 2914
    :catchall_19
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public onBeforeUnlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x2

    .line 2925
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserSerialNumber(I)I

    move-result v0

    .line 2926
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    .line 2927
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(II)V

    .line 2924
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .registers 7
    .param p1, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 3137
    if-nez p2, :cond_7

    .line 3138
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 3141
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 3143
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_b
    const-string/jumbo v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3145
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_19

    move-result v2

    return v2

    .line 3147
    :catch_19
    move-exception v0

    .line 3148
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    const/4 v2, -0x1

    return v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 13
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 3133
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$Shell;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 3132
    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 2936
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2937
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_c

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_27

    .line 2938
    :cond_c
    const-string/jumbo v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userForeground: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    return-void

    .line 2942
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2943
    .local v0, "now":J
    const-wide v4, 0xdc46c32800L

    cmp-long v3, v0, v4

    if-lez v3, :cond_38

    .line 2944
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v0, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2946
    :cond_38
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2947
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2935
    return-void
.end method

.method public removeUser(I)Z
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2452
    const-string/jumbo v8, "Only the system can remove users"

    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2453
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v8

    .line 2454
    const-string/jumbo v9, "no_remove_user"

    .line 2453
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 2455
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v8, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    return v7

    .line 2459
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2462
    .local v2, "ident":J
    :try_start_27
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2463
    .local v0, "currentUser":I
    if-ne v0, p1, :cond_3a

    .line 2464
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v8, "Current user cannot be removed"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_ac

    .line 2520
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2465
    return v7

    .line 2467
    :cond_3a
    :try_start_3a
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_ac

    .line 2468
    :try_start_3d
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_a9

    .line 2469
    :try_start_40
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_a6

    .line 2470
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_4c

    if-nez v5, :cond_52

    :cond_4c
    :try_start_4c
    monitor-exit v9
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_a9

    :try_start_4d
    monitor-exit v8
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_ac

    .line 2520
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2471
    return v7

    .line 2470
    :cond_52
    :try_start_52
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_4c

    .line 2477
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_a6

    :try_start_60
    monitor-exit v9
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_a9

    .line 2481
    :try_start_61
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v9, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_66} :catch_b1
    .catchall {:try_start_61 .. :try_end_66} :catchall_a9

    .line 2488
    :goto_66
    :try_start_66
    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/content/pm/UserInfo;->partial:Z

    .line 2491
    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v9, Landroid/content/pm/UserInfo;->flags:I

    .line 2492
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_a9

    :try_start_76
    monitor-exit v8

    .line 2495
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v9, -0x2710

    if-eq v8, v9, :cond_92

    .line 2496
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    .line 2495
    if-eqz v8, :cond_92

    .line 2499
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_92
    .catchall {:try_start_76 .. :try_end_92} :catchall_ac

    .line 2505
    :cond_92
    :try_start_92
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    .line 2506
    new-instance v9, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v9, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 2505
    const/4 v10, 0x1

    invoke-interface {v8, p1, v10, v9}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_9f} :catch_bc
    .catchall {:try_start_92 .. :try_end_9f} :catchall_ac

    move-result v4

    .line 2518
    .local v4, "res":I
    if-nez v4, :cond_c1

    .line 2520
    :goto_a2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2518
    return v6

    .line 2468
    .end local v4    # "res":I
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_a6
    move-exception v6

    :try_start_a7
    monitor-exit v9

    throw v6
    :try_end_a9
    .catchall {:try_start_a7 .. :try_end_a9} :catchall_a9

    .line 2467
    :catchall_a9
    move-exception v6

    :try_start_aa
    monitor-exit v8

    throw v6
    :try_end_ac
    .catchall {:try_start_aa .. :try_end_ac} :catchall_ac

    .line 2519
    .end local v0    # "currentUser":I
    :catchall_ac
    move-exception v6

    .line 2520
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2519
    throw v6

    .line 2482
    .restart local v0    # "currentUser":I
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catch_b1
    move-exception v1

    .line 2483
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_b2
    const-string/jumbo v9, "UserManagerService"

    const-string/jumbo v10, "Unable to notify AppOpsService of removing user"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_a9

    goto :goto_66

    .line 2515
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_bc
    move-exception v1

    .line 2520
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2516
    return v7

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "res":I
    :cond_c1
    move v6, v7

    .line 2518
    goto :goto_a2
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 2640
    const-string/jumbo v1, "set application restrictions"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 2641
    if-eqz p2, :cond_c

    .line 2642
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 2644
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2645
    if-eqz p2, :cond_17

    :try_start_11
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2646
    :cond_17
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_39

    :goto_1a
    monitor-exit v2

    .line 2654
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2655
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2656
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2657
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2639
    return-void

    .line 2649
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :cond_35
    :try_start_35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLP(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_1a

    .line 2644
    :catchall_39
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 1107
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    .line 1109
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1110
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1c

    monitor-exit v1

    .line 1112
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1f

    monitor-exit v0

    .line 1106
    return-void

    .line 1108
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1112
    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "local"    # Landroid/os/Bundle;
    .param p3, "global"    # Landroid/os/Bundle;

    .prologue
    .line 1122
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const/4 v0, 0x0

    .line 1125
    .local v0, "globalChanged":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1126
    if-eqz p3, :cond_4d

    .line 1129
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    .line 1128
    invoke-static {v3, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v0, 0x0

    .line 1130
    :goto_12
    if-eqz v0, :cond_16

    .line 1131
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    .line 1135
    :cond_16
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    .line 1147
    :cond_18
    :goto_18
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1148
    .local v2, "prev":Landroid/os/Bundle;
    invoke-static {v2, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_59

    const/4 v1, 0x0

    .line 1149
    .local v1, "localChanged":Z
    :goto_27
    if-eqz v1, :cond_2e

    .line 1150
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_56

    :cond_2e
    monitor-exit v4

    .line 1161
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1162
    if-eqz v1, :cond_3b

    .line 1163
    :try_start_34
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1165
    :cond_3b
    if-eqz v0, :cond_40

    .line 1166
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_5b

    :cond_40
    monitor-exit v4

    .line 1170
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1171
    if-eqz v0, :cond_5e

    .line 1172
    :try_start_46
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_64

    :cond_49
    :goto_49
    monitor-exit v4

    .line 1121
    return-void

    .line 1128
    .end local v1    # "localChanged":Z
    .end local v2    # "prev":Landroid/os/Bundle;
    :cond_4b
    const/4 v0, 0x1

    goto :goto_12

    .line 1137
    :cond_4d
    :try_start_4d
    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    if-ne v3, p1, :cond_18

    .line 1142
    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_56

    goto :goto_18

    .line 1125
    :catchall_56
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1148
    .restart local v2    # "prev":Landroid/os/Bundle;
    :cond_59
    const/4 v1, 0x1

    goto :goto_27

    .line 1161
    .restart local v1    # "localChanged":Z
    :catchall_5b
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1173
    :cond_5e
    if-eqz v1, :cond_49

    .line 1174
    :try_start_60
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_49

    .line 1170
    :catchall_64
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setQuietModeEnabled(IZ)V
    .registers 13
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z

    .prologue
    .line 717
    const-string/jumbo v6, "silence profile"

    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 718
    const/4 v0, 0x0

    .line 720
    .local v0, "changed":Z
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 721
    :try_start_a
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_63

    .line 722
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 723
    .local v5, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_60

    move-result-object v4

    .local v4, "parent":Landroid/content/pm/UserInfo;
    :try_start_15
    monitor-exit v8

    .line 726
    if-eqz v5, :cond_66

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 729
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-eq v6, p2, :cond_34

    .line 730
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 731
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_63

    .line 732
    const/4 v0, 0x1

    :cond_34
    monitor-exit v7

    .line 735
    if-eqz v0, :cond_5f

    .line 736
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 738
    .local v2, "identity":J
    if-eqz p2, :cond_87

    .line 739
    :try_start_3d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, p1, v7, v8}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 740
    const-class v6, Landroid/app/ActivityManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_51} :catch_8f
    .catchall {:try_start_3d .. :try_end_51} :catchall_9d

    .line 748
    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    :goto_54
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {p0, v6, v7, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 716
    .end local v2    # "identity":J
    :cond_5f
    return-void

    .line 721
    .end local v4    # "parent":Landroid/content/pm/UserInfo;
    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    :catchall_60
    move-exception v6

    :try_start_61
    monitor-exit v8

    throw v6
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_63

    .line 720
    :catchall_63
    move-exception v6

    monitor-exit v7

    throw v6

    .line 727
    .restart local v4    # "parent":Landroid/content/pm/UserInfo;
    .restart local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_66
    :try_start_66
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not a profile"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_87
    .catchall {:try_start_66 .. :try_end_87} :catchall_63

    .line 743
    .restart local v2    # "identity":J
    :cond_87
    :try_start_87
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8e} :catch_8f
    .catchall {:try_start_87 .. :try_end_8e} :catchall_9d

    goto :goto_51

    .line 745
    :catch_8f
    move-exception v1

    .line 746
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_90
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v7, "fail to start/stop user for quiet mode"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_9d

    .line 748
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_54

    .line 747
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_9d
    move-exception v6

    .line 748
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 747
    throw v6
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    .prologue
    .line 3048
    const-string/jumbo v1, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3049
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3051
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_42

    .line 3052
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3053
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v0, :cond_2f

    .line 3054
    const-string/jumbo v1, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_3f

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_42

    monitor-exit v2

    .line 3055
    return-void

    .line 3057
    :cond_2f
    :try_start_2f
    iput-object p2, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3058
    iput-object p3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3059
    iput-object p4, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3060
    iput-boolean p5, v0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_3f

    :try_start_37
    monitor-exit v3

    .line 3062
    if-eqz p5, :cond_3d

    .line 3063
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_42

    :cond_3d
    monitor-exit v2

    .line 3047
    return-void

    .line 3051
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v3

    throw v1
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_42

    .line 3049
    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 497
    const-string/jumbo v3, "set user account"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 500
    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_4a

    .line 501
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 502
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v1, :cond_34

    .line 503
    const-string/jumbo v3, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User not found for setting user account: u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_47

    :try_start_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_4a

    monitor-exit v4

    .line 504
    return-void

    .line 506
    :cond_34
    :try_start_34
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 507
    .local v0, "currentAccount":Ljava/lang/String;
    invoke-static {v0, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 508
    iput-object p2, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_47

    .line 509
    move-object v2, v1

    .end local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3f
    :try_start_3f
    monitor-exit v5

    .line 513
    if-eqz v2, :cond_45

    .line 514
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4a

    :cond_45
    monitor-exit v4

    .line 496
    return-void

    .line 500
    .end local v0    # "currentAccount":Ljava/lang/String;
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v5

    throw v3
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4a

    .line 499
    .end local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setUserEnabled(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 821
    const-string/jumbo v1, "enable user"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 822
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 824
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e

    .line 825
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1b

    move-result-object v0

    .local v0, "info":Landroid/content/pm/UserInfo;
    :try_start_10
    monitor-exit v1

    .line 827
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1e

    move-result v1

    if-eqz v1, :cond_21

    :cond_19
    :goto_19
    monitor-exit v2

    .line 820
    return-void

    .line 824
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v1

    throw v3
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1e

    .line 822
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1

    .line 828
    .restart local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_21
    :try_start_21
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 829
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_1e

    goto :goto_19
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1010
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1012
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void

    .line 1015
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1009
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 989
    const-string/jumbo v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 992
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 993
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_32

    .line 994
    :cond_16
    const-string/jumbo v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_4e

    monitor-exit v3

    .line 995
    return-void

    .line 997
    :cond_32
    if-eqz p2, :cond_3e

    :try_start_34
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_4e

    move-result v2

    if-eqz v2, :cond_45

    :cond_3e
    :goto_3e
    monitor-exit v3

    .line 1003
    if-eqz v0, :cond_44

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    .line 988
    :cond_44
    return-void

    .line 998
    :cond_45
    :try_start_45
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 999
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    .line 1000
    const/4 v0, 0x1

    goto :goto_3e

    .line 991
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1297
    const-string/jumbo v1, "setUserRestriction"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1298
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1299
    return-void

    .line 1301
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1305
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1304
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1306
    .local v0, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1308
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_24

    monitor-exit v2

    .line 1296
    return-void

    .line 1301
    .end local v0    # "newRestrictions":Landroid/os/Bundle;
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3112
    const-string/jumbo v3, "Cannot check seed account information"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3113
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3114
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3115
    .local v2, "userSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_40

    .line 3116
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3117
    .local v0, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3115
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3118
    :cond_25
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3121
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_43

    move-result v3

    if-eqz v3, :cond_22

    .line 3124
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .end local v0    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_40
    monitor-exit v4

    .line 3127
    const/4 v3, 0x0

    return v3

    .line 3113
    .end local v1    # "i":I
    .end local v2    # "userSize":I
    :catchall_43
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method systemReady()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 444
    const-string/jumbo v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 443
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 446
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    const/4 v2, 0x0

    :try_start_12
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_39

    monitor-exit v1

    .line 450
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 451
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_27

    .line 452
    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 451
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 459
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 460
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 459
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 442
    return-void

    .line 446
    .end local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_39
    move-exception v2

    monitor-exit v1

    throw v2

    .line 456
    .restart local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :cond_3c
    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto :goto_27
.end method

.method public trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    .registers 13
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .prologue
    const/4 v9, 0x0

    .line 772
    const-string/jumbo v6, "silence profile"

    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 773
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_30

    .line 774
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 780
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 783
    .local v2, "identity":J
    :try_start_19
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 784
    const-string/jumbo v7, "keyguard"

    .line 783
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 788
    .local v1, "km":Landroid/app/KeyguardManager;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_7a

    move-result-object v5

    .line 790
    .local v5, "unlockIntent":Landroid/content/Intent;
    if-nez v5, :cond_35

    .line 814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    return v9

    .line 776
    .end local v1    # "km":Landroid/app/KeyguardManager;
    .end local v2    # "identity":J
    .end local v5    # "unlockIntent":Landroid/content/Intent;
    :cond_30
    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZ)V

    .line 777
    const/4 v6, 0x1

    return v6

    .line 793
    .restart local v1    # "km":Landroid/app/KeyguardManager;
    .restart local v2    # "identity":J
    .restart local v5    # "unlockIntent":Landroid/content/Intent;
    :cond_35
    :try_start_35
    new-instance v0, Landroid/content/Intent;

    .line 794
    const-string/jumbo v6, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    .line 793
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .local v0, "callBackIntent":Landroid/content/Intent;
    if-eqz p2, :cond_45

    .line 796
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 798
    :cond_45
    const-string/jumbo v6, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 802
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 803
    const/4 v7, 0x0

    .line 805
    const/high16 v8, 0x54000000

    .line 801
    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 810
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 811
    const/high16 v6, 0x10800000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 812
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_76
    .catchall {:try_start_35 .. :try_end_76} :catchall_7a

    .line 814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 816
    return v9

    .line 813
    .end local v0    # "callBackIntent":Landroid/content/Intent;
    .end local v1    # "km":Landroid/app/KeyguardManager;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "unlockIntent":Landroid/content/Intent;
    :catchall_7a
    move-exception v6

    .line 814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    throw v6
.end method
