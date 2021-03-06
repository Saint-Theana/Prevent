.class final Lcom/android/server/tv/TvInputManagerService$UserState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation


# instance fields
.field private final callbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/media/tv/ITvInputManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final clientStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvInputManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final contentRatingSystemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/tv/TvInputManagerService$TvInputState;",
            ">;"
        }
    .end annotation
.end field

.field private mainSessionToken:Landroid/os/IBinder;

.field private final packageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

.field private final serviceStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/tv/TvInputManagerService$ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvInputManagerService$SessionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    return-object p1
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 2013
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    .line 2017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    .line 2020
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 2023
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 2026
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 2029
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;

    .line 2032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 2039
    new-instance v0, Lcom/android/server/tv/PersistentDataStore;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tv/PersistentDataStore;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    .line 2038
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;I)V

    return-void
.end method
