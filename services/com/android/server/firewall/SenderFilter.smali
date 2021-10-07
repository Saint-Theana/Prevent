.class Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "SenderFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/SenderFilter$1;,
        Lcom/android/server/firewall/SenderFilter$2;,
        Lcom/android/server/firewall/SenderFilter$3;,
        Lcom/android/server/firewall/SenderFilter$4;,
        Lcom/android/server/firewall/SenderFilter$5;
    }
.end annotation


# static fields
.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field private static final SIGNATURE:Lcom/android/server/firewall/Filter;

.field private static final SYSTEM:Lcom/android/server/firewall/Filter;

.field private static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

.field private static final USER_ID:Lcom/android/server/firewall/Filter;

.field private static final VAL_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VAL_SYSTEM:Ljava/lang/String; = "system"

.field private static final VAL_SYSTEM_OR_SIGNATURE:Ljava/lang/String; = "system|signature"

.field private static final VAL_USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method static synthetic -get0()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic -get3()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    const-string/jumbo v1, "sender"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    .line 80
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$2;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 88
    new-instance v0, Lcom/android/server/firewall/SenderFilter$3;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$3;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    .line 96
    new-instance v0, Lcom/android/server/firewall/SenderFilter$4;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$4;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 105
    new-instance v0, Lcom/android/server/firewall/SenderFilter$5;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$5;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    .line 32
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isPrivilegedApp(II)Z
    .registers 7
    .param p0, "callerUid"    # I
    .param p1, "callerPid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v4, 0x3e8

    if-eq p0, v4, :cond_8

    if-nez p0, :cond_9

    .line 43
    :cond_8
    return v2

    .line 42
    :cond_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq p1, v4, :cond_8

    if-eqz p1, :cond_8

    .line 46
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 48
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_15
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPrivateFlagsForUid(I)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_20

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    move v2, v3

    goto :goto_1d

    .line 50
    :catch_20
    move-exception v0

    .line 51
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "IntentFirewall"

    const-string/jumbo v4, "Remote exception while retrieving uid flags"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    return v3
.end method
