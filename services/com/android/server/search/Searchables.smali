.class public Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/Searchables$1;
    }
.end annotation


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field private mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/ResolveInfo;)Z
    .registers 2
    .param p0, "res"    # Landroid/content/pm/ResolveInfo;

    .prologue
    invoke-static {p0}, Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-string/jumbo v0, "com.android.googlesearch/.GoogleSearch"

    .line 70
    sput-object v0, Lcom/android/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    .line 72
    sput-object v0, Lcom/android/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 334
    new-instance v0, Lcom/android/server/search/Searchables$1;

    invoke-direct {v0}, Lcom/android/server/search/Searchables$1;-><init>()V

    .line 333
    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 62
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 63
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 68
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 85
    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 86
    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 87
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    .line 84
    return-void
.end method

.method private findGlobalSearchActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10010000

    .line 287
    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 294
    :cond_16
    :goto_16
    return-object v0

    .line 291
    :cond_17
    sget-object v2, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_16
.end method

.method private findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "searchProviderSetting":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 305
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 307
    .local v0, "globalSearchComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_17

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 308
    return-object v0

    .line 312
    .end local v0    # "globalSearchComponent":Landroid/content/ComponentName;
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 8
    .param p1, "globalSearchActivity"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 390
    if-nez p1, :cond_4

    .line 391
    return-object v5

    .line 393
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const/high16 v3, 0x10000

    invoke-direct {p0, v2, v3}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 403
    :cond_21
    const-string/jumbo v3, "Searchables"

    const-string/jumbo v4, "No web search activity found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-object v5

    .line 399
    :cond_2b
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 401
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .local p1, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 370
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 375
    :cond_9
    const-string/jumbo v1, "Searchables"

    const-string/jumbo v2, "No global search activity found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-object v3

    .line 371
    :cond_13
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 372
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getGlobalSearchProviderSetting()Ljava/lang/String;
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    const-string/jumbo v1, "search_global_search_activity"

    .line 380
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInstalled(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "globalSearch"    # Landroid/content/ComponentName;

    .prologue
    .line 321
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 325
    const/high16 v2, 0x10000

    .line 324
    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 330
    :cond_19
    const/4 v2, 0x0

    return v2

    .line 327
    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method private static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .registers 3
    .param p0, "res"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x0

    .line 362
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 411
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    .line 412
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 413
    iget v4, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 411
    invoke-interface {v2, p1, v3, p2, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    .line 417
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_17
    return-object v0

    .line 414
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_18
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_17
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 457
    const-string/jumbo v2, "Searchable authorities:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    monitor-enter p0

    .line 459
    :try_start_7
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2e

    .line 460
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    .line 461
    .local v0, "info":Landroid/app/SearchableInfo;
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2b

    goto :goto_11

    .line 458
    .end local v0    # "info":Landroid/app/SearchableInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2e
    monitor-exit p0

    .line 456
    return-void
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 439
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    monitor-enter p0

    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 14
    .param p1, "activity"    # Landroid/content/ComponentName;

    .prologue
    const/4 v11, 0x0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_2
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SearchableInfo;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_41

    .line 122
    .local v7, "result":Landroid/app/SearchableInfo;
    if-eqz v7, :cond_e

    monitor-exit p0

    return-object v7

    :cond_e
    monitor-exit p0

    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_10
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    iget v9, p0, Lcom/android/server/search/Searchables;->mUserId:I

    const/16 v10, 0x80

    invoke-interface {v8, p1, v10, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_44

    move-result-object v1

    .line 137
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    .line 140
    .local v5, "refActivityName":Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 141
    .local v2, "md":Landroid/os/Bundle;
    if-eqz v2, :cond_26

    .line 142
    const-string/jumbo v8, "android.app.default_searchable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .end local v5    # "refActivityName":Ljava/lang/String;
    :cond_26
    if-nez v5, :cond_35

    .line 146
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 147
    if-eqz v2, :cond_35

    .line 148
    const-string/jumbo v8, "android.app.default_searchable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    :cond_35
    if-eqz v5, :cond_9e

    .line 156
    const-string/jumbo v8, "*"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 157
    return-object v11

    .line 120
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "md":Landroid/os/Bundle;
    .end local v7    # "result":Landroid/app/SearchableInfo;
    :catchall_41
    move-exception v8

    monitor-exit p0

    throw v8

    .line 133
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "result":Landroid/app/SearchableInfo;
    :catch_44
    move-exception v4

    .line 134
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v8, "Searchables"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error getting activity info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v11

    .line 159
    .end local v4    # "re":Landroid/os/RemoteException;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "md":Landroid/os/Bundle;
    :cond_60
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_97

    .line 162
    new-instance v6, Landroid/content/ComponentName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v6, "referredActivity":Landroid/content/ComponentName;
    :goto_83
    monitor-enter p0

    .line 170
    :try_start_84
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/app/SearchableInfo;

    move-object v7, v0

    .line 171
    if-eqz v7, :cond_9d

    .line 172
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_84 .. :try_end_95} :catchall_9f

    monitor-exit p0

    .line 173
    return-object v7

    .line 164
    .end local v6    # "referredActivity":Landroid/content/ComponentName;
    :cond_97
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "referredActivity":Landroid/content/ComponentName;
    goto :goto_83

    :cond_9d
    monitor-exit p0

    .line 179
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "referredActivity":Landroid/content/ComponentName;
    :cond_9e
    return-object v11

    .line 169
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v6    # "referredActivity":Landroid/content/ComponentName;
    :catchall_9f
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 432
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 424
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    monitor-exit p0

    .line 425
    return-object v0

    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    monitor-enter p0

    .line 453
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSearchableList()V
    .registers 27

    .prologue
    .line 206
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v15, "newSearchablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/app/SearchableInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v14, "newSearchablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v13, "newSearchablesInGlobalSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.SEARCH"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v10, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 219
    .local v6, "ident":J
    const v23, 0x10000080

    .line 218
    :try_start_20
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 222
    .local v17, "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v21, "webSearchIntent":Landroid/content/Intent;
    const v23, 0x10000080

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 227
    .local v20, "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v17, :cond_45

    if-eqz v20, :cond_c4

    .line 228
    :cond_45
    if-nez v17, :cond_ab

    const/16 v18, 0x0

    .line 229
    .local v18, "search_count":I
    :goto_49
    if-nez v20, :cond_b0

    const/16 v22, 0x0

    .line 230
    .local v22, "web_search_count":I
    :goto_4d
    add-int v5, v18, v22

    .line 231
    .local v5, "count":I
    const/4 v8, 0x0

    .local v8, "ii":I
    :goto_50
    if-ge v8, v5, :cond_c4

    .line 233
    move/from16 v0, v18

    if-ge v8, v0, :cond_b5

    .line 234
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    move-object/from16 v9, v23

    .line 236
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    :goto_60
    iget-object v4, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 238
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v23, Landroid/content/ComponentName;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-nez v23, :cond_a8

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/search/Searchables;->mUserId:I

    move/from16 v24, v0

    .line 239
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v4, v1}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    move-result-object v19

    .line 241
    .local v19, "searchable":Landroid/app/SearchableInfo;
    if-eqz v19, :cond_a8

    .line 242
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual/range {v19 .. v19}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual/range {v19 .. v19}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v23

    if-eqz v23, :cond_a8

    .line 245
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v19    # "searchable":Landroid/app/SearchableInfo;
    :cond_a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 228
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "count":I
    .end local v8    # "ii":I
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v18    # "search_count":I
    .end local v22    # "web_search_count":I
    :cond_ab
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    .restart local v18    # "search_count":I
    goto :goto_49

    .line 229
    :cond_b0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    goto :goto_4d

    .line 235
    .restart local v5    # "count":I
    .restart local v8    # "ii":I
    .restart local v22    # "web_search_count":I
    :cond_b5
    sub-int v23, v8, v18

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    move-object/from16 v9, v23

    goto :goto_60

    .line 252
    .end local v5    # "count":I
    .end local v8    # "ii":I
    .end local v18    # "search_count":I
    .end local v22    # "web_search_count":I
    :cond_c4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    move-result-object v11

    .line 255
    .local v11, "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v12

    .line 259
    .local v12, "newGlobalSearchActivity":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v16

    .line 262
    .local v16, "newWebSearchActivity":Landroid/content/ComponentName;
    monitor-enter p0
    :try_end_d5
    .catchall {:try_start_20 .. :try_end_d5} :catchall_f7

    .line 263
    :try_start_d5
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 264
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 265
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 266
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    .line 267
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 268
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_ef
    .catchall {:try_start_d5 .. :try_end_ef} :catchall_f4

    :try_start_ef
    monitor-exit p0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f7

    .line 271
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    return-void

    .line 262
    :catchall_f4
    move-exception v23

    :try_start_f5
    monitor-exit p0

    throw v23
    :try_end_f7
    .catchall {:try_start_f5 .. :try_end_f7} :catchall_f7

    .line 270
    .end local v11    # "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "newGlobalSearchActivity":Landroid/content/ComponentName;
    .end local v16    # "newWebSearchActivity":Landroid/content/ComponentName;
    .end local v17    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "webSearchIntent":Landroid/content/Intent;
    :catchall_f7
    move-exception v23

    .line 271
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw v23
.end method
